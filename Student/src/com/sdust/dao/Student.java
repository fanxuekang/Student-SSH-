package com.sdust.dao;

public class Student {
private String SNo;
private String SName;
private String SClass;
private String SSex;
private String SEmail;
private String STel;
private String SUsername;
private String SPassword;

public Student() {
	this.SUsername="111";
}
public String getSNo() {
	return SNo;
}
public void setSNo(String sNo) {
	SNo = sNo;
}
public String getSName() {
	return SName;
}
public void setSName(String sName) {
	SName = sName;
}
public String getSClass() {
	return SClass;
}
public void setSClass(String sClass) {
	SClass = sClass;
}
public String getSSex() {
	return SSex;
}
public void setSSex(String sSex) {
	SSex = sSex;
}
public String getSEmail() {
	return SEmail;
}
public void setSEmail(String sEmail) {
	SEmail = sEmail;
}
public String getSTel() {
	return STel;
}
public void setSTel(String sTel) {
	STel = sTel;
}
public String getSUsername() {
	return SUsername;
}
public void setSUsername(String sUsername) {
	SUsername = sUsername;
}
public String getSPassword() {
	return SPassword;
}
public void setSPassword(String sPassword) {
	SPassword = sPassword;
}

}
