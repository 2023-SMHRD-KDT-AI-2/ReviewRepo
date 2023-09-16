package com.smhrd.bannerModel;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BannerRecommendList {

	private String productName;
    private int productPrice;
    private String img1Path;
}
