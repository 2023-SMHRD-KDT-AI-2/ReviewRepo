package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {

	
	private String user_id;
	private String pro_id;
	private int pro_volume;
	private String add_time;
}
