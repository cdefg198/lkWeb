
using lkWeb.Service.Dto;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace lkWeb.Service.Abstracts
{
    public partial interface IRoleMenuService
    {
		 /// <summary>
        /// 添加rolemenu
        /// </summary>
        /// <param name="dto">rolemenu实体</param>
        /// <returns></returns>
        bool Add(RoleMenuDto dto);
		/// <summary>
        /// 批量添加rolemenu
        /// </summary>
        /// <param name="dto">rolemenu实体集合</param>
        /// <returns></returns>
        bool Add(List<RoleMenuDto> dtos);
        /// <summary>
        /// 根据id获取rolemenu数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        RoleMenuDto GetById(int id);
        /// <summary>
        /// 根据id删除rolemenu数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        bool Delete(int id);
        /// <summary>
        /// 批量删除rolemenu数据
        /// </summary>
        /// <param name="ids">id集合</param>
        /// <returns></returns>
        bool DeleteMulti(List<int> ids);
        /// <summary>
        /// 删除单个数据
        /// </summary>
        /// <param name="dto">rolemenu实体</param>
        /// <returns></returns>
        bool Delete(RoleMenuDto dto);
        /// <summary>
        /// 根据条件删除rolemenu数据
        /// </summary>
        /// <param name="exp"></param>
        /// <returns></returns>
        bool Delete(Expression<Func<RoleMenuDto,bool>> exp);
        /// <summary>
        /// 更新单个数据
        /// </summary>
        /// <param name="dto">rolemenu实体</param>
        /// <returns></returns>
        bool Update(RoleMenuDto dto);
		     /// <summary>
        /// 批量更新数据
        /// </summary>
        /// <param name="dto">rolemenu实体集合</param>
        /// <returns></returns>
	    bool Update(List<RoleMenuDto> dtos);
		         /// <summary>
        /// 获取rolemenu分页数据
        /// </summary>
        /// <param name="queryBase">基础查询对象</param>
        /// <param name="queryExp">queryExp</param>
        /// <param name="orderBy">要排序的列名</param>
        /// <param name="orderDir">asc or desc</param>
        /// <returns></returns>
        ResultDto<RoleMenuDto> GetPageData(QueryBase queryBase, Expression<Func<RoleMenuDto, bool>> queryExp, string orderBy, string orderDir);
 		/// <summary>
        /// 根据条件获取列表
        /// </summary>
        /// <param name="queryExp">条件</param>
        /// <returns></returns>
        ResultDto<RoleMenuDto> GetList(Expression<Func<RoleMenuDto,bool>> queryExp);
	}
}







