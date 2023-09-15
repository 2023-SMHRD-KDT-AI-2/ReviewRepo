package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PopularRank {

	private String pro_name;
	private String pro_category;
	private int pro_price;
	private int pro_cost;
	private String img_id;
	private String pro_id;
	private String img1_path;
	private String img2_path;
	private String img3_path;
	private String img_time;	
	
	
}
