
using lkWeb.Service.Dto;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace lkWeb.Service.Abstracts
{
    public partial interface IModuleService
    {
	  /// <summary>
        /// 添加单个module
        /// </summary>
        /// <param name="dto">module实体</param>
        /// <returns></returns>
        Task<Result<ModuleDto>> AddAsync(ModuleDto dto);
        /// <summary>
        /// 批量添加module
        /// </summary>
        /// <param name="dto">module实体集合</param>
        /// <returns></returns>
        Task<Result<List<ModuleDto>>> AddAsync(List<ModuleDto> dtos);
        /// <summary>
        /// 根据id获取单个module数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        Task<Result<ModuleDto>> GetByIdAsync(int id);
		 /// <summary>
        /// 根据条件获取单个module数据
        /// </summary>
        /// <param name="exp"></param>
        /// <returns></returns>
        Task<Result<ModuleDto>> GetByExpAsync(Expression<Func<ModuleDto, bool>> exp);
        /// <summary>
        /// 根据id删除module数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        Task<Result<ModuleDto>> DeleteAsync(int id);
        /// <summary>
        /// 批量删除module数据
        /// </summary>
        /// <param name="ids">id集合</param>
        /// <returns></returns>
        Task<Result<List<ModuleDto>>> DeleteAsync(List<int> ids);
        /// <summary>
        /// 删除单个数据
        /// </summary>
        /// <param name="dto">module实体</param>
        /// <returns></returns>
        Task<Result<ModuleDto>> DeleteAsync(ModuleDto dto);
        /// <summary>
        /// 根据条件删除module数据
        /// </summary>
        /// <param name="exp"></param>
        /// <returns></returns>
        Task<Result<ModuleDto>> DeleteAsync(Expression<Func<ModuleDto, bool>> exp);
        /// <summary>
        /// 更新单个数据
        /// </summary>
        /// <param name="dto">module实体</param>
        /// <returns></returns>
        Task<Result<ModuleDto>> UpdateAsync(ModuleDto dto);
        /// <summary>
        /// 批量更新数据
        /// </summary>
        /// <param name="dto">module实体集合</param>
        /// <returns></returns>
        Task<Result<List<ModuleDto>>> UpdateAsync(List<ModuleDto> dtos);
        /// <summary>
        /// 获取module分页数据
        /// </summary>
        /// <param name="queryBase">基础查询对象</param>
        /// <param name="queryExp">queryExp</param>
        /// <param name="orderBy">要排序的列名</param>
        /// <param name="orderDir">asc or desc</param>
        /// <returns></returns>
        Task<ResultDto<ModuleDto>> GetPageDataAsync(QueryBase queryBase,
            Expression<Func<ModuleDto, bool>> queryExp, string orderBy, string orderDir);
        /// <summary>
        /// 根据条件获取列表
        /// </summary>
        /// <param name="queryExp">条件</param>
        /// <returns></returns>
        Task<ResultDto<ModuleDto>> GetListAsync(Expression<Func<ModuleDto, bool>> queryExp);
	}
}

