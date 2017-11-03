package dao;

import java.io.Serializable;
import java.util.List;

public interface ProjectDao {
	//���
	public boolean add(Object obj);
	//ɾ��
	public boolean delete(Object obj);
	
	public boolean deleteBySQL(String sql);
	//�޸�
	public boolean update(Object obj);
	//һ���ѯ
	public List select(String hql,List args);
	//����һ��JAVABEAN����
	public Object getPojo(Class clazz,Serializable id);
	// ���ͳ������
	public Object uniqueSelect(String hql, List args);
	//��ҳ��ѯ
	public List getByPage(String hql, int showPage, List args, int row);
	//��TOP�Ĳ�ѯ
	public List getByTop(String hql,List args,int count);

}
