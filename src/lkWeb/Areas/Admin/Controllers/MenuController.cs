﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using lkWeb.Service.Abstracts;
using lkWeb.Service.Dto;
using System.Linq.Expressions;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace lkWeb.Areas.Admin.Controllers
{
    public class MenuController : AdminBaseController
    {
        public readonly IMenuService _menuService;
        public MenuController(IMenuService roleService)
        {
            _menuService = roleService;
        }

        #region Page
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Add()
        {
            return View();
        }
        public IActionResult Edit(string id)
        {
            var menu = _menuService.GetById(int.Parse(id));
            return View(menu);
        }
        #endregion

        #region Ajax

        [HttpGet]
        public IActionResult GetPageData(QueryBase queryBase)
        {
            Expression<Func<MenuDto, bool>> where = item => !item.IsDeleted;
            if (!(string.IsNullOrEmpty(queryBase.SearchKey)))
                where = x => x.Name.Contains(queryBase.SearchKey) && !x.IsDeleted;
            var dto = _menuService.GetPageData(queryBase, x => x.Id, where, true);
            var data = new
            {
                draw = queryBase.Draw,
                recordsTotal = dto.recordsTotal,
                recordsFiltered = dto.recordsTotal,
                data = dto.data.Select(d => new
                {
                    name = d.Name,
                    parentID = d.ParentId,
                    id = d.Id.ToString(),
                    createDateTime = d.CreateDateTime.ToString(),
                    type = d.TypeName,
                    url = d.Url,
                    order = d.Order
                })
            };
            return Json(data);
        }

        [HttpGet]
        public IActionResult GetList()
        {
            var data = _menuService.GetList();
            var strData = data.data.Select(d => new
            {
                name = d.Name,
                parentID = d.ParentId,
                id = d.Id.ToString(),
                createDateTime = d.CreateDateTime.ToString(),
                type=d.TypeName,
                url = d.Url,
                order=d.Order
            });
            var result = Json(new
            {
                aaData = strData
            });
            return result;
        }
        [HttpPost]
        public IActionResult Edit(MenuDto menu)
        {
            var result = Json(new
            {
                flag = _menuService.Update(menu)
            });
            return result;
        }
        [HttpPost]
        public IActionResult Add(MenuDto menu)
        {
            var result = Json(new
            {
                flag = _menuService.Add(menu)
            });
            return result;
        }
        [HttpPost]
        public IActionResult Delete(int id)
        {
            var result = Json(new
            {
                flag = _menuService.Delete(id)
            });
            return result;
        }
        [HttpPost]
        public IActionResult DeleteMulti(List<int> ids)
        {
            var result = Json(new
            {
                flag = _menuService.DeleteMulti(ids)
            });
            return result;
        }
        #endregion
    }
}
