package server;


import java.io.Serializable;
import java.util.List;

import bean.PublicBean;

import entity.Business;
import entity.Users;

public interface BusinessServer {
	public boolean add(Business business);//���
	
	public boolean delete(int pid);//ɾ��
	
	public Business login(String pname,String ppwd);  //�û���¼
	
	public boolean update(Business business);//�޸�
	
	public List<Business> select(List args);//һ���ѯ
	public List<Business> select();//һ���ѯ
	public PublicBean selectByPage(int page,String pname);//��ҳ��ѯ
	
	public Business getBusiness(Serializable pid);//����
	
	public Business getBusiness(String pname); //����Pname���һ��JavaBean����

}
