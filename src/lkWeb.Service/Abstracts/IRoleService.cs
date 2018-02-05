﻿using lkWeb.Service.Dto;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace lkWeb.Service.Abstracts
{
    public partial interface IRoleService
    {
        Task<Result<RoleDto>> _GetById(int id);
        Task<Result<RoleDto>> _Add(RoleDto dto);
        Task<Result<RoleDto>> _Update(RoleDto dto);
        Task<Result<RoleDto>> _Delete(RoleDto dto);
        Task<Result<RoleDto>> _Delete(int id);
        Task<Result<RoleDto>> _Delete(List<int> ids);
    }
}
