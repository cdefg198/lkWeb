﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using lkWeb.Service.Abstracts;
using lkWeb.Service.Dto;
using lkWeb.Areas.Admin.Models;
using System.Linq.Expressions;
using lkWeb.Core.Extensions;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace lkWeb.Areas.Admin.Controllers
{
    public class RoleController : AdminBaseController
    {
        public readonly IRoleService _roleService;
        public readonly IMenuService _menuService;
        public readonly IRoleMenuService _roleMenuService;
        public RoleController(IRoleService roleService, IMenuService menuService, IRoleMenuService roleMenuService)
        {
            _roleService = roleService;
            _menuService = menuService;
            _roleMenuService = roleMenuService;
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
            var role = _roleService.GetById(int.Parse(id));
            return View(role);
        }
        public IActionResult Authen()
        {
            return View();
        }
        #endregion

        #region Ajax

        [HttpGet]
        public IActionResult GetPageData(QueryBase queryBase)
        {
            Expression<Func<RoleDto, bool>> queryExp = item => !item.IsDeleted;
            if (queryBase.SearchKey.IsNotEmpty())
                queryExp = x => (x.Description.Contains(queryBase.SearchKey) || x.Name.Contains(queryBase.SearchKey)) && !x.IsDeleted;
            var dto = _roleService.GetPageData(queryBase, queryExp, queryBase.OrderBy, queryBase.OrderDir);
            var data = new
            {
                draw = queryBase.Draw,
                recordsTotal = dto.recordsTotal,
                recordsFiltered = dto.recordsTotal,
                data = dto.data.Select(d => new
                {
                    name = d.Name,
                    description = d.Description,
                    id = d.Id.ToString(),
                    createDateTime = d.CreateDateTime.ToString(),
                })
            };
            return Json(data);
        }


        [HttpPost]
        public IActionResult Edit(RoleDto role)
        {
            var result = Json(new
            {
                flag = _roleService.Update(role)
            });
            return result;
        }
        [HttpPost]
        public IActionResult Add(RoleDto role)
        {
            var result = Json(new
            {
                flag = _roleService.Add(role)
            });
            return result;
        }
        [HttpPost]
        public IActionResult Delete(int id)
        {
            var result = Json(new
            {
                flag = _roleService.Delete(id)
            });
            return result;
        }
        [HttpPost]
        public IActionResult DeleteMulti(List<int> ids)
        {
            var result = Json(new
            {
                flag = _roleService.DeleteMulti(ids)
            });
            return result;
        }
        [HttpPost]
        public IActionResult GetRoleList()
        {
            var list = _roleService.GetList(item => !item.IsDeleted);
            var strData = list.data.Select(d => new
            {
                id = d.Id,
                pid = 0,
                name = d.Name
            });
            return Json(strData);

        }
        [HttpPost, HttpGet]
        public IActionResult GetMenuList()
        {
            var list = _menuService.GetList(item => !item.IsDeleted);
            var strData = list.data.Select(d => new
            {
                id = d.Id,
                pId = d.ParentId,
                name = d.Name,
                typeName = d.TypeName,
                url = d.Url,
                open = true
            });
            return Json(strData);
        }
        [HttpPost]
        public IActionResult GetRoleMenus(int roleId)
        {
            var list = _roleMenuService.GetList(item=>item.RoleId == roleId);
            var strData = list.data.Select(d => new
            {
                id = d.Id,
                menuId = d.MenuId,
                recordsTotal = list.recordsTotal
            });
            return Json(strData);
        }
        [HttpPost]
        public IActionResult AuthMenus(AuthMenuDto dto)
        {
            bool flag = false;
            if (dto.RoleIds.Count == 1)
            {

            }
            foreach (var roleId in dto.RoleIds)
            {
                flag= _roleMenuService.Delete(item=>item.RoleId==roleId);
                if (dto.MenuIds != null)
                {
                    var newRoleMenus = dto.MenuIds.Select(item => new RoleMenuDto { RoleId = roleId, MenuId = item }).ToList();
                   flag =  _roleMenuService.Add(newRoleMenus);
                }
            }

            var result = Json(new
            {
                flag = flag
            });
            return result;
        }
        #endregion
    }
}
