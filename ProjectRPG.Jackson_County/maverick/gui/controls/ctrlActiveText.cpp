class MAV_ctrlActiveText: MAV_ctrlDefaultButton
{
	type = CT_ACTIVETEXT; // Type

	text = ""; // Displayed text
	color[] = {COLOR_ACTIVE_RGB,0.75}; // Text color
	colorActive[] = {COLOR_ACTIVE_RGBA};  // Active text color
	colorDisabled[] = {COLOR_ACTIVE_RGBA};  // Disabled text color

	onCanDestroy = "";
	onDestroy = "";
	onMouseEnter = "";
	onMouseExit = "";
	onSetFocus = "";
	onKillFocus = "";
	onKeyDown = "";
	onKeyUp = "";
	onMouseButtonDown = "";
	onMouseButtonUp = "";
	onMouseButtonClick = "";
	onMouseButtonDblClick = "";
	onMouseZChanged = "";
	onMouseMoving = "";
	onMouseHolding = "";

	onButtonClick = "";
	onButtonDown = "";
	onButtonUp = "";
};
class MAV_ctrlActivePicture: MAV_ctrlActiveText
{
	style = ST_PICTURE;
	color[] = {COLOR_TEXT_RGBA};
};
class MAV_ctrlActivePictureKeepAspect: MAV_ctrlActiveText
{
	style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};
