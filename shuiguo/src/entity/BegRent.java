package entity;

/**
 * BegRent generated by MyEclipse Persistence Tools
 */

public class BegRent implements java.io.Serializable {

	// Fields

	private Integer id;
	
	private Users users;
	private AreaType areaType;
	private ShuiguoType shuiguoType;
	private String address;
	private int minprice;
	private int maxprice;
	private String minarceage;
	private String maxarceage;
	private String time;
	private String colore;
	private String sort;
	private String kind;
	private String remark;
	private Integer state;
	private String esthment;

	// Constructors

	/** default constructor */
	public BegRent() {
	}

	/** minimal constructor */




	/** full constructor */




	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public AreaType getAreaType() {
		return this.areaType;
	}

	public void setAreaType(AreaType areaType) {
		this.areaType = areaType;
	}

	public ShuiguoType getShuiguoType() {
		return this.shuiguoType;
	}

	public void setShuiguoType(ShuiguoType shuiguoType) {
		this.shuiguoType = shuiguoType;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getMinarceage() {
		return minarceage;
	}

	public void setMinarceage(String minarceage) {
		this.minarceage = minarceage;
	}

	public String getMaxarceage() {
		return maxarceage;
	}

	public void setMaxarceage(String maxarceage) {
		this.maxarceage = maxarceage;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getEsthment() {
		return this.esthment;
	}

	public void setEsthment(String esthment) {
		this.esthment = esthment;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public  String getColore() {
		return colore;
	}

	public void setColore( String colore) {
		this.colore = colore;
	}

	public  String getSort() {
		return sort;
	}

	public void setSort( String sort) {
		this.sort = sort;
	}

	public  String getKind() {
		return kind;
	}

	public void setKind( String kind) {
		this.kind = kind;
	}



}