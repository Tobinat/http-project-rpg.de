class MAV_ctrlEdit: MAV_ctrlDefaultText
{
	type = CT_EDIT; // Type

	colorBackground[] = {COLOR_OVERLAY_RGBA}; // Background color

	text = ""; // Displayed text
	colorText[] = {COLOR_TEXT_RGBA}; // Text and frame color
	colorDisabled[] = {COLOR_TEXT_RGB,0.25}; // Disabled text and frame color
	colorSelection[] = {COLOR_ACTIVE_RGBA}; // Text selection color

	canModify = 1; // True (1) to allow text editing, 0 to disable it
	autocomplete = ""; // Text autocomplete, can be "scripting" (scripting commands) or "general" (previously typed text)
	//maxChars = -1; // Max number of characters

	onCanDestroy = "";
	onDestroy = "";
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
};
class MAV_ctrlEditMulti: MAV_ctrlEdit
{
	style = ST_MULTI;
};
