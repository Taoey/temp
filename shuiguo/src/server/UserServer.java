package server;


import java.io.Serializable;
import java.util.List;

import bean.PublicBean;

import entity.Users;

public interface UserServer {
	public boolean add(Users users);//���
	
	public boolean delete(int uid);//ɾ��
	
	public Users login(String uname,String upwd);  //�û���¼
	
	public boolean update(Users users);//�޸�
	
	public List<Users> select(List args);//һ���ѯ
	
	public PublicBean selectByPage(int page,String uname);//��ҳ��ѯ
	
	public Users getUser(Serializable uid);//����
	
	public Users getUsers(String uname); //����Uname���һ��JavaBean����

}
