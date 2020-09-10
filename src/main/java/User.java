
public class User {
	 private int user_id;
	 private String user_name;
	 private String user_password;
	 private String user_cf;
	 private String first_name;
	 private String last_name;
	 private int cap;
	 private String user_email;


  public User() {
  }
  
  public User(int user_id, String user_name,String user_password) {
      this.user_id = user_id;
      this.user_name = user_name;
      this.user_password = user_password;
  }
  
  public User(int user_id, String user_name, String user_password, String first_name, String last_name, int cap, String user_email, String user_cf) {
	  this.user_id = user_id;
      this.user_name = user_name;
      this.user_password = user_password;
      this.first_name=first_name;
      this.last_name=last_name;
      this.user_cf=user_cf;
      this.cap=cap;
      this.user_email=user_email;
      
  }

  public long getUser_id() {
      return user_id;
  }

  public void setUser_id(int user_id) {
      this.user_id = user_id;
  }

  public String getUser_name() {
      return user_name;
  }

  public void setUser_name(String user_name) {
      this.user_name = user_name;
  }
  
  public String getUser_pw() {
      return user_password;
  }

  public void setUser_pw(String user_password) {
      this.user_password = user_password;
  }
  
  public String getUser_firstname() {
      return first_name;
  }

 public void setUser_firstname() {
	 this.first_name=first_name;
 }
 
 public String getUser_lastname() {
	 return last_name;
 }
 
 public void setUser_lastname() {
	 this.last_name=last_name;
 }
 
 public int getUser_cap() {
	 return cap;
 }
 
 public void setUser_cap() {
	 this.cap=cap;
 }
 
 public String getUser_cf() {
	 return user_cf;
 }
 
 public void setUser_cf() {
	 this.user_cf=user_cf;
 }
 
 public String getUser_email() {
	 return user_email;
 }
 
 public void setUser_email() {
	 this.user_email=user_email;
 }
  @Override
  public String toString() {
      return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_password=" + user_password +" ]";
  }

}