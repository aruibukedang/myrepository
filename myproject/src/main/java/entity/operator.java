package entity;

import util.MD5;

public class operator {
	private int id;
	private String nike;
	private static String password;
	private String name;
	private int sex;
	private String tel;
	private int power;
	private int status;
    private String comments;
    
    
    
    public  static String [] sexes={"男","女"};
    public  static String [] powers={"管理员","操作员"};
    public  static String [] statuses={"在职","离职"};
    
    
    
    public static  String getMd5() {
    	return MD5.MD5(password);
    }
    
    
	public  String getSexes() {
		return sexes[sex];
	}
	
	public  String getPowers() {
		return powers[power];
	}
	
	public  String getStatuses() {
		return statuses[status];
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNike() {
		return nike;
	}
	public void setNike(String nike) {
		this.nike = nike;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
    
    
    

}
