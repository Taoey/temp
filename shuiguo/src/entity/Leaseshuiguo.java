package entity;

/**
 * Leaseshuiguo entity. @author MyEclipse Persistence Tools
 */

public class Leaseshuiguo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Business business;
	public Business getBusiness() {
		return business;
	}

	public AreaType getAreaType() {
		return areaType;
	}

	public ShuiguoType getShuiguoType() {
		return shuiguoType;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	public void setAreaType(AreaType areaType) {
		this.areaType = areaType;
	}

	public void setShuiguoType(ShuiguoType shuiguoType) {
		this.shuiguoType = shuiguoType;
	}

	private AreaType areaType;
	private ShuiguoType shuiguoType;
	private String address;
	private String time;
	private Float acreage;
	private String title;
	private String img;
	private Float pirce;
	private String esthment;
	private String remark;
	private Integer state;
	private String colore;
	private String sort;
	private String kind;

	// Constructors

	/** default constructor */
	public Leaseshuiguo() {
	}

	/** minimal constructor */
	public Leaseshuiguo(Business business, AreaType areaType, ShuiguoType shuiguoType,
			String address, String time, String title, Float pirce) {
		this.business = business;
		this.areaType = areaType;
		this.shuiguoType = shuiguoType;
		this.address = address;
		this.time = time;
		this.title = title;
		this.pirce = pirce;
	}

	/** full constructor */
	public Leaseshuiguo(Business business, AreaType areaType, ShuiguoType ShuiguoType,
			String address, String time, Float acreage, String title,
			String img, Float pirce, String esthment, String remark,
			Integer state, String colore, String sort, String kind) {
		this.business = business;
		this.areaType = areaType;
		this.shuiguoType = shuiguoType;
		this.address = address;
		this.time = time;
		this.acreage = acreage;
		this.title = title;
		this.img = img;
		this.pirce = pirce;
		this.esthment = esthment;
		this.remark = remark;
		this.state = state;
		this.colore = colore;
		this.sort = sort;
		this.kind = kind;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Float getAcreage() {
		return this.acreage;
	}

	public void setAcreage(Float acreage) {
		this.acreage = acreage;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Float getPirce() {
		return this.pirce;
	}

	public void setPirce(Float pirce) {
		this.pirce = pirce;
	}

	public String getEsthment() {
		return this.esthment;
	}

	public void setEsthment(String esthment) {
		this.esthment = esthment;
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

	public String getColore() {
		return this.colore;
	}

	public void setColore(String colore) {
		this.colore = colore;
	}

	public String getSort() {
		return this.sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getKind() {
		return this.kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

}