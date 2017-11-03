package server;

import java.util.List;

import bean.LeaseShuiguoBean;
import bean.PublicBean;
import entity.Leaseshuiguo;

public interface LeaseShuiguoServer {

	public boolean addShuiguo(Leaseshuiguo shuiguo);  //添加
	
	public boolean delShuiguo(int id);//删除
	
	public boolean delBySQL(int uid);
	
	public boolean update(Leaseshuiguo shuiguo);//修改
	
	public Leaseshuiguo getShuiguo(int id);//加载
	
	public List<Leaseshuiguo> selectInfo(LeaseShuiguoBean bean); //一般查询
	
	public PublicBean getByPage(int page,int row,LeaseShuiguoBean bean);//分页查询
	
	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean,int count);//带top的查询
	
	public List<Leaseshuiguo> topShuiguo(LeaseShuiguoBean bean,int count,String key);//带top的查询
}
