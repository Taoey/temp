package server;


import java.io.Serializable;
import java.util.List;

import bean.PublicBean;

import entity.Business;
import entity.Users;

public interface BusinessServer {
	public boolean add(Business business);//添加
	
	public boolean delete(int pid);//删除
	
	public Business login(String pname,String ppwd);  //用户登录
	
	public boolean update(Business business);//修改
	
	public List<Business> select(List args);//一般查询
	public List<Business> select();//一般查询
	public PublicBean selectByPage(int page,String pname);//分页查询
	
	public Business getBusiness(Serializable pid);//加载
	
	public Business getBusiness(String pname); //根据Pname获得一个JavaBean对象

}
