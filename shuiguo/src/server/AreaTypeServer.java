package server;

import java.io.Serializable;
import java.util.List;

import entity.AreaType;

public interface AreaTypeServer {
	
	public boolean addArea(AreaType areaType);//�������	
	public boolean delArea(AreaType areaType);//ɾ������
	public List<AreaType> selArea();//��ѯ����
	public AreaType getthis(Serializable id);//����
}
