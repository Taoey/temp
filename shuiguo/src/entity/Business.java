package entity;

import java.math.BigInteger;

/**
 * Business entity. @author MyEclipse Persistence Tools
 */

public class Business implements java.io.Serializable {

	// Fields

	private Integer busId;
	private String uname;
	private String bpwd;
	private String bphone;
	private String bemail;
	private String bcontact;
	private String baddress;
	private String bprofile;
	private String blogo;
	private String blicenseimage;
	private String remark;

	// Constructors

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	/** default constructor */
	public Business() {
	}

	/** full constructor */
	public Business(String uname, String bpwd, String bphone, String bemail,
			String bcontact, String baddress, String bprofile, String blogo,
			String blicenseimage,String remark) {
		this.uname = uname;
		this.bpwd = bpwd;
		this.bphone = bphone;
		this.bemail = bemail;
		this.bcontact = bcontact;
		this.baddress = baddress;
		this.bprofile = bprofile;
		this.blogo = blogo;
		this.blicenseimage = blicenseimage;
		this.remark=remark;
	}

	// Property accessors

	public Integer getBusId() {
		return this.busId;
	}

	public void setBusId(Integer busId) {
		this.busId = busId;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getBpwd() {
		return this.bpwd;
	}

	public void setBpwd(String bpwd) {
		this.bpwd = bpwd;
	}

	public String getBphone() {
		return this.bphone;
	}

	public void setBphone(String bphone) {
		this.bphone = bphone;
	}

	public String getBemail() {
		return this.bemail;
	}

	public void setBemail(String bemail) {
		this.bemail = bemail;
	}

	public String getBcontact() {
		return this.bcontact;
	}

	public void setBcontact(String bcontact) {
		this.bcontact = bcontact;
	}

	public String getBaddress() {
		return this.baddress;
	}

	public void setBaddress(String baddress) {
		this.baddress = baddress;
	}

	public String getBprofile() {
		return this.bprofile;
	}

	public void setBprofile(String bprofile) {
		this.bprofile = bprofile;
	}

	public String getBlogo() {
		return this.blogo;
	}

	public void setBlogo(String blogo) {
		this.blogo = blogo;
	}

	public String getBlicenseimage() {
		return this.blicenseimage;
	}

	public void setBlicenseimage(String blicenseimage) {
		this.blicenseimage = blicenseimage;
	}

}