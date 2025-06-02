function oOpp_rotation(target_angle, angle_per_frame){
	var midline = image_angle + 180
	if target_angle < midline {
		if abs(target_angle - image_angle) < angle_per_frame {
			image_angle = target_angle
		} else {
			image_angle -= angle_per_frame
		}
	} else if target_angle >= midline {
		if abs(target_angle - image_angle) < angle_per_frame {
			image_angle = target_angle
		} else { 
			image_angle += angle_per_frame
		}
	}
}