package server.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import server.LeaseShuiguoServer;
import bean.LeaseShuiguoBean;
import bean.PublicBean;
import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;
import entity.Leaseshuiguo;

@Entity public class LeaseShuiguoServerImpl implements LeaseShuiguoServer {

	@ManyToOne private ProjectDao dao = new ProjectDaoimpl();

	public boolean addShuiguo(Leaseshuiguo shuiguo) {
		// TODO Auto-generated method stub
		return dao.add(shuiguo);
	}

	public boolean delShuiguo(int id) {
		// TODO Auto-generated method stub
		Leaseshuiguo shuiguo=getShuiguo(id);
		return dao.delete(shuiguo);
	}
	
	// ��ҳ��ѯ
	public PublicBean getByPage(int page,int row, LeaseShuiguoBean bean) { 
		 
		String hql = "select shuiguo from Leaseshuiguo shuiguo where 1=1 ";
		String count_hql = "select count(shuiguo) from Leaseshuiguo shuiguo where 1=1 ";

		List args = new ArrayList();
		
		/** * �ж��Ƿ�����������,�Բ�ѯ������ƴ�� ** 		*/
		if (bean.getState()==0) {  //ǰ̨�û�����
			hql += " and shuiguo.state>0";
			count_hql+= " and shuiguo.state>0";
		}if (bean.getState()==3) {  //ǰ̨��ҳ��ʾ
			hql += " and shuiguo.state>=3";
			count_hql+= " and shuiguo.state>=3";
		}

//		
//		if (bean.getUid()!=0) {
//			hql += " and shuiguo.users.uid=?";
//			count_hql+= " and shuiguo.users.uid=?";
//			args.add(bean.getUid());
//		}
		
		if (bean.getAreaName() != null && !bean.getAreaName().equals("")) {
			hql += " and shuiguo.areaType.area=?";
			count_hql+= " and shuiguo.areaType.area=?";
			args.add(bean.getAreaName());
		}
		if (bean.getTitle() != null && !bean.getTitle().equals("")) {
			
			hql += " and shuiguo.title like ?";
			count_hql+= " and shuiguo.title like ?";
			args.add("%"+bean.getTitle()+"%");
		}
		if (bean.getColore()!=null&&bean.getColore()!=null) {
			hql += " and shuiguo.colore=?";
			count_hql += " and shuiguo.colore=?";
			args.add(bean.getColore());
		}
		if (bean.getShuiguoType() != null && !bean.getShuiguoType().equals("")) {
			hql += " and shuiguo.shuiguoType.type=?";
			count_hql += " and shuiguo.shuiguoType.type=?";
			args.add(bean.getShuiguoType());
		}
		if (bean.getStartPrice()!=null && bean.getStartPrice()!=0) {
			hql += " and shuiguo.pirce>=?";
			count_hql += " and shuiguo.pirce>=?";
			args.add(bean.getStartPrice());
		}
		if (bean.getEndPrice()!=null && bean.getEndPrice()!=0) {
			hql += " and shuiguo.pirce<=?";
			count_hql += " and shuiguo.pirce<=?";
			args.add(bean.getEndPrice());
		}
		 
		
	
		//ʼ�հ�ʱ�䵹������
		if(bean.getOrderBy() != null && bean.getOrderBy().equals("time")){//��ʱ������
			hql+=" order by shuiguo.time ";
		}else{
			hql+=" order by shuiguo.time desc";  //��ʱ�併��Ĭ��
		}
		

		//-----------------------�ж�����------------------------//
        if (bean.getOrderBy() != null && !bean.getOrderBy().equals("")) {
			if(bean.getOrderBy().equals("acreageDESC")){//�����Ӵ�С
				hql+=",shuiguo.acreage desc";
			}
			if(bean.getOrderBy().equals("acreage")){//������С����
				hql+=",shuiguo.acreage ";
			}
			if(bean.getOrderBy().equals("priceDESC")){//�۸�Ӹߵ���
				hql+=",shuiguo.pirce desc";
			}
			if(bean.getOrderBy().equals("price")){//�۸�ӵ͵���
				hql+=",shuiguo.pirce";
			}
			
		} 
        /*** ����ֵJavaBean ***/
        PublicBean pbean=new PublicBean();
        if(bean.getIslist()==null){
        	List<Leaseshuiguo> list=dao.getByPage(hql, page, args, row);  //���ÿҳ��Ҫ��ʾ�����ݼ���
            pbean.setList(list); 
        }
         
        int allCount=(Integer)dao.uniqueSelect(count_hql, args);  //������ݿ�������������
        
      
        int allPage=0; //����ҳ����
        if(allCount%row!=0){
			allPage=(allCount/row)+1;
		}else{
			allPage=allCount/row;
		}
        
       
        pbean.setAllCount(allCount);
        pbean.setAllPage(allPage);
        pbean.setShowPage(page);
        
		return pbean;
	}

	public Leaseshuiguo getShuiguo(int id) { // ����
		// TODO Auto-generated method stub
		return (Leaseshuiguo) dao.getPojo(Leaseshuiguo.class, id);
	}

	public List<Leaseshuiguo> selectInfo(LeaseShuiguoBean bean) { // һ���ѯ
		// TODO Auto-generated method stub
		String hql = "select shuiguo from Leaseshuiguo shuiguo where shuiguo.state>0 ";
		List args = new ArrayList();
		/* �ж������е����� */
		if (bean.getAreaName() != null && !bean.getAreaName().equals("")) {
			hql += " and shuiguo.areaType.area=?";
			args.add(bean.getAreaName());
		}
		 
		List<Leaseshuiguo> rlist = dao.select(hql, args);
		return rlist;
	}
	public boolean update(Leaseshuiguo shuiguo) {
		// TODO Auto-generated method stub
		return dao.update(shuiguo);
	}
//��TOP�Ĳ�ѯ
	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean,int count) {
		String hql="select shuiguo from Leaseshuiguo shuiguo where shuiguo.state>2 ";
		List args=new ArrayList();
		if(bean.getUid()!=0){
			hql+=" and shuiguo.business.busId=?";
			args.add(bean.getUid());
		}
		if(bean.getId()!=0){
			hql+=" and shuiguo.id <>?";
			args.add(bean.getId());
		}
		hql+=" order by time desc";//����
		List<Leaseshuiguo> list=dao.getByTop(hql, args, count);
		return  list;
	}

	public boolean delBySQL(int uid) {
		// TODO Auto-generated method stub
		String sql ="delete Leaseshuiguo l where l.business.busId= "+uid;		
		return dao.deleteBySQL(sql);
	}

	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean, int count, String key) {
		String hql="select shuiguo from Leaseshuiguo shuiguo where shuiguo.state>2 ";
		List args=new ArrayList();
		if(bean.getUid()!=0){
			hql+=" and shuiguo.business.busId=?";
			args.add(bean.getUid());
		}
		if(bean.getId()!=0){
			hql+=" and shuiguo.id <>?";
			args.add(bean.getId());
		}
		hql+=" and shuiguo.address like '%"+key+"%'" +
			 " or  shuiguo.title like '%"+key+"%'";
		hql+=" order by time desc";//����
		List<Leaseshuiguo> list=dao.getByTop(hql, args, count);
		return  list;
	}

}
