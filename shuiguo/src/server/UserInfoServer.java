package server;

import java.util.List;

import entity.UsersInfo;

public interface UserInfoServer {

	public UsersInfo selectUsersInfoName(int uid);//��ѯ��ʵ����
	
	public boolean add(UsersInfo usersInfo); //���
	
	public boolean update(UsersInfo usersInfo);//�޸�
	

	public List<UsersInfo> select();//��ѯ
	public UsersInfo getuInfo(int uid);//����
		

}
