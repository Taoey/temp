package server.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import server.BusinessServer;
import server.ChooseshuiguoServer;
import server.LeaseShuiguoServer;
import server.UserServer;
import bean.PublicBean;
import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;
import entity.Business;
import entity.Users;
import entity.UsersInfo;
/**
 * 商家用户服务类
 * @author abao
 *
 */
@Entity public class BusinessServerImpl implements BusinessServer {
	@ManyToOne private ProjectDao dao = new ProjectDaoimpl();

	//添加一条商家信息
	public boolean add(Business business) {// 添加

		return dao.add(business);
	}
    //删除一条商家信息
	public boolean delete(int bid) { // 删除
	
		Business business = (Business) getBusiness(bid);
		boolean flag2 = dao.delete(business);
		return flag2;// 修改状态
	}
//加载更多的商家信息
	public Business getBusiness(Serializable bid) { // 加载

		// TODO Auto-generated method stub
		return (Business) dao.getPojo(Business.class, bid);
	}
//根据用户名获取商家信息
	public Business getBusiness(String bname) { // 根据pname获得一个JavaBean对象
		Business business = null;
		String hql = "select us from Business us where bname=?";
		List args = new ArrayList<Business>();
		args.add(bname);
		List<Business> plist = dao.select(hql, args);
		if (plist.size() > 0) {
			business = plist.get(0);
		}
		return business;
	}
//获取所有商家信息
	public List<Business> select(List args) { // 一般查询
		String hql = "select us from Business us";
		List<Business> plist = dao.select(hql, args);
		return plist;
	}
//更新一条商家信息
	public boolean update(Business business) { // 修改

		return dao.update(business);
	}
//添加一条商家信息
	public boolean addBusiness(Business business) {
		// TODO Auto-generated method stub
		return dao.add(business);
	}
//删除一条商家信息
	public boolean delBusiness(Business business) {
		// TODO Auto-generated method stub
		return dao.delete(business);
	}
//商家登录
	public Business login(String bname,String bpwd) {
		String hql = " select us from Business us where bname=? and bpwd=?";
		List args = new ArrayList();
		args.add(bname);
		args.add(bpwd);
		List<Business> list = dao.select(hql, args);
		Business business = null;
		if (list.size() > 0) {
			business = list.get(0);
		}
		return business;
	}
//商家信息分页显示
	public PublicBean selectByPage(int bage,String bname) {
		String hql = "select us from Business us";
		String count_hql = "select count(us) from Business us";
		 
		List args = new ArrayList();
		if (bname != null && !bname.equals("")) {
			hql += " and us.bname like ?";
			count_hql += " and us.bname like ?";
			args.add("%"+bname+"%");
		}

		hql += " order by bid desc";
        System.out.println("ccc:"+count_hql);
		int row = 8;

		List list = dao.getByPage(hql, bage, args, row);

		int allCount=(Integer)dao.uniqueSelect(count_hql, args);  //获得数据库所有数据条数
		int allPage = 0;
		if (allCount % row != 0) {
			allPage = (allCount / row) + 1;
		} else {
			allPage = allCount / row;
		}

		PublicBean bean = new PublicBean();
		bean.setList(list);
		bean.setShowPage(bage);
		bean.setAllCount(allCount);
		bean.setAllPage(allPage);
		return bean;
	}
	@Override
	public List<Business> select() {
		String hql="select info from Business info where 1=1";
		List<Business> infolist=dao.select(hql,null);
		return infolist;
	}



}
