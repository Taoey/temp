package server;

import java.util.List;

import entity.Admin;

public interface AdminServer {
	public boolean insertAdmin(Admin admin);// ��ӹ���Ա
	public boolean updateAdmin(Admin admin);// �޸Ĺ���Ա
	public boolean deleteAdmin(int aid);//ɾ������Ա
	public List<Admin> getPage(int page);// �鿴����Ա
	public Admin loginAdmin(String aname);// ��֤����Ա��¼
	public Admin getAdmin(int aid); // ����
	public List<Admin> select();
	public Admin getAdmins(String aname);//��ȡһ��JavaBean
	


}
