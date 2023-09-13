package com.smhrd.model;

import lombok.AllArgsConstructor;


import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {

	private String pro_id;
	private String pro_name;
	private String pro_category;
	private String pro_brand;
	private String pro_info;
	private int pro_price;
	private String pro_material;
	private int pro_cost;
	private String pro_time;
	
	private String img_id;
	private String img1_path;
//	private String img2_path;
//	private String img3_path;
	
	
}

