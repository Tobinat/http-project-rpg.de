class MAV_ctrlMenuStrip: MAV_ctrlMenu
{
	type = CT_MENU_STRIP; // New control type macro, number to be selected by programmers

	// Strip and menu colors, see attached picture for description
	colorStripBackground[] = {0,0,0,1};
	colorStripText[] = {COLOR_TEXT_RGBA};
	colorStripSelect[] = {0,0,0,1};
	colorStripSelectBackground[] = {COLOR_ACTIVE_RGBA};
	colorStripDisabled[] = {COLOR_TEXT_RGB,0.25};

	// Strip and context menu options. Can be defined here in config, or added by scripting commands
/*
	class Items
	{
		items[] = {File,Edit}; // Menu strip options (links to classes below)
		class File // Option class, is pointed to by items[] attribute
		{
			text = "File"; // Option display name
			items[] = {New,Separator1,Save,Load}; // Link to other options. When not empty, an arrow will appear
			data = "test1"; // Hidden option data (as in CT_LISTBOX). Detected by scripts or engine functionality.
			value = 1; // Hidden option value (as in CT_LISTBOX)
		};
		class Edit
		{
			text = "Edit";
			items[] = {};
		};
		class SubItem1
		{
			text = "SubItem1";
			picture = "\a3\Ui_f\data\Map\Markers\Military\warning_CA.paa"; // Link to picture displayed in front of the text (as in CT_LISTBOX)
			enable = 0;
			shortcuts[] = {}; // Keyboard shortcut; only the first mentioned is displayed
			action = "systemchat str _this;"; // Expression executed upon clicking. Passed argument is [<control>,<path] (the same as in onMenuClick handler)
		};
		class Separator1
		{
			// When no attributes are set, the option will be non-interactive separator
			// More specific way how to distinguish a separator can be chosen if needed.
		};
		class SubItem2: SubItem1
		{
			text = "SubItem2";
			enable = 1;
			shortcuts[] = {};
		};
		class SubItem3: SubItem2
		{
			text = "SubItem3";
			shortcuts[] = {};

			type = "checkbox"; // Can be "text" (default), "checkbox" or "radio"
			default = 1; // 1 to have item checked by default
		};
	};
*/
};