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
	private String pro_price;
	private String pro_color;
	private String pro_gender;
	private String pro_material;
	private String pro_cost;
	private String pro_time;
	
	
}
