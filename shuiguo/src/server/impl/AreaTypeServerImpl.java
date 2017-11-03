package server.impl;

import java.io.Serializable;
import java.util.List;

import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;

import entity.AreaType;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import server.AreaTypeServer;

@Entity public class AreaTypeServerImpl implements AreaTypeServer {

	@ManyToOne private ProjectDao projectDao=new ProjectDaoimpl();
	
	public boolean addArea(AreaType areaType) {
		// TODO Auto-generated method stub
		return projectDao.add(areaType);
	}

	public boolean delArea(AreaType areaType) {
		// TODO Auto-generated method stub
		return projectDao.delete(areaType);
	}

	public List<AreaType> selArea() {
		String hql=" select at from AreaType at";
		List<AreaType> list=projectDao.select(hql, null);
		return list;
	}
	public AreaType getthis(Serializable id) {
		// TODO Auto-generated method stub
		return (AreaType) projectDao.getPojo(AreaType.class, id);
	}

}
