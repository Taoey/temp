package server;

import java.util.List;

import bean.LeaseShuiguoBean;
import bean.PublicBean;
import entity.Leaseshuiguo;

public interface LeaseShuiguoServer {

	public boolean addShuiguo(Leaseshuiguo shuiguo);  //���
	
	public boolean delShuiguo(int id);//ɾ��
	
	public boolean delBySQL(int uid);
	
	public boolean update(Leaseshuiguo shuiguo);//�޸�
	
	public Leaseshuiguo getShuiguo(int id);//����
	
	public List<Leaseshuiguo> selectInfo(LeaseShuiguoBean bean); //һ���ѯ
	
	public PublicBean getByPage(int page,int row,LeaseShuiguoBean bean);//��ҳ��ѯ
	
	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean,int count);//��top�Ĳ�ѯ
	
	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean,int count,String key);//��top�Ĳ�ѯ
}
