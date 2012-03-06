package lab8;

public class UserBean {

	private String first;
	private String last;

	public UserBean() {
		super();
	}

	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	
	public String getFullName() {
		return first + " " + last;
	}

}
