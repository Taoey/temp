package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity public class BegRentBean {

	@Id @GeneratedValue private int aid;
	private int hid;//水果类型id
	private int minprice;//最低价
	private int maxprice;//最高价
	private int shuiguoid;//水果id
	private String islist;//列表
	private int uid;//用户id

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getShuiguoid() {
		return shuiguoid;
	}

	public void setShuiguoid(int shuiguoid) {
		this.shuiguoid = shuiguoid;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public int getMinprice() {
		return minprice;
	}

	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}

	public int getMaxprice() {
		return maxprice;
	}

	public void setMaxprice(int maxprice) {
		this.maxprice = maxprice;
	}

	public String getIslist() {
		return islist;
	}

	public void setIslist(String islist) {
		this.islist = islist;
	}

}
