package entity;

/**
 * ChooseRoom generated by MyEclipse Persistence Tools
 */

public class ChooseShuiguo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private Leaseshuiguo leaseShuiguo;
	private String time;
	// Constructors

	/** default constructor */
	public ChooseShuiguo() {
	}

	// Property accessors

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

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

	public Leaseshuiguo getLeaseShuiguo() {
		return this.leaseShuiguo;
	}

	public void setLeaseShuiguo(Leaseshuiguo leaseShuiguo) {
		this.leaseShuiguo = leaseShuiguo;
	}

}