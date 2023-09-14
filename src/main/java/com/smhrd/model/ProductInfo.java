package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductInfo {
	private String pro_id;
	private String pro_name;
	private int pro_price;
	private int pro_volume;
	private String img1_path;
	
}
