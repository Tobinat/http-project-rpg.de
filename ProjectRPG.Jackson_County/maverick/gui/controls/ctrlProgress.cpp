class MAV_ctrlProgress: MAV_ctrlDefault
{
	type = CT_PROGRESS; // Type

	texture = "#(argb,8,8,3)color(1,1,1,1)"; // Bar texture
	//colorBar[] = {1,1,1,1}; // Bar color
  colorBar[] = {COLOR_ACTIVE_RGBA};
  colorFrame[] = {0,0,0,1}; // Frame color

	onCanDestroy = "";
	onDestroy = "";
};
