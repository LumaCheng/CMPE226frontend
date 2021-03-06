package com.cmpe226.Model;
import java.util.*;

public class Course {
	  private int ID;
	  private String session;
	  private String coursename;
	  private String description;
	  private List<Integer> pre;
	  
	  public int getID() {
		  return ID;
	  }
	  public void setID(int ID) {
		  this.ID = ID;
	  }
	  public String getSession() {
		  return session;
	  }
	  public void setSession(String session) {
		  this.session = session;
	  }
	  public String getCoursename() {
		  return coursename;
	  }
	  public void setCoursename(String coursename) {
		  this.coursename = coursename;
	  }
	  public String getDescription() {
		  return description;
	  }
	  public void setDescription(String description) {
		  this.description = description;
	  }
	  
	  public List<Integer> getPre() {
		  return pre;
	  }
	  public void setDescription(Integer id) {
		  this.pre.add(id);
	  }
	  
	  public Course(int i, String s, String c, String d) {
		  this.ID = i;
		  this.session = s;
		  this.coursename = c;
		  this.description = d;
		  this.pre = new ArrayList<>();
	  }
}
