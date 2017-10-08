﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using lkWeb.Service.Abstracts;
using lkWeb.Service.Dto;
using lkWeb.Areas.Admin.Models;

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
        public IActionResult GetList()
        {
            var data = _roleService.GetList();
            var strData = data.data.Select(d => new
            {
                name = d.Name,
                description = d.Description,
                id = d.Id.ToString(),
                createDateTime = d.CreateDateTime.ToString(),
                edit = "<button type=\"button\" class=\"btn btn-success\" onClick=\"GoToEditRole(" + d.Id.ToString() + ")\">编辑</button>",
                delete = "<button type=\"button\" class=\"btn btn-delete\" onClick=\"DeleteRole(" + d.Id.ToString() + ")\">删除</button>",
            });
            var result = Json(new
            {
                aaData = strData
            });
            return result;
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
        public IActionResult Delete(string id)
        {
            var result = Json(new
            {
                flag = _roleService.Delete(int.Parse(id))
            });
            return result;
        }
        [HttpPost]
        public IActionResult DeleteMulti(string ids)
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
            var list = _roleService.GetList();
            var strData = list.data.Select(d => new
            {
                id = d.Id,
                pid = 0,
                name = d.Name
            });
            return Json(strData);

        }
        [HttpPost]
        public IActionResult GetMenuList()
        {
            var list = _menuService.GetList();
            var strData = list.data.Select(d => new
            {
                id = d.Id,
                pId = d.ParentId,
                name = d.Name,
                open = true
            });
            return Json(strData);
        }
        [HttpPost]
        public IActionResult GetRoleMenus(string roleId)
        {
            var list = _roleMenuService.GetList(int.Parse(roleId));
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
            foreach (var roleId in dto.RoleIds)
            {
                _roleMenuService.Delete(roleId);
                if (dto.MenuIds != null)
                {
                    var newRoleMenus = dto.MenuIds.Select(item => new RoleMenuDto { RoleId = roleId, MenuId = item }).ToList();
                    _roleMenuService.Add(newRoleMenus);
                }
            }

            var result = Json(new
            {
                flag = true
            });
            return result;
        }
        #endregion
    }
}
