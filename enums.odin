package imgui;

Draw_Flags :: enum i32 {
	None                    = 0,
	Closed                  = 1 << 0,
	RoundCornersTopLeft     = 1 << 4,
	RoundCornersTopRight    = 1 << 5,
	RoundCornersBottomLeft  = 1 << 6,
	RoundCornersBottomRight = 1 << 7,
	RoundCornersNone        = 1 << 8,
	RoundCornersTop         = RoundCornersTopLeft | RoundCornersTopRight,
	RoundCornersBottom      = RoundCornersBottomLeft | RoundCornersBottomRight,
	RoundCornersLeft        = RoundCornersBottomLeft | RoundCornersTopLeft,
	RoundCornersRight       = RoundCornersBottomRight | RoundCornersTopRight,
	RoundCornersAll         = RoundCornersTopLeft | RoundCornersTopRight | RoundCornersBottomLeft | RoundCornersBottomRight,
	RoundCornersDefault     = RoundCornersAll,
	RoundCornersMask        = RoundCornersAll | RoundCornersNone,
}

Draw_List_Flags :: enum i32 {
	None                   = 0,
	AntiAliasedLines       = 1 << 0,
	AntiAliasedLinesUseTex = 1 << 1,
	AntiAliasedFill        = 1 << 2,
	AllowVtxOffset         = 1 << 3,
}

Font_Atlas_Flags :: enum i32 {
	None               = 0,
	NoPowerOfTwoHeight = 1 << 0,
	NoMouseCursors     = 1 << 1,
	NoBakedLines       = 1 << 2,
}

Backend_Flags :: enum i32 {
	None                 = 0,
	HasGamepad           = 1 << 0,
	HasMouseCursors      = 1 << 1,
	HasSetMousePos       = 1 << 2,
	RendererHasVtxOffset = 1 << 3,
}

Button_Flags :: enum i32 {
	None               = 0,
	MouseButtonLeft    = 1 << 0,
	MouseButtonRight   = 1 << 1,
	MouseButtonMiddle  = 1 << 2,
	MouseButtonMask    = MouseButtonLeft | MouseButtonRight | MouseButtonMiddle,
	MouseButtonDefault = MouseButtonLeft,
}

Col :: enum i32 {
	Text                  = 0,
	TextDisabled          = 1,
	WindowBg              = 2,
	ChildBg               = 3,
	PopupBg               = 4,
	Border                = 5,
	BorderShadow          = 6,
	FrameBg               = 7,
	FrameBgHovered        = 8,
	FrameBgActive         = 9,
	TitleBg               = 10,
	TitleBgActive         = 11,
	TitleBgCollapsed      = 12,
	MenuBarBg             = 13,
	ScrollbarBg           = 14,
	ScrollbarGrab         = 15,
	ScrollbarGrabHovered  = 16,
	ScrollbarGrabActive   = 17,
	CheckMark             = 18,
	SliderGrab            = 19,
	SliderGrabActive      = 20,
	Button                = 21,
	ButtonHovered         = 22,
	ButtonActive          = 23,
	Header                = 24,
	HeaderHovered         = 25,
	HeaderActive          = 26,
	Separator             = 27,
	SeparatorHovered      = 28,
	SeparatorActive       = 29,
	ResizeGrip            = 30,
	ResizeGripHovered     = 31,
	ResizeGripActive      = 32,
	Tab                   = 33,
	TabHovered            = 34,
	TabActive             = 35,
	TabUnfocused          = 36,
	TabUnfocusedActive    = 37,
	PlotLines             = 38,
	PlotLinesHovered      = 39,
	PlotHistogram         = 40,
	PlotHistogramHovered  = 41,
	TableHeaderBg         = 42,
	TableBorderStrong     = 43,
	TableBorderLight      = 44,
	TableRowBg            = 45,
	TableRowBgAlt         = 46,
	TextSelectedBg        = 47,
	DragDropTarget        = 48,
	NavHighlight          = 49,
	NavWindowingHighlight = 50,
	NavWindowingDimBg     = 51,
	ModalWindowDimBg      = 52,
	Count                 = 53,
}

Color_Edit_Flags :: enum i32 {
	None             = 0,
	NoAlpha          = 1 << 1,
	NoPicker         = 1 << 2,
	NoOptions        = 1 << 3,
	NoSmallPreview   = 1 << 4,
	NoInputs         = 1 << 5,
	NoTooltip        = 1 << 6,
	NoLabel          = 1 << 7,
	NoSidePreview    = 1 << 8,
	NoDragDrop       = 1 << 9,
	NoBorder         = 1 << 10,
	AlphaBar         = 1 << 16,
	AlphaPreview     = 1 << 17,
	AlphaPreviewHalf = 1 << 18,
	Hdr              = 1 << 19,
	DisplayRgb       = 1 << 20,
	DisplayHsv       = 1 << 21,
	DisplayHex       = 1 << 22,
	Uint8            = 1 << 23,
	Float            = 1 << 24,
	PickerHueBar     = 1 << 25,
	PickerHueWheel   = 1 << 26,
	InputRgb         = 1 << 27,
	InputHsv         = 1 << 28,
	OptionsDefault   = Uint8 | DisplayRgb | InputRgb | PickerHueBar,
	DisplayMask      = DisplayRgb | DisplayHsv | DisplayHex,
	DataTypeMask     = Uint8 | Float,
	PickerMask       = PickerHueWheel | PickerHueBar,
	InputMask        = InputRgb | InputHsv,
}

Combo_Flags :: enum i32 {
	None           = 0,
	PopupAlignLeft = 1 << 0,
	HeightSmall    = 1 << 1,
	HeightRegular  = 1 << 2,
	HeightLarge    = 1 << 3,
	HeightLargest  = 1 << 4,
	NoArrowButton  = 1 << 5,
	NoPreview      = 1 << 6,
	HeightMask     = HeightSmall | HeightRegular | HeightLarge | HeightLargest,
}

Cond :: enum i32 {
	None         = 0,
	Always       = 1 << 0,
	Once         = 1 << 1,
	FirstUseEver = 1 << 2,
	Appearing    = 1 << 3,
}

Config_Flags :: enum i32 {
	None                 = 0,
	NavEnableKeyboard    = 1 << 0,
	NavEnableGamepad     = 1 << 1,
	NavEnableSetMousePos = 1 << 2,
	NavNoCaptureKeyboard = 1 << 3,
	NoMouse              = 1 << 4,
	NoMouseCursorChange  = 1 << 5,
	IsSrgb               = 1 << 20,
	IsTouchScreen        = 1 << 21,
}

Data_Type :: enum i32 {
	S8     = 0,
	U8     = 1,
	S16    = 2,
	U16    = 3,
	S32    = 4,
	U32    = 5,
	S64    = 6,
	U64    = 7,
	Float  = 8,
	Double = 9,
	Count  = 10,
}

Dir :: enum i32 {
	None  = -1,
	Left  = 0,
	Right = 1,
	Up    = 2,
	Down  = 3,
	Count = 4,
}

Drag_Drop_Flags :: enum i32 {
	None                     = 0,
	SourceNoPreviewTooltip   = 1 << 0,
	SourceNoDisableHover     = 1 << 1,
	SourceNoHoldToOpenOthers = 1 << 2,
	SourceAllowNullId        = 1 << 3,
	SourceExtern             = 1 << 4,
	SourceAutoExpirePayload  = 1 << 5,
	AcceptBeforeDelivery     = 1 << 10,
	AcceptNoDrawDefaultRect  = 1 << 11,
	AcceptNoPreviewTooltip   = 1 << 12,
	AcceptPeekOnly           = AcceptBeforeDelivery | AcceptNoDrawDefaultRect,
}

Focused_Flags :: enum i32 {
	None                = 0,
	ChildWindows        = 1 << 0,
	RootWindow          = 1 << 1,
	AnyWindow           = 1 << 2,
	RootAndChildWindows = RootWindow | ChildWindows,
}

Hovered_Flags :: enum i32 {
	None                         = 0,
	ChildWindows                 = 1 << 0,
	RootWindow                   = 1 << 1,
	AnyWindow                    = 1 << 2,
	AllowWhenBlockedByPopup      = 1 << 3,
	AllowWhenBlockedByActiveItem = 1 << 5,
	AllowWhenOverlapped          = 1 << 6,
	AllowWhenDisabled            = 1 << 7,
	RectOnly                     = AllowWhenBlockedByPopup | AllowWhenBlockedByActiveItem | AllowWhenOverlapped,
	RootAndChildWindows          = RootWindow | ChildWindows,
}

Input_Text_Flags :: enum i32 {
	None                = 0,
	CharsDecimal        = 1 << 0,
	CharsHexadecimal    = 1 << 1,
	CharsUppercase      = 1 << 2,
	CharsNoBlank        = 1 << 3,
	AutoSelectAll       = 1 << 4,
	EnterReturnsTrue    = 1 << 5,
	CallbackCompletion  = 1 << 6,
	CallbackHistory     = 1 << 7,
	CallbackAlways      = 1 << 8,
	CallbackCharFilter  = 1 << 9,
	AllowTabInput       = 1 << 10,
	CtrlEnterForNewLine = 1 << 11,
	NoHorizontalScroll  = 1 << 12,
	AlwaysOverwrite     = 1 << 13,
	ReadOnly            = 1 << 14,
	Password            = 1 << 15,
	NoUndoRedo          = 1 << 16,
	CharsScientific     = 1 << 17,
	CallbackResize      = 1 << 18,
	CallbackEdit        = 1 << 19,
	Multiline           = 1 << 20,
	NoMarkEdited        = 1 << 21,
}

Key_Mod_Flags :: enum i32 {
	None  = 0,
	Ctrl  = 1 << 0,
	Shift = 1 << 1,
	Alt   = 1 << 2,
	Super = 1 << 3,
}

Key :: enum i32 {
	Tab         = 0,
	LeftArrow   = 1,
	RightArrow  = 2,
	UpArrow     = 3,
	DownArrow   = 4,
	PageUp      = 5,
	PageDown    = 6,
	Home        = 7,
	End         = 8,
	Insert      = 9,
	Delete      = 10,
	Backspace   = 11,
	Space       = 12,
	Enter       = 13,
	Escape      = 14,
	KeyPadEnter = 15,
	A           = 16,
	C           = 17,
	V           = 18,
	X           = 19,
	Y           = 20,
	Z           = 21,
	Count       = 22,
}

Mouse_Button :: enum i32 {
	Left   = 0,
	Right  = 1,
	Middle = 2,
	Count  = 5,
}

Mouse_Cursor :: enum i32 {
	None       = -1,
	Arrow      = 0,
	TextInput  = 1,
	ResizeAll  = 2,
	ResizeNs   = 3,
	ResizeEw   = 4,
	ResizeNesw = 5,
	ResizeNwse = 6,
	Hand       = 7,
	NotAllowed = 8,
	Count      = 9,
}

Nav_Input :: enum i32 {
	Activate      = 0,
	Cancel        = 1,
	Input         = 2,
	Menu          = 3,
	DpadLeft      = 4,
	DpadRight     = 5,
	DpadUp        = 6,
	DpadDown      = 7,
	LstickLeft    = 8,
	LstickRight   = 9,
	LstickUp      = 10,
	LstickDown    = 11,
	FocusPrev     = 12,
	FocusNext     = 13,
	TweakSlow     = 14,
	TweakFast     = 15,
	KeyMenu       = 16,
	KeyLeft       = 17,
	KeyRight      = 18,
	KeyUp         = 19,
	KeyDown       = 20,
	Count         = 21,
	InternalStart = KeyMenu,
}

Popup_Flags :: enum i32 {
	None                    = 0,
	MouseButtonLeft         = 0,
	MouseButtonRight        = 1,
	MouseButtonMiddle       = 2,
	MouseButtonMask         = 0x1F,
	MouseButtonDefault      = 1,
	NoOpenOverExistingPopup = 1 << 5,
	NoOpenOverItems         = 1 << 6,
	AnyPopupId              = 1 << 7,
	AnyPopupLevel           = 1 << 8,
	AnyPopup                = AnyPopupId | AnyPopupLevel,
}

Selectable_Flags :: enum i32 {
	None             = 0,
	DontClosePopups  = 1 << 0,
	SpanAllColumns   = 1 << 1,
	AllowDoubleClick = 1 << 2,
	Disabled         = 1 << 3,
	AllowItemOverlap = 1 << 4,
}

Slider_Flags :: enum i32 {
	None            = 0,
	AlwaysClamp     = 1 << 4,
	Logarithmic     = 1 << 5,
	NoRoundToFormat = 1 << 6,
	NoInput         = 1 << 7,
	InvalidMask     = 0x7000000F,
}

Sort_Direction :: enum i32 {
	None       = 0,
	Ascending  = 1,
	Descending = 2,
}

Style_Var :: enum i32 {
	Alpha               = 0,
	WindowPadding       = 1,
	WindowRounding      = 2,
	WindowBorderSize    = 3,
	WindowMinSize       = 4,
	WindowTitleAlign    = 5,
	ChildRounding       = 6,
	ChildBorderSize     = 7,
	PopupRounding       = 8,
	PopupBorderSize     = 9,
	FramePadding        = 10,
	FrameRounding       = 11,
	FrameBorderSize     = 12,
	ItemSpacing         = 13,
	ItemInnerSpacing    = 14,
	IndentSpacing       = 15,
	CellPadding         = 16,
	ScrollbarSize       = 17,
	ScrollbarRounding   = 18,
	GrabMinSize         = 19,
	GrabRounding        = 20,
	TabRounding         = 21,
	ButtonTextAlign     = 22,
	SelectableTextAlign = 23,
	Count               = 24,
}

Tab_Bar_Flags :: enum i32 {
	None                         = 0,
	Reorderable                  = 1 << 0,
	AutoSelectNewTabs            = 1 << 1,
	TabListPopupButton           = 1 << 2,
	NoCloseWithMiddleMouseButton = 1 << 3,
	NoTabListScrollingButtons    = 1 << 4,
	NoTooltip                    = 1 << 5,
	FittingPolicyResizeDown      = 1 << 6,
	FittingPolicyScroll          = 1 << 7,
	FittingPolicyMask            = FittingPolicyResizeDown | FittingPolicyScroll,
	FittingPolicyDefault         = FittingPolicyResizeDown,
}

Tab_Item_Flags :: enum i32 {
	None                         = 0,
	UnsavedDocument              = 1 << 0,
	SetSelected                  = 1 << 1,
	NoCloseWithMiddleMouseButton = 1 << 2,
	NoPushId                     = 1 << 3,
	NoTooltip                    = 1 << 4,
	NoReorder                    = 1 << 5,
	Leading                      = 1 << 6,
	Trailing                     = 1 << 7,
}

Table_Bg_Target :: enum i32 {
	None   = 0,
	RowBg0 = 1,
	RowBg1 = 2,
	CellBg = 3,
}

Table_Column_Flags :: enum i32 {
	None                 = 0,
	DefaultHide          = 1 << 0,
	DefaultSort          = 1 << 1,
	WidthStretch         = 1 << 2,
	WidthFixed           = 1 << 3,
	NoResize             = 1 << 4,
	NoReorder            = 1 << 5,
	NoHide               = 1 << 6,
	NoClip               = 1 << 7,
	NoSort               = 1 << 8,
	NoSortAscending      = 1 << 9,
	NoSortDescending     = 1 << 10,
	NoHeaderWidth        = 1 << 11,
	PreferSortAscending  = 1 << 12,
	PreferSortDescending = 1 << 13,
	IndentEnable         = 1 << 14,
	IndentDisable        = 1 << 15,
	IsEnabled            = 1 << 20,
	IsVisible            = 1 << 21,
	IsSorted             = 1 << 22,
	IsHovered            = 1 << 23,
	WidthMask            = WidthStretch | WidthFixed,
	IndentMask           = IndentEnable | IndentDisable,
	StatusMask           = IsEnabled | IsVisible | IsSorted | IsHovered,
	NoDirectResize       = 1 << 30,
}

Table_Flags :: enum i32 {
	None                       = 0,
	Resizable                  = 1 << 0,
	Reorderable                = 1 << 1,
	Hideable                   = 1 << 2,
	Sortable                   = 1 << 3,
	NoSavedSettings            = 1 << 4,
	ContextMenuInBody          = 1 << 5,
	RowBg                      = 1 << 6,
	BordersInnerH              = 1 << 7,
	BordersOuterH              = 1 << 8,
	BordersInnerV              = 1 << 9,
	BordersOuterV              = 1 << 10,
	BordersH                   = BordersInnerH | BordersOuterH,
	BordersV                   = BordersInnerV | BordersOuterV,
	BordersInner               = BordersInnerV | BordersInnerH,
	BordersOuter               = BordersOuterV | BordersOuterH,
	Borders                    = BordersInner | BordersOuter,
	NoBordersInBody            = 1 << 11,
	NoBordersInBodyUntilResize = 1 << 12,
	SizingFixedFit             = 1 << 13,
	SizingFixedSame            = 2 << 13,
	SizingStretchProp          = 3 << 13,
	SizingStretchSame          = 4 << 13,
	NoHostExtendX              = 1 << 16,
	NoHostExtendY              = 1 << 17,
	NoKeepColumnsVisible       = 1 << 18,
	PreciseWidths              = 1 << 19,
	NoClip                     = 1 << 20,
	PadOuterX                  = 1 << 21,
	NoPadOuterX                = 1 << 22,
	NoPadInnerX                = 1 << 23,
	ScrollX                    = 1 << 24,
	ScrollY                    = 1 << 25,
	SortMulti                  = 1 << 26,
	SortTristate               = 1 << 27,
	SizingMask                 = SizingFixedFit | SizingFixedSame | SizingStretchProp | SizingStretchSame,
}

Table_Row_Flags :: enum i32 {
	None    = 0,
	Headers = 1 << 0,
}

Tree_Node_Flags :: enum i32 {
	None                 = 0,
	Selected             = 1 << 0,
	Framed               = 1 << 1,
	AllowItemOverlap     = 1 << 2,
	NoTreePushOnOpen     = 1 << 3,
	NoAutoOpenOnLog      = 1 << 4,
	DefaultOpen          = 1 << 5,
	OpenOnDoubleClick    = 1 << 6,
	OpenOnArrow          = 1 << 7,
	Leaf                 = 1 << 8,
	Bullet               = 1 << 9,
	FramePadding         = 1 << 10,
	SpanAvailWidth       = 1 << 11,
	SpanFullWidth        = 1 << 12,
	NavLeftJumpsBackHere = 1 << 13,
	CollapsingHeader     = Framed | NoTreePushOnOpen | NoAutoOpenOnLog,
}

Viewport_Flags :: enum i32 {
	None              = 0,
	IsPlatformWindow  = 1 << 0,
	IsPlatformMonitor = 1 << 1,
	OwnedByApp        = 1 << 2,
}

Window_Flags :: enum i32 {
	None                      = 0,
	NoTitleBar                = 1 << 0,
	NoResize                  = 1 << 1,
	NoMove                    = 1 << 2,
	NoScrollbar               = 1 << 3,
	NoScrollWithMouse         = 1 << 4,
	NoCollapse                = 1 << 5,
	AlwaysAutoResize          = 1 << 6,
	NoBackground              = 1 << 7,
	NoSavedSettings           = 1 << 8,
	NoMouseInputs             = 1 << 9,
	MenuBar                   = 1 << 10,
	HorizontalScrollbar       = 1 << 11,
	NoFocusOnAppearing        = 1 << 12,
	NoBringToFrontOnFocus     = 1 << 13,
	AlwaysVerticalScrollbar   = 1 << 14,
	AlwaysHorizontalScrollbar = 1<< 15,
	AlwaysUseWindowPadding    = 1 << 16,
	NoNavInputs               = 1 << 18,
	NoNavFocus                = 1 << 19,
	UnsavedDocument           = 1 << 20,
	NoNav                     = NoNavInputs | NoNavFocus,
	NoDecoration              = NoTitleBar | NoResize | NoScrollbar | NoCollapse,
	NoInputs                  = NoMouseInputs | NoNavInputs | NoNavFocus,
	NavFlattened              = 1 << 23,
	ChildWindow               = 1 << 24,
	Tooltip                   = 1 << 25,
	Popup                     = 1 << 26,
	Modal                     = 1 << 27,
	ChildMenu                 = 1 << 28,
}

