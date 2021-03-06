package com.zjcds.dao;

import com.zjcds.entity.DataResourceInfo;
import com.zjcds.entity.ServiceInfo;

import java.util.HashMap;
import java.util.List;

public interface DataResourceDao {
		/**
		 *
		 * @description 根据条件查询数据资源相关信息
		 *
		 * @Param:
		 * @author: wwl
		 * @createDate: 2019-09-19
		 * @updateDate: 2019-09-19
		 * @return ModelAndView
		 *
		 */
		public List<DataResourceInfo> findDataResourceInfo(HashMap param);

		/**
		 *
		 * @description 根据参数查找相应的具体数据
		 *
		 * @Param:
		 * @author: wwl
		 * @createDate: 2019-09-19
		 * @updateDate: 2019-09-19
		 * @return ModelAndView
		 *
		 */
		public List<HashMap> findData(HashMap param);

		/**
		 *
		 * @description 保存数据资源信息
		 *
		 * @Param:
		 * @author: wwl
		 * @createDate: 2019-09-19
		 * @updateDate: 2019-09-19
		 * @return 返回保存数据资源信息操作的状态
		 *
		 */
		public int saveDataResourceInfo(DataResourceInfo dataResourceInfo);

}
