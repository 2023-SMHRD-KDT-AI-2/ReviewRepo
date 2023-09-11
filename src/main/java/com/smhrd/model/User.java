package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_gender;
	private String age;
	private String address;
	private String phone;
	private String email;
	private String join_date;
	

}
