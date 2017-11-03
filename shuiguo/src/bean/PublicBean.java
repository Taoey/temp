package bean;

import java.util.List;
import javax.persistence.Entity;

@Entity public class PublicBean {

	private int showPage;//显示页面
	
	private List list;//列表
	
	private int allPage;//所有页面
	
	private int allCount;//总数

	public int getShowPage() {
		return showPage;
	}

	public void setShowPage(int showPage) {
		this.showPage = showPage;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getAllPage() {
		return allPage;
	}

	public void setAllPage(int allPage) {
		this.allPage = allPage;
	}

	public int getAllCount() {
		return allCount;
	}

	public void setAllCount(int allCount) {
		this.allCount = allCount;
	}
}
