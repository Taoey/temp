package server;

import java.util.List;

import bean.PublicBean;

import entity.ChooseShuiguo;

public interface ChooseshuiguoServer {
	
	public boolean insertchooseshuiguo(ChooseShuiguo chooseshuiguo);
	
	public boolean deletechooseshuiguo(int id);
	
	public boolean deleteBySQL(int uid);
	
	public ChooseShuiguo getChooseshuiguo(int id);
	
	public boolean updatechooseshuiguo(ChooseShuiguo chooseshuiguo);
	
	public List<ChooseShuiguo> select(int lid);
	
	public PublicBean getByPage(int page,int uid);
	
	public String add(int shuiguoid,int uid);  //Ìí¼Ó(dwr)
}
