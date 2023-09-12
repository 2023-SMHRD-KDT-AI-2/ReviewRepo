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
	
	private String user_email;
	private String user_name;
	private String user_id;
	private String user_pw;
	private String user_foot;
	private String user_shose;
	private String user_gender;

}
