/*
 * 出租房源的条件JavaBean
 */

package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity public class LeaseShuiguoBean {

	private String areaName; // 区域名

	private Float startPrice; // 开始单价

	private Float endPrice; // 结束单价

	private String colore; // 细则（颜色）

	private String shuiguoType; // 品种

	private String time; // 时间

	private String orderBy; // 排序方式

	private int state; // 状态

	private int uid;// 用户id
	
	private String title;//标题

	@Id @GeneratedValue private int id;

	private String islist;//列表

	public String getIslist() {
		return islist;
	}

	public void setIslist(String islist) {
		this.islist = islist;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public Float getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(Float startPrice) {
		this.startPrice = startPrice;
	}

	public Float getEndPrice() {
		return endPrice;
	}

	public void setEndPrice(Float endPrice) {
		this.endPrice = endPrice;
	}

	public String getShuiguoType() {
		return shuiguoType;
	}

	public void setShuiguoType(String shuiguoType) {
		this.shuiguoType = shuiguoType;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getColore() {
		return colore;
	}

	public void setColore(String colore) {
		this.colore = colore;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
