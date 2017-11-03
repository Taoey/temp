package server.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import server.ChooseshuiguoServer;
import server.LeaseShuiguoServer;
import server.UserServer;
import bean.PublicBean;
import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;
import entity.ChooseShuiguo;
import entity.Leaseshuiguo;
import entity.Users;

@Entity public class ChooseShuiguoServerImpl implements ChooseshuiguoServer {
	@ManyToOne private ProjectDao projectDao = new ProjectDaoimpl();

	public boolean deletechooseshuiguo(int id) {
		ChooseShuiguo chooseshuiguo = getChooseshuiguo(id);
		return projectDao.delete(chooseshuiguo);
	}

	public ChooseShuiguo getChooseshuiguo(int id) {
		// TODO Auto-generated method stub
		return (ChooseShuiguo) projectDao.getPojo(ChooseShuiguo.class, id);
	}

	public boolean insertchooseshuiguo(ChooseShuiguo chooseshuiguo) {

		return projectDao.add(chooseshuiguo);
	}

	public List<ChooseShuiguo> select(int lid) {
		String hql = "select c from ChooseShuiguo c where c.leaseShuiguo.id=?";
		List args = new ArrayList();
		args.add(lid);
		List<ChooseShuiguo> clist = projectDao.select(hql, args);
		return clist;
	}

	public boolean updatechooseshuiguo(ChooseShuiguo chooseshuiguo) {

		return projectDao.delete(chooseshuiguo);
	}

	public PublicBean getByPage(int page,int uid) {
		// TODO Auto-generated method stub
		String hql = "select cr from ChooseShuiguo cr where 1=1";
		String count_hql = "select count(cr) from ChooseShuiguo cr where 1=1";
		List args=new ArrayList();
		if(uid!=0){
			hql+=" and cr.users.uid=?";
			count_hql+=" and cr.users.uid=?";
			args.add(uid);
		}
		 
		int row = 5;
		List<ChooseShuiguo> list = projectDao.getByPage(hql, page, args, row);
		int allCount = (Integer) projectDao.uniqueSelect(count_hql, args);
		int allPage = 0;
		if (allCount % row == 0) {
			allPage = allCount / row;
		} else {
			allPage = (allCount / row) + 1;
		}

		PublicBean bean = new PublicBean();
		bean.setAllCount(allCount);
		bean.setAllPage(allPage);
		bean.setShowPage(page);
		bean.setList(list);
		return bean;
	}

	public String add(int shuiguoid, int uid) {
		// TODO Auto-generated method stubo
		String msg = "";
		List<ChooseShuiguo> clist = select(shuiguoid);
		if (clist.size() > 0) {
			msg = "您已经收藏了该信息!";
		} else {
			LeaseShuiguoServer server = new LeaseShuiguoServerImpl();
			UserServer userver = new UserServerImpl();
			Leaseshuiguo shuiguo = server.getShuiguo(shuiguoid); // 加载所要收藏的出租房源对象
			Users users = userver.getUser(uid);// 加载当前用户对象
			if(shuiguo.getBusiness().getBusId()==uid){
				msg = "不可以收藏自己的水果信息！";
			}else{
				ChooseShuiguo chooseShuiguo = new ChooseShuiguo();
				chooseShuiguo.setLeaseShuiguo(shuiguo);
				chooseShuiguo.setTime(new Date().toLocaleString());
				chooseShuiguo.setUsers(users);
				if(insertchooseshuiguo(chooseShuiguo)){
					msg = "收藏成功!";
				}else{
					msg = "收藏失败!";
				}
			}			
			
		}
		return msg;
	}

	public boolean deleteBySQL(int uid) {
		// TODO Auto-generated method stub
		String sql ="delete ChooseShuiguo c where cusers.uid= "+uid;		
		return projectDao.deleteBySQL(sql);
	}

}
