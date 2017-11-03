package server;

import java.io.Serializable;
import java.util.List;

import entity.ShuiguoType;

public interface ShuiguoTypeServer {
	public boolean insert(ShuiguoType shuiguoType);   //���
	
	public boolean delObj(int id);   //ɾ��
	
	public boolean update(ShuiguoType shuiguoType);   //�޸�
	
	public List<ShuiguoType> select();   //��ѯ
	
	public ShuiguoType getShuiguo_type(int id);   //����
	
	public ShuiguoType getType(String type);   //�������ͻ��һ��JavaBean
	
	
	public boolean selectType(String type);  //��ѯ�Ƿ����и����͵�����
	
	
	

}
