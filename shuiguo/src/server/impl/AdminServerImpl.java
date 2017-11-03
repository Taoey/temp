package server.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;

import entity.Admin;
import server.AdminServer;
import uk.ltd.getahead.dwr.WebContext;
import uk.ltd.getahead.dwr.WebContextFactory;

@Entity public class AdminServerImpl implements AdminServer {

	@ManyToOne private ProjectDao projectDao=new ProjectDaoimpl();
	public boolean deleteAdmin(int aid) {//ɾ��
		Admin admin=getAdmin(aid);
		return projectDao.delete(admin);
	}

	public boolean insertAdmin(Admin admin) { //���
	
		return projectDao.add(admin);
	}
    public boolean updateAdmin(Admin admin) { //�޸�
		
		return projectDao.update(admin);
	}
    public Admin getAdmin(int aid) {//����
		
		return (Admin) projectDao.getPojo(Admin.class, aid);
	}

	public Admin loginAdmin(String aname) {// ��֤����Ա��¼
		String sql = "from Admin where aname=?";
		Admin admin = null;
		List args = new ArrayList();
		args.add(aname);
		List<Admin> alist = projectDao.select(sql, args);
		if (alist.size() > 0) {
			admin = alist.get(0);
		}
		return admin;

	}

	public List<Admin> getPage(int page) {// �鿴����Ա
		// TODO Auto-generated method stub
		return null;
	}

	public List<Admin> select() {
		String hql="select adm from Admin adm";
		List<Admin> alist=projectDao.select(hql, null);
		return alist;
	}

	public Admin getAdmins(String aname) {
		Admin admin = null;
		String hql = "select a from Admin a where a.aname=?";
		List values = new ArrayList();
		values.add(aname);
		List<Admin> alist = projectDao.select(hql, values);
		if (alist.size() > 0) {
			admin = alist.get(0);
		}
		return admin;
	}

	public Admin getSessionAdmin() {
		WebContext cnt = WebContextFactory.get(); // ���JS����������
		HttpServletRequest request = cnt.getHttpServletRequest();// ���request
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin"); // ��õ�ǰ����session�еĹ���Ա
		return admin;
	}


}
