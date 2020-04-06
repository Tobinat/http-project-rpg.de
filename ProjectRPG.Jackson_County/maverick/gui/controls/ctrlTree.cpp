class MAV_ctrlTree: MAV_ctrlDefaultText
{
	type = CT_TREE; // Type

	colorBorder[] = {0,0,0,0}; // Frame color
	colorLines[] = {0,0,0,0}; // Structure line color

	colorBackground[] = {0,0,0,0.2};
	colorSelect[] = {1,0.5,0,0.5}; // Selected item fill color (when multiselectEnabled is 0)
	colorSelectBackground[] = {0, 0, 0, 0};
	colorMarked[] = {1,0.5,0,0.5}; // Marked item fill color (when multiselectEnabled is 1)
	colorMarkedSelected[] = {1,0.5,0,1};  // Selected item fill color (when multiselectEnabled is 1)

	colorText[] = {COLOR_TEXT_RGBA}; // Text color
	colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
	colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)

	colorSearch[] = {COLOR_ACTIVE_RGBA}; // Text color of highlighted search phrase

	colorPicture[] = {1, 1, 1, 1};			//Color of picture on the left when item is unselected.
	colorPictureSelected[] = {1, 1, 1, 1};		//Color of picture on the left when item is selected.
	colorPictureDisabled[] = {1, 1, 1, 0.25};	//Color of picture on the left when item is disabled.

	colorPictureRight[] = {1, 1, 1, 1};		//Color of picture on the right when item is unselected.
	colorPictureRightSelected[] = {1, 1, 1, 1};	//Color of picture on the right when item is selected.
	colorPictureRightDisabled[] = {1, 1, 1, 0.25};	//Color of picture on the right when item is disabled.

	multiselectEnabled = 0; // Allow selecting multiple items while holding Ctrl or Shift
	expandOnDoubleclick = 1; // Expand/collapse item upon double-click
	hiddenTexture = "\a3\3DEN\Data\Controls\ctrlTree\hiddenTexture_ca.paa"; // Expand icon
	expandedTexture = "\a3\3DEN\Data\Controls\ctrlTree\expandedTexture_ca.paa"; // Collapse icon
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it
	disableKeyboardSearch = 0; // 1 to disable searching by typing

	// Scrollbar configuration
	class ScrollBar: ScrollBar
	{
		scrollSpeed = 0.05;
	};

	colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

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

	onTreeSelChanged = "";
	onTreeLButtonDown = "";
	onTreeDblClick = "";
	onTreeExpanded = "";
	onTreeCollapsed = "";
	//onTreeMouseMove = ""; // Causing CTD
	//onTreeMouseHold = ""; // Causing CTD
	onTreeMouseExit = "";
};
