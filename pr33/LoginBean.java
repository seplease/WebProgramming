package pr33;

public class LoginBean {
	private String id;
	private String password;
	private String gender;
	private String email;
	private String birth;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	public String getPw() {
		return password;
	}
	public void setPw(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public boolean isGrownUp() {
		String [] dArray = birth.split("-");
		// dArray[0] = 년도, dArray[1] = 월, dArray[2] = 일
		int bir = Integer.parseInt(dArray[0]);
		
		if (2022 - bir >= 20)
			return true;
		else
			return false;
	}
}
