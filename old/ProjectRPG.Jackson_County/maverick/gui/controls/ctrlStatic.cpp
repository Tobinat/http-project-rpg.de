class MAV_ctrlStatic: MAV_ctrlDefaultText
{
	type = CT_STATIC; // Type

	colorBackground[] = {0,0,0,0}; // Fill color

	text = ""; // Displayed text
	lineSpacing = 1; // When ST_MULTI style is used, this defines distance between lines (1 is text height)
	fixedWidth = 0; // 1 (true) to enable monospace
	colorText[] = {1,1,1,1}; // Text color
	colorShadow[] = {0,0,0,1}; // Text shadow color (used only when shadow is 1)

	moving = 0; // 1 (true) to allow dragging the whole display by the control

	autoplay = 0; // Play video automatically (only for style ST_PICTURE with text pointing to an .ogv file)
	loops = 0; // Number of video repeats (only for style ST_PICTURE with text pointing to an .ogv file)

	tileW = 1; // Number of tiles horizontally (only for style ST_TILE_PICTURE)
	tileH = 1; // Number of tiles vertically (only for style ST_TILE_PICTURE)

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

	onVideoStopped = "";
};
class MAV_ctrlStaticPicture: MAV_ctrlStatic
{
	style = ST_PICTURE;
};
class MAV_ctrlStaticPictureKeepAspect: MAV_ctrlStaticPicture
{
	style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};
class MAV_ctrlStaticPictureTile: MAV_ctrlStatic
{
	style = ST_TILE_PICTURE;
};
class MAV_ctrlStaticFrame: MAV_ctrlStatic
{
	style = ST_FRAME;
};
class MAV_ctrlStaticLine: MAV_ctrlStatic
{
	style = ST_LINE;
};
class MAV_ctrlStaticMulti: MAV_ctrlStatic
{
	style = ST_MULTI + ST_NO_RECT;
};
class MAV_ctrlStaticBackground: MAV_ctrlStatic
{
	colorBackground[] = {0.12,0.14,0.16,0.8};
};
class MAV_ctrlStaticOverlay: MAV_ctrlStatic
{
	colorBackground[] = {COLOR_OVERLAY_RGBA};
};
class MAV_ctrlStaticTitle: MAV_ctrlStatic
{
	moving = 1;
	colorBackground[] = {1,1,1,0.1};
	colorText[] = {1,1,1,1};
	colorShadow[] = {0,0,0,0};
};
class MAV_ctrlStaticFooter: MAV_ctrlStatic
{
	colorBackground[] = {0,0,0,0.3};
};
class MAV_ctrlStaticBackgroundDisable: MAV_ctrlStatic
{
	x = -4;
	y = -2;
	w = 8;
	h = 4;
	colorBackground[] = {1,1,1,0.5};
};
class MAV_ctrlStaticBackgroundDisableTiles: MAV_ctrlStaticPictureTile
{
	x = -4;
	y = -2;
	w = 8;
	h = 4;
	text = "\a3\3DEN\Data\Displays\Display3DENEditAttributes\backgroundDisable_ca.paa";
	tileW = 8 / (32 * pixelW);
	tileH = 4 / (32 * pixelH);
	colorText[] = {1,1,1,0.05};
};
