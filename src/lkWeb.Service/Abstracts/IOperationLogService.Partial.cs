
using lkWeb.Service.Dto;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace lkWeb.Service.Abstracts
{
    public partial interface IOperationLogService
    {
		 /// <summary>
        /// 添加operationlog
        /// </summary>
        /// <param name="dto">operationlog实体</param>
        /// <returns></returns>
        bool Add(OperationLogDto dto);
		/// <summary>
        /// 批量添加operationlog
        /// </summary>
        /// <param name="dto">operationlog实体集合</param>
        /// <returns></returns>
        bool Add(List<OperationLogDto> dtos);
        /// <summary>
        /// 根据id获取operationlog数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        OperationLogDto GetById(int id);
        /// <summary>
        /// 根据id删除operationlog数据
        /// </summary>
        /// <param name="id">id</param>
        /// <returns></returns>
        bool Delete(int id);
        /// <summary>
        /// 批量删除operationlog数据
        /// </summary>
        /// <param name="ids">id集合</param>
        /// <returns></returns>
        bool DeleteMulti(List<int> ids);
        /// <summary>
        /// 删除单个数据
        /// </summary>
        /// <param name="dto">operationlog实体</param>
        /// <returns></returns>
        bool Delete(OperationLogDto dto);
        /// <summary>
        /// 根据条件删除operationlog数据
        /// </summary>
        /// <param name="exp"></param>
        /// <returns></returns>
        bool Delete(Expression<Func<OperationLogDto,bool>> exp);
        /// <summary>
        /// 更新单个数据
        /// </summary>
        /// <param name="dto">operationlog实体</param>
        /// <returns></returns>
        bool Update(OperationLogDto dto);
		     /// <summary>
        /// 批量更新数据
        /// </summary>
        /// <param name="dto">operationlog实体集合</param>
        /// <returns></returns>
	    bool Update(List<OperationLogDto> dtos);
		         /// <summary>
        /// 获取operationlog分页数据
        /// </summary>
        /// <param name="queryBase">基础查询对象</param>
        /// <param name="queryExp">queryExp</param>
        /// <param name="orderBy">要排序的列名</param>
        /// <param name="orderDir">asc or desc</param>
        /// <returns></returns>
        ResultDto<OperationLogDto> GetPageData(QueryBase queryBase, Expression<Func<OperationLogDto, bool>> queryExp, string orderBy, string orderDir);
 		/// <summary>
        /// 根据条件获取列表
        /// </summary>
        /// <param name="queryExp">条件</param>
        /// <returns></returns>
        ResultDto<OperationLogDto> GetList(Expression<Func<OperationLogDto,bool>> queryExp);
	}
}







