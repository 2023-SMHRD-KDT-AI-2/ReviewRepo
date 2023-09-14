package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
public class UserFoot {
	private String user_id;
	private String foot_size;
	private String foot_width;
	private String foot_height;
	private String foot_flat;

}
