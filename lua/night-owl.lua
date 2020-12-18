local nightOwl = {
    gray1      = '#111111',
    gray2      = '#222222',
    gray3      = '#333333',
    gray4      = '#444444',
    gray7      = '#777777',
    graya      = '#aaaaaa',
    white      = '#d6deeb',
    bright     = '#eeeeee',
    bgblue     = '#011627',
    neardark   = '#112630',
    purple     = '#c792ea',
    green      = '#addb67',
    yellow     = '#ecc48d',
    gray       = '#637777',
    blue       = '#82aaff',
    yellow2    = '#f78c6c',
    yellow3    = '#fbec9f',
    yellow4    = '#f4d554',
    green2     = '#7fdbca',
    red        = '#ff5874',
    blue2      = '#5ca7e4',
    purple2    = '#2d2c5d',
    hoki       = '#5f7e97',
    none       = 'NONE',
}

function nightOwl.terminal_color()
    --vim.g.terminal_color_foreground = nightOwl.white
    --vim.g.terminal_color_background = nightOwl.darkblue
    vim.g.terminal_color_0          = nightOwl.darkblue
    vim.g.terminal_color_1          = nightOwl.red
    vim.g.terminal_color_2          = nightOwl.green
    vim.g.terminal_color_3          = nightOwl.yellow2
    vim.g.terminal_color_4          = nightOwl.blue
    vim.g.terminal_color_5          = nightOwl.purple
    vim.g.terminal_color_6          = nightOwl.green2
    vim.g.terminal_color_7          = nightOwl.graya
    vim.g.terminal_color_8          = nightOwl.gray
    vim.g.terminal_color_9          = nightOwl.red
    vim.g.terminal_color_10         = nightOwl.green
    vim.g.terminal_color_11         = nightOwl.yellow2
    vim.g.terminal_color_12         = nightOwl.blue
    vim.g.terminal_color_13         = nightOwl.purple
    vim.g.terminal_color_14         = nightOwl.green2
    vim.g.terminal_color_15         = nightOwl.bright
end

function nightOwl.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or ' '
    local fg = color.fg and ' fg=' .. color.fg or ' fg=NONE'
    local bg = color.bg and 'bg=' .. color.bg or 'bg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
        ' ' .. bg..' '..sp)
end


function nightOwl.load_syntax()
    local syntax                 = {
        Normal                   = {fg=nightOwl.white,   bg=nightOwl.bgblue};
        LineNr                   = {fg=nightOwl.gray4,   bg=nightOwl.bgblue};
        CursorLine               = {bg=nightOwl.neardark};
        CursorLineNr             = {fg=nightOwl.graya,   bg=nightOwl.neardark};
        ColorColumn              = {bg=nightOwl.gray2};
        Directory                = {fg=nightOwl.blue};
        DiffAdd                  = {fg=nightOwl.bgblue,  bg=nightOwl.green};
        DiffChange               = {fg=nightOwl.bgblue,  bg=nightOwl.yellow};
        DiffDelete               = {fg=nightOwl.bgblue,  bg=nightOwl.red };
        DiffText                 = {fg=nightOwl.bgblue,  bg=nightOwl.green};
        diffAdded                = {fg=nightOwl.green};
        diffRemoved              = {fg=nightOwl.red};
        VertSplit                = {fg=nightOwl.gray7};
        Folded                   = {fg=nightOwl.gray7,   bg=nightOwl.bgblue};
        FoldColumn               = {fg=nightOwl.gray3,   bg=nightOwl.bgblue};
        SignColumn               = {fg=nightOwl.none,    bg=nightOwl.bgblue};
        IncSearch                = {fg=nightOwl.bright,  bg=nightOwl.yellow};
        NonText                  = {fg=nightOwl.gray4};
        PMenu                    = {bg=nightOwl.purple2};
        PMenuSel                 = {bg=nightOwl.purple};
        Search                   = {fg=nightOwl.bgblue,  bg=nightOwl.yellow};
        SpecialKey               = {fg=nightOwl.yellow};
        StatusLine               = {fg=nightOwl.bright,  bg=nightOwl.neardark};
        StatusLineNC             = {fg=nightOwl.gray7,   bg=nightOwl.neardark};
        Title                    = {fg=nightOwl.blue};
        Visual                   = {fg=nightOwl.white,   bg=nightOwl.purple2};
        EndOfBuffer              = {fg=nightOwl.gray4,   bg=nightOwl.bgblue };
        Comment                  = {fg=nightOwl.gray,    style='italic'};
        Constant                 = {fg=nightOwl.green};
        String                   = {fg=nightOwl.yellow};
        Identifier               = {fg=nightOwl.green2};
        Statement                = {fg=nightOwl.blue};
        Operator                 = {fg=nightOwl.purple};
        Exception                = {fg=nightOwl.green};
        PreProc                  = {fg=nightOwl.purple};
        Type                     = {fg=nightOwl.green};
        StorageClass             = {fg=nightOwl.purple};
        htmlTag                  = {fg=nightOwl.gray,    bg=nightOwl.none};
        htmlEndTag               = {fg=nightOwl.gray,    bg=nightOwl.none};
        Todo                     = {fg=nightOwl.gray7,   bg=nightOwl.yellow};
        jsStorageClass           = {fg=nightOwl.blue};
        jsOperator               = {fg=nightOwl.purple};
        jsArrowFunction          = {fg=nightOwl.purple};
        jsString                 = {fg=nightOwl.yellow};
        jsComment                = {fg=nightOwl.gray,    style='italic'};
        jsFuncCall               = {fg=nightOwl.blue};
        jsNumber                 = {fg=nightOwl.yellow2};
        jsSpecial                = {fg=nightOwl.yellow2};
        jsObjectProp             = {fg=nightOwl.green2};
        jsOperatorKeyword        = {fg=nightOwl.green2};
        jsBooleanFalse           = {fg=nightOwl.red};
        jsBooleanTrue            = {fg=nightOwl.red};
        jsRegexpString           = {fg=nightOwl.blue2};
        jsConditional            = {fg=nightOwl.purple};
        jsFunction               = {fg=nightOwl.blue};
        jsReturn                 = {fg=nightOwl.purple};
        jsFuncName               = {fg=nightOwl.blue};
        jsParensError            = {fg=nightOwl.blue};
        jsClassDefinition        = {fg=nightOwl.yellow};
        jsImport                 = {fg=nightOwl.purple,  style='italic'};
        jsFrom                   = {fg=nightOwl.purple,  style='italic'};
        jsModuleAs               = {fg=nightOwl.purple,  style='italic'};
        jsExport                 = {fg=nightOwl.green2};
        jsExportDefault          = {fg=nightOwl.green2};
        jsExtendsKeyword         = {fg=nightOwl.purple,  style='italic'};
        javaScriptReserved       = {fg=nightOwl.blue};
        javaScriptConditional    = {fg=nightOwl.purple};
        javaScriptStringS        = {fg=nightOwl.yellow};
        javaScriptBoolean        = {fg=nightOwl.red};
        javaScriptBraces         = {fg=nightOwl.white};
        javaScriptLineComment    = {fg=nightOwl.gray,    style='italic'};
        javaScriptSpecial        = {fg=nightOwl.yellow2};
        javaScriptFunction       = {fg=nightOwl.blue};
        javaScriptStatement      = {fg=nightOwl.purple};
        javaScriptException      = {fg=nightOwl.green};
        scssSelectorName         = {fg=nightOwl.green};
        cssTagName               = {fg=nightOwl.red};
        cssClassName             = {fg=nightOwl.green,   style='italic'};
        cssClassNameDot          = {fg=nightOwl.green,   style='italic'};
        cssBraces                = {fg=nightOwl.white};
        cssPositioningProp       = {fg=nightOwl.green2};
        cssBoxProp               = {fg=nightOwl.green2};
        cssDimensionProp         = {fg=nightOwl.green2};
        cssTransitionProp        = {fg=nightOwl.green2};
        cssTextProp              = {fg=nightOwl.green2};
        cssFontProp              = {fg=nightOwl.green2};
        cssBorderProp            = {fg=nightOwl.green2};
        cssBackgroundProp        = {fg=nightOwl.green2};
        cssUIProp                = {fg=nightOwl.green2};
        cssIEUIProp              = {fg=nightOwl.red};
        scssFunctionName         = {fg=nightOwl.green};
        cssPositioningAttr       = {fg=nightOwl.red};
        cssTableAttr             = {fg=nightOwl.red};
        cssCommonAttr            = {fg=nightOwl.red};
        cssColorProp             = {fg=nightOwl.green2};
        cssIncludeKeyword        = {fg=nightOwl.green2};
        cssKeyFrameSelector      = {fg=nightOwl.green};
        cssPseudoClassId         = {fg=nightOwl.green,   style='italic'};
        cssBorderAttr            = {fg=nightOwl.red};
        cssValueLength           = {fg=nightOwl.yellow2};
        cssUnitDecorators        = {fg=nightOwl.yellow3};
        cssIdentifier            = {fg=nightOwl.yellow4, style='italic'};
        markdownHeadingDelimiter = {fg=nightOwl.gray};
        markdownCodeDelimiter    = {fg=nightOwl.yellow};
        markdownCode             = {fg=nightOwl.graya};
        mkdCodeStart             = {fg=nightOwl.white};
        mkdCodeEnd               = {fg=nightOwl.white};
        mkdLinkDef               = {fg=nightOwl.green2};
        mkdCodeDelimiter         = {fg=nightOwl.gray,    bg=nightOwl.bgblue};
        htmlH1                   = {fg=nightOwl.blue,    style='bold'};
        htmlH2                   = {fg=nightOwl.blue,    style='bold'};
        htmlH3                   = {fg=nightOwl.blue,    style='bold'};
        htmlH4                   = {fg=nightOwl.blue};
        htmlH5                   = {fg=nightOwl.blue};
        htmlBold                 = {fg=nightOwl.purple,  bg=nightOwl.bgblue  ,style='bold'};
        shComment                = {fg=nightOwl.gray,    bg=nightOwl.bgblue  ,style='italic'};
        NERDTreeDir              = {fg=nightOwl.hoki};
        NERDTreeOpenable         = {fg=nightOwl.red};
        NERDTreeClosable         = {fg=nightOwl.yellow};
        NERDTreeHelp             = {fg=nightOwl.gray4,   style='italic'};
        NERDTreeUp               = {fg=nightOwl.gray};
        NERDTreeDirSlash         = {fg=nightOwl.gray};
        gitcommitSummary         = {fg=nightOwl.white};
        IndentGuidesOdd          = {bg=nightOwl.gray4};
        IndentGuidesEven         = {bg=nightOwl.gray7};
        GitGutterAdd             = {fg=nightOwl.green};
        GitGutterChange          = {fg=nightOwl.yellow};
        GitGutterDelete          = {fg=nightOwl.red};
        GitGutterChangeDelete    = { fg=nightOwl.yellow}
    }
    return syntax
end

function nightOwl.get_color()
    return nightOwl
end

function nightOwl.colorscheme()
    vim.api.nvim_command('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.api.nvim_command('syntax reset')
    end

    vim.o.background = 'dark'
    vim.o.termguicolors = true

    nightOwl.terminal_color()
    local syntax = nightOwl.load_syntax()

    for group,colors in pairs(syntax) do
        nightOwl.highlight(group,colors)
    end
end

nightOwl.colorscheme()

return nightOwl
