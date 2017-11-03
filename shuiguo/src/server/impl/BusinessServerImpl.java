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
 * �̼��û�������
 * @author abao
 *
 */
@Entity public class BusinessServerImpl implements BusinessServer {
	@ManyToOne private ProjectDao dao = new ProjectDaoimpl();

	//���һ���̼���Ϣ
	public boolean add(Business business) {// ���

		return dao.add(business);
	}
    //ɾ��һ���̼���Ϣ
	public boolean delete(int bid) { // ɾ��
	
		Business business = (Business) getBusiness(bid);
		boolean flag2 = dao.delete(business);
		return flag2;// �޸�״̬
	}
//���ظ�����̼���Ϣ
	public Business getBusiness(Serializable bid) { // ����

		// TODO Auto-generated method stub
		return (Business) dao.getPojo(Business.class, bid);
	}
//�����û�����ȡ�̼���Ϣ
	public Business getBusiness(String bname) { // ����pname���һ��JavaBean����
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
//��ȡ�����̼���Ϣ
	public List<Business> select(List args) { // һ���ѯ
		String hql = "select us from Business us";
		List<Business> plist = dao.select(hql, args);
		return plist;
	}
//����һ���̼���Ϣ
	public boolean update(Business business) { // �޸�

		return dao.update(business);
	}
//���һ���̼���Ϣ
	public boolean addBusiness(Business business) {
		// TODO Auto-generated method stub
		return dao.add(business);
	}
//ɾ��һ���̼���Ϣ
	public boolean delBusiness(Business business) {
		// TODO Auto-generated method stub
		return dao.delete(business);
	}
//�̼ҵ�¼
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
//�̼���Ϣ��ҳ��ʾ
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

		int allCount=(Integer)dao.uniqueSelect(count_hql, args);  //������ݿ�������������
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
