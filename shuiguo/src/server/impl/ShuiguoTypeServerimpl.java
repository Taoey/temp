package server.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import server.ShuiguoTypeServer;
import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;
import entity.ShuiguoType;

@Entity public class ShuiguoTypeServerimpl implements ShuiguoTypeServer {
	
	private static final Class Class = null;
	@ManyToOne private ProjectDao projectDao=new ProjectDaoimpl();

	public boolean delObj(int id) { //删除
		ShuiguoType type=getShuiguo_type(id);
		return projectDao.delete(type);
	}

	public ShuiguoType getShuiguo_type(int id) {  //加载
		// TODO Auto-generated method stub
		return (ShuiguoType) projectDao.getPojo(ShuiguoType.class, id);
	}

	public ShuiguoType getType(String type) {   //根据类型获得一个JavaBean
		String hql=" select ht from ShuiguoType ht where  ht.type=?";
		List list=new ArrayList();
		list.add(type);
		List<ShuiguoType> list2=projectDao.select(hql, list);
		ShuiguoType shuiguoType=null;
		if(list2.size()>0)
		{
			shuiguoType=list2.get(0);
		}
		return shuiguoType;
	}

	public boolean insert(ShuiguoType shuiguoType) {   //添加
		// TODO Auto-generated method stub
		return projectDao.add(shuiguoType);
	}

	public List<ShuiguoType> select() {  //查询
		String hql="select htype from ShuiguoType htype";  //hql的查询语句
		
		List<ShuiguoType> hlist=projectDao.select(hql,null);  //调DAO层的查询方法
		
		return hlist;
	} 

	public boolean selectType(String type) {  //查询是否已有该类型的数据
		boolean falg=false;
		String hql=" select ht from ShuiguoType ht where  ht.type=?";
		List list=new ArrayList();
		list.add(type);
		List<ShuiguoType> list2=projectDao.select(hql, list);
		if(list2.size()>0)
		{
			 falg=false;
		}else
		{
			falg=true;
		}
		return falg;
	}
	
	
	
	public boolean update(ShuiguoType shuiguoType) {  //修改
		// TODO Auto-generated method stub
		return projectDao.update(shuiguoType);
	}

}
