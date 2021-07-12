package todooracle;
import java.util.Date;


public class DBSAVE {
	private String userID;
	private String password;
	private String values;
	private Date mDate;

	DBSAVE(String userID, String password ,String values, Date mDATE) {
		this.userID = userID;
		this.password=password;
		this.values=values;
		this.mDate = mDATE;
	}
	public String getuserID() {
		return userID;
	}
	public String getpassword() {
		return password;
	}
	public String values() {
		return values;
	}
	public Date mDATE() {
		return mDate;
	}




}
