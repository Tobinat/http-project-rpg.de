class MAV_ctrlToolbox: MAV_ctrlDefaultText
{
	type = CT_TOOLBOX; // Type
	style = ST_CENTER; // Style

	colorText[] = {1,1,1,1}; // Text color
	colorTextSelect[] = {1,1,1,1}; // Selected text color

	rows = 1; // Number of rows
	columns = 1; // Number of columns
	strings[] = {}; // Options (added row by row)
	values[] = {};

	color[] = {1,0,1,1}; // Does nothing, but must be present, otherwise an error is shown
	colorSelect[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorTextDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

	colorBackground[] = {1, 1, 1, 0.05};
	colorSelectedBg[] = {0.99,0.49,0,1};

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

	onToolBoxSelChanged = "";
};
class MAV_ctrlToolboxPicture: MAV_ctrlToolbox
{
	style = ST_CENTER + ST_PICTURE;
};
class MAV_ctrlToolboxPictureKeepAspect: MAV_ctrlToolbox
{
	style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};
