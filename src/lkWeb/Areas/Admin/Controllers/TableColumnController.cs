﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using lkWeb.Areas.Admin.Models;
using lkWeb.Core.Extensions;
using lkWeb.Service.Abstracts;
using lkWeb.Service.Dto;
using lkWeb.Service.Enum;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace lkWeb.Areas.Admin.Controllers
{
    public class TableColumnController : AdminBaseController
    {
        public readonly ITableColumnService _tableColumnService;
        public readonly ITableListService _tableListService;
        public readonly ISysService _sysService;
        public TableColumnController(ITableColumnService tableColumnService,
            ITableListService tableListService,
            ISysService sysService)
        {
            _tableColumnService = tableColumnService;
            _tableListService = tableListService;
            _sysService = sysService;
        }

        #region Page
        public async Task<IActionResult> Index(UrlParameter param)
        {
            var tableDtos = await _tableListService.GetList(item => item.Id > 0);
            List<SelectListItem> tableList = new List<SelectListItem>();
            foreach (var dto in tableDtos.data)
            {
                tableList.Add(new SelectListItem
                {
                    Value = dto.Id.ToString(),
                    Text = dto.Name.ToString(),
                });
            }
            ViewBag.TableList = new SelectList(tableList, "Value", "Text");
            return View();
        }
        public async Task<IActionResult> Add(UrlParameter param)
        {
            var result = await _tableListService.GetList(item => item.Id > 0);
            ViewBag.TableList = new SelectList(result.data, "Id", "Name");
            ViewBag.DataTypeList = new SelectList(Enum.GetValues(typeof(ColumnDataType)).Cast<ColumnDataType>());

            return View();
        }
        public async Task<IActionResult> Edit(UrlParameter param)
        {
            var colDto = (await _tableColumnService.GetById(param.id)).data;

            //获取所有表 放到下拉中 且选中当前列所属表
            var result = await _tableListService.GetList(item => item.Id > 0);
            var items = new List<SelectListItem>();
            foreach (var item in result.data)
            {
                items.Add(new SelectListItem
                {
                    Value = item.Id.ToString(),
                    Text = item.Name.ToString(),
                    Selected = colDto.TableId == item.Id
                });

            }
            ViewBag.TableList = new SelectList(items, "Value", "Text");
            ViewBag.DataTypeList = new SelectList(Enum.GetValues(typeof(ColumnDataType)).Cast<ColumnDataType>());
            return View(colDto);
        }
        #endregion

        #region Ajax
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> GetPageData(QueryBase queryBase)
        {
            Expression<Func<TableColumnDto, bool>> queryExp = item => item.Id > 0;
            var searchKey = queryBase.SearchKey;
            if (searchKey.IsNotEmpty())
            {
                if (searchKey.Contains("TableId")) //如果是查找指定表下的列 前台格式为 TableId|Id值
                {
                    var tableId = searchKey.Split('|')[1].ToInt32();
                    queryExp = x => x.TableId == tableId;
                }
                else
                    queryExp = x => (x.Description.Contains(searchKey) || x.Name.Contains(searchKey));
            }
            var allTable = (await _tableListService.GetList(item => item.Id > 0))
                   .data.ToDictionary(item => item.Id, item => item.Name);
            var dto = await _tableColumnService.GetPageData(queryBase, queryExp, queryBase.OrderBy, queryBase.OrderDir);
            var data = new DataTableModel
            {
                draw = queryBase.Draw,
                recordsTotal = dto.recordsTotal,
                recordsFiltered = dto.recordsTotal,
                data = dto.data.Select(d => new
                {
                    rowNum = ++queryBase.Start,
                    name = d.Name,
                    description = d.Description,
                    id = d.Id.ToString(),
                    tableName = allTable.ContainsKey(d.TableId) ? allTable[d.TableId] : "无",
                    dataType = d.DataTypeName,
                    addVisible = d.AddVisible == 1 ? "是" : "否",
                    editVisible = d.EditVisible == 1 ? "是" : "否",
                    listVisible = d.ListVisible == 1 ? "是" : "否",
                    searchVisible = d.SearchVisible == 1 ? "是" : "否",

                })
            };
            return Json(data);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(UrlParameter param, TableColumnDto dto)
        {
            var result = await _tableColumnService.Update(dto);
            return Json(result);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Add(UrlParameter param, TableColumnDto dto)
        {
            var result = await _tableColumnService.Add(dto);
            return Json(result);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(UrlParameter param)
        {
            if (param.ids != null && param.ids.Any())
                return Json(await _tableColumnService.Delete(param.ids));
            else
                return Json(await _tableColumnService.Delete(param.id));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Copy(UrlParameter param)
        {
            var resourceDto = (await _tableColumnService.GetById(param.id)).data;
            var newDto = resourceDto;
            newDto.Id = default(int);
            var result = await _tableColumnService.Add(newDto);
            return Json(result);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> SetValue(UrlParameter param, SetColumnAttrModel model)
        {
            var result = await _sysService.SetColumnValue(param.ids, model.FiledName, model.Value);
            return Json(result);
        }
        #endregion
    }
}