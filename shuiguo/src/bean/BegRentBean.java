package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity public class BegRentBean {

	@Id @GeneratedValue private int aid;
	private int hid;//ˮ������id
	private int minprice;//��ͼ�
	private int maxprice;//��߼�
	private int shuiguoid;//ˮ��id
	private String islist;//�б�
	private int uid;//�û�id

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
