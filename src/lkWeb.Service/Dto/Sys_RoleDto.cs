﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using lkWeb.Service.Base.Dto;

namespace lkWeb.Service.Dto
{
    /// <summary>
    /// 角色DTO
    /// </summary>
    public class Sys_RoleDto: BaseDto
    {
        /// <summary>
        /// 角色名称
        /// </summary>
        [Required, DisplayName("角色名称"), MinLength(2), MaxLength(20)]
        public string Name { get; set; }

        /// <summary>
        /// 角色描述
        /// </summary>
        [Required, DisplayName("描述"), MinLength(1), MaxLength(200)]
        public string Description { get; set; }
        /// <summary>
        /// 子系统id
        /// </summary>
        public int SubSystemId { get; set; }

    }
}