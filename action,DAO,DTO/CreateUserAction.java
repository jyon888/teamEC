package com.internousdev.panther.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class CreateUserAction extends ActionSupport implements SessionAware{
	private String backFlag;
	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String sex;
	private String email;
	private String userIdForCreateUser;
	private Map<String,Object>session;
	public String execute(){
		if(!session.containsKey("tempUserId")){
			return "sessionTimeout";
		}

		if(backFlag==null){
			session.remove("familyName");
			session.remove("firstName");
			session.remove("familyNameKana");
			session.remove("firstNameKana");
			session.remove("sex");
			session.remove("sexList");
			session.remove("email");
			session.remove("userIdForCreateUser");
			session.remove("password");
		}else{
			try{
				familyName = String.valueOf(session.get("familyName"));
				firstName = String.valueOf(session.get("firstName"));
				familyNameKana = String.valueOf(session.get("familyNameKana"));
				firstNameKana = String.valueOf(session.get("firstNameKana"));
				sex = String.valueOf(session.get("sex"));
				email = String.valueOf(session.get("email"));
				userIdForCreateUser = String.valueOf(session.get("userIdForCreateUser"));
			}catch(NullPointerException e){
				e.printStackTrace();
			}

		}
		List<String> sexList=new ArrayList<String>();

		if(!session.containsKey("sex")){
			session.put("sex","男性");
		}else{
			session.put("sex",String.valueOf(session.get("sex")));
		}
		sexList.add("男性");
		sexList.add("女性");
		session.put("sexList",sexList);

		return SUCCESS;
	}

	public String getBackFlag() {
		return backFlag;
	}
	public void setBackFlag(String backFlag) {
		this.backFlag = backFlag;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getFamilyNameKana() {
		return familyNameKana;
	}

	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}

	public String getFirstNameKana() {
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana = firstNameKana;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserIdForCreateUser() {
		return userIdForCreateUser;
	}

	public void setUserIdForCreateUser(String userIdForCreateUser) {
		this.userIdForCreateUser = userIdForCreateUser;
	}

}
