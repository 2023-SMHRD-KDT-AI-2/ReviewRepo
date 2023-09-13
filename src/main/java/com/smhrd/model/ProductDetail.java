package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetail {
	private String pro_id;
	private String pro_name;
	private String pro_category;
	private String pro_brand;
	private String pro_info;
	private int pro_price;
	private String pro_material;
	
}
