local api =	vim.api;

local M = {};

M.colors = {
	red=			'#f92672';
	darkred=		'#79092f';
	lightmagenta=	'#c72c77';


	brown=			'#ff8080';

 	yellow=			'#ceb489';
	lightyellow=	'#e6db74';

    darkgreen=		'#088001';
	green=			'#46830c';
    seagreen=		'#5e8b56';

	lightblue=		'#3a8998';
    blue=			'#3f76ce';
	slateblue=		'#106474';
	darkblue =		'#204a87';
	cobalt=			"#243955";

    cyan=			'#a1efe4';
    lightcyan=		'#66d9ef';
	specialcyan=    '#078c8c';

	lightpurple=	'#ff80ff';
	violet=			'#8f40ff';

	white=			'#f8f8f2';
    lightgray=		'#adafaf';
    gray=			'#7d7d7d';
    darkgray=		'#434343';
	offblack=		'#303044';
	shaddow=		'#272822';
    black=			'#222222';

	none=			'NONE';
}

M.stylings = {
	i =				'italic';
	italic =		'italic';
	b =				'bold';
	bold =			'bold';
	bi=				'bold,italic';
	bold_italic=	'bold,italic';
	underline =		'underline';
	u =				'underline';
	reverse=		'reverse';
	r=				'reverse';
	rb=				'reverse,bold';
}

function M.highlight(group, style)
	local gui = style.gui and 'gui=' .. style.gui or 'gui=NONE'
	local fg  = style.fg  and 'guifg='  .. style.fg  or 'guifg=NONE'
	local bg  = style.bg  and 'guibg='  .. style.bg  or 'guibg=NONE'
	local sp  = style.sp  and 'guisp='  .. style.sp  or ''
	api.nvim_command('hi ' .. group .. ' ' .. gui .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end



function M.load_colors()
	local colors = M.colors
	local styles = M.stylings
	local syntax = {



		--Screen tooling
		ColorColumn=	{fg=colors.none,			bg=colors.black,	gui=colors.none};
		CursorColumn=	{fg=colors.none,			bg=colors.offblack, gui=colors.none};
		Cursor=			{fg=colors.shadow,			bg=colors.white,	gui=colors.none};
		CursorLine=		{							bg=colors.offblack					};
		CursorLineNr=	{fg=colors.slateblue,							gui=styles.bold};
		IncSearch=		{fg=colors.yellow,			bg=colors.black,	gui=styles.r};
		LineNr=			{fg=colors.slateblue,											};
		MatchParen=		{fg=colors.red,				bg=colors.none,		gui=styles.underline};
		Pmenu=			{fg=colors.none,			bg=colors.none,		gui=colors.none};
		PmenuSel=		{fg=colors.none,			bg=colors.darkgray, gui=colors.none};
		Search=			{fg=colors.white,			bg=colors.darkblue, gui=colors.none};
		SignColumn=		{																};
		StatusLine=		{fg=colors.white,			bg=colors.gray,		gui=styles.bold};
		StatusLineNC=	{fg=colors.white,			bg=colors.none,		gui=colors.none};
		TabLine=		{																};
		Visual=			{fg=colors.none,			bg=colors.darkgray, gui=colors.none};
		WinSeparator=	{fg=colors.blue,			bg=colors.none,		gui=colors.none};

		-- Diff Stuff
		DiffAdd=		{fg=colors.white,			bg=colors.green,	gui=styles.bold};
		DiffChange=		{fg=colors.white,			bg=colors.cobalt,	gui=colors.none};
		DiffDelete=		{fg=colors.darkred,			bg=colors.none,		gui=colors.none};
		DiffText=		{fg=colors.white,			bg=colors.darkblue, gui=styles.bold};

		-- Messages
		ErrorMsg=		{fg=colors.white,			bg=colors.red,		gui=colors.none};
		WarningMsg=		{fg=colors.white,			bg=colors.brown,		gui=colors.none};

		-- Text types
		Boolean=		{fg=colors.lightpurple,		bg=colors.none,		gui=colors.none};
		Character=		{fg=colors.lightpurple,		bg=colors.none,		gui=colors.none};
		Comment=		{fg=colors.darkgreen,		bg=colors.none,		gui=colors.none};
		Conditional=	{fg=colors.red,				bg=colors.none,		gui=styles.i};
		Constant=		{fg=colors.lightpurple,		bg=colors.none,		gui=colors.none};
		Define=			{fg=colors.red,				bg=colors.none,		gui=colors.none};
		Directory=		{fg=colors.violet,			bg=colors.none,		gui=colors.none};
		Float=			{fg=colors.lightpurple,		bg=colors.none,		gui=colors.none};
		Folded=			{fg=colors.gray,			bg=colors.shadow,	gui=colors.none};
		Function=		{fg=colors.lightmagenta,	bg=colors.none,		gui=colors.none};
		Identifier=		{fg=colors.lightcyan,		bg=colors.none,		gui=styles.italic};
		Keyword=		{fg=colors.specialcyan,		bg=colors.none,		gui=styles.bold};
		Label=			{fg=colors.lightyellow,		bg=colors.none,		gui=colors.none};
		NonText=		{fg=colors.none,			bg=colors.none,		gui=colors.none};
		Normal=			{fg=colors.lightgray,		bg=colors.none,		gui=colors.none};
		Number=			{fg=colors.lightpurple,		bg=colors.none,		gui=colors.none};
		Operator=		{fg=colors.lightmagenta,	bg=colors.none,		gui=colors.none};
		PreProc=		{fg=colors.violet,			bg=colors.none,		gui=colors.none};
		SpecialComment=	{fg=colors.gray,			bg=colors.none,		gui=colors.none};
		Special=		{fg=colors.specialcyan,		bg=colors.none,		gui=colors.none};
		SpecialKey=		{fg=colors.darkgray,		bg=colors.offblack, gui=colors.none};
		Statement=		{fg=colors.lightblue,		bg=colors.none,		gui=colors.none};
		StorageClass=	{fg=colors.lightcyan,		bg=colors.none,		gui=styles.italic};
		String=			{fg=colors.seagreen,		bg=colors.none,		gui=colors.none};
		Tag=			{fg=colors.red,				bg=colors.none,		gui=colors.none};
		Title=			{fg=colors.white,			bg=colors.none,		gui=styles.bold};
		Todo=			{fg=colors.gray,			bg=colors.red,		gui=styles.rb};
 		Type=			{fg=colors.blue,			bg=colors.none,		gui=colors.none};
		Underlined=		{fg=colors.none,			bg=colors.none,		gui=styles.underline};
		Whitespace=		{fg=colors.darkgray											};

		-- Diagnostics
		DiagnosticError=			{fg=colors.red,		bg=colors.offblack};
		DiagnosticHint=				{fg=colors.cyan,	bg=colors.offblack};
		DiagnosticInfo=				{fg=colors.white,	bg=colors.offblack};
		DiagnosticWarn=				{fg=colors.brown,	bg=colors.offblack};
		DiagnosticUnnecessary=		{fg=colors.darkgray,					gui=styles.u};

		DiagnosticSignError =		{fg=colors.red,		bg=colors.none};
		DiagnosticSignHint =		{fg=colors.cyan,	bg=colors.none};
		DiagnosticSignInfo =		{fg=colors.white,	bg=colors.none};
		DiagnosticSignWarn =		{fg=colors.brown,	bg=colors.none};

		DiagnosticVirtualTextError= {fg=colors.red,		bg=colors.none};
		DiagnosticVirtualTextHint=  {fg=colors.cyan,	bg=colors.none};
		DiagnosticVirtualTextInfo=  {fg=colors.white,	bg=colors.none};
		DiagnosticVirtualTextWarn=  {fg=colors.brown,	bg=colors.none};

		-- adjustments


		-- Supported Plugins:
		--
		-- GitGutter
		GitGutterAdd=		{fg=colors.darkgreen};
		GitGutterChange=	{fg=colors.cobalt};
		GitGutterDelete=	{fg=colors.darkred};

		-- Fugitive
		diffOldFile= {fg=colors.darkred};
		diffNewFile= {fg=colors.darkgreen};

		diffAdded=		{fg=colors.seagreen };
		diffRemoved=	{fg=colors.darkred };
		gitDiff=		{fg=colors.grey };

		-- LangStuff, Push this to other places probably
		RustInlay = {fg=colors.gray};
		pythonEscape = {fg="#ae81ff"};

	}
	-- Treesitter stuff
	-- TODO: 
	-- FIXME:
	syntax["@attribute.zig"] = {fg=colors.violet};
	syntax["@lsp.type.operator.zig"] = {fg=colors.lightmagenta};
	syntax["@text.todo"] = {bg=colors.green,		fg=colors.black,		gui=colors.none}
	syntax["@text.danger"] = {fg=colors.gray,			bg=colors.red,		gui=styles.rb}
	return syntax
end

function M.colorscheme()
	--api.nvim_command('hi clear')
	if vim.fn.exists('syntax_on') then
		api.nvim_command('syntax reset')
	end
	-- This is a dark background
	vim.o.background = 'dark'
	vim.o.termguicolors = true
	vim.g.colors_name = 'monocle'
	local syntax = M.load_colors()
	for group,style in pairs(syntax) do
		M.highlight(group, style)
	end
end

M.colorscheme()

return M

