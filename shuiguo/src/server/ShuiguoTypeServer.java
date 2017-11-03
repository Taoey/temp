package server;

import java.io.Serializable;
import java.util.List;

import entity.ShuiguoType;

public interface ShuiguoTypeServer {
	public boolean insert(ShuiguoType shuiguoType);   //添加
	
	public boolean delObj(int id);   //删除
	
	public boolean update(ShuiguoType shuiguoType);   //修改
	
	public List<ShuiguoType> select();   //查询
	
	public ShuiguoType getShuiguo_type(int id);   //加载
	
	public ShuiguoType getType(String type);   //根据类型获得一个JavaBean
	
	
	public boolean selectType(String type);  //查询是否已有该类型的数据
	
	
	

}
