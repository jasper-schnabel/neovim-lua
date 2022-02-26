-- colorscheme
-- define color palette
local p = {
  base0 = '#10171E',
  base1 = '#131A21',
  base2 = '#1A2128',
  base3 = '#2C333A',
  base4 = '#363D44',
  base5 = '#4E555C',
  base6 = '#B5BCC9',
  base7 = '#D3D9E4',
  base8 = '#EF8891',
  base9 = '#EDA685',
  base10 = '#FBDF90',
  base11 = '#9CE5C0',
  base12 = '#99AEE5',
  base13 = '#B5C3EA',
  base14 = '#C2A2E3',
  base15 = '#F6AFE4',
}

-- loop through table and highlight all groups
local function apply_highlights(hi_table)
  vim.api.nvim_command('highlight clear')
  vim.opt.background = 'dark'
  vim.opt.termguicolors = true

  for group, styles in pairs(hi_table) do
    vim.api.nvim_set_hl(0, group, styles)
  end
end

-- define highlight-groups
local highlight_groups_table = {
  ColorColumn = { fg = p.base7, bg = p.base0 },
  Conceal = { fg = p.base7, bg = p.base0 },
  Cursor = { fg = p.base7, bg = p.base0 },
  lCursor = { fg = p.base7, bg = p.base0 },
  CursorIM = { fg = p.base7, bg = p.base0 },
  CursorColumnolumn = { fg = p.base7, bg = p.base0 },
  CursorLine = { fg = p.base7, bg = p.base0 },
  Directory = { fg = p.base7, bg = p.base0 },
  DiffAdd = { fg = p.base7, bg = p.base0 },
  DiffChange = { fg = p.base7, bg = p.base0 },
  DiffDelete = { fg = p.base7, bg = p.base0 },
  DiffText = { fg = p.base7, bg = p.base0 },
  EndOfBuffer = { fg = p.base7, bg = p.base0 },
  TermCursor = { fg = p.base7, bg = p.base0 },
  TermCursorNC = { fg = p.base7, bg = p.base0 },
  ErrorMsg = { fg = p.base7, bg = p.base0 },
  VertSplit = { fg = p.base7, bg = p.base0 },
  Folded = { fg = p.base7, bg = p.base0 },
  FoldColumn = { fg = p.base7, bg = p.base0 },
  SignColumn = { fg = p.base7, bg = p.base0 },
  IncSearch = { fg = p.base7, bg = p.base0 },
  Substitute = { fg = p.base7, bg = p.base0 },
  LineNr = { fg = p.base7, bg = p.base0 },
  LineNrAbove = { fg = p.base7, bg = p.base0 },
  LineNrBelow = { fg = p.base7, bg = p.base0 },
  CursorLineNr = { fg = p.base7, bg = p.base0 },
  MatchParen = { fg = p.base7, bg = p.base0 },
  ModeMsg = { fg = p.base7, bg = p.base0 },
  MsgArea = { fg = p.base7, bg = p.base0 },
  MsgSeparator = { fg = p.base7, bg = p.base0 },
  MoreMsg = { fg = p.base7, bg = p.base0 },
  NonText = { fg = p.base7, bg = p.base0 },
  Normal = { fg = p.base7, bg = p.base0 },
  NormalFloat = { fg = p.base7, bg = p.base0 },
  NormalNC = { fg = p.base7, bg = p.base0 },
  Pmenu = { fg = p.base7, bg = p.base0 },
  PmenuSel = { fg = p.base7, bg = p.base0 },
  PmenuSbar = { fg = p.base7, bg = p.base0 },
  PmenuThumb = { fg = p.base7, bg = p.base0 },
  Question = { fg = p.base7, bg = p.base0 },
  QuickFixLinendow = { fg = p.base7, bg = p.base0 },
  Search = { fg = p.base7, bg = p.base0 },
  SpecialKey = { fg = p.base7, bg = p.base0 },
  SpellBad = { fg = p.base7, bg = p.base0 },
  SpellCap = { fg = p.base7, bg = p.base0 },
  SpellLocal = { fg = p.base7, bg = p.base0 },
  SpellRare = { fg = p.base7, bg = p.base0 },
  StatusLine = { fg = p.base7, bg = p.base0 },
  StatusLineNC = { fg = p.base7, bg = p.base0 },
  TabLine = { fg = p.base7, bg = p.base0 },
  TabLineFill = { fg = p.base7, bg = p.base0 },
  TabLineSel = { fg = p.base7, bg = p.base0 },
  Title = { fg = p.base7, bg = p.base0 },
  Visual = { fg = p.base7, bg = p.base0 },
  VisualNOS = { fg = p.base7, bg = p.base0 },
  WarningMsg = { fg = p.base7, bg = p.base0 },
  base7space = { fg = p.base7, bg = p.base0 },
  WildMenu = { fg = p.base7, bg = p.base0 },
  Menu = { fg = p.base7, bg = p.base0 },
  Scrollbar = { fg = p.base7, bg = p.base0 },
  Tooltip = { fg = p.base7, bg = p.base0 },

  TSAttribute = { fg = p.base7, bg = p.base0 },
  TSBoolean = { fg = p.base7, bg = p.base0 },
  TSCharacter = { fg = p.base7, bg = p.base0 },
  TSComment = { fg = p.base7, bg = p.base0 },
  TSConditional = { fg = p.base7, bg = p.base0 },
  TSConstant = { fg = p.base7, bg = p.base0 },
  TSConstBuiltin = { fg = p.base7, bg = p.base0 },
  TSConstMacro = { fg = p.base7, bg = p.base0 },
  TSConstructor = { fg = p.base7, bg = p.base0 },
  TSError = { fg = p.base7, bg = p.base0 },
  TSException = { fg = p.base7, bg = p.base0 },
  TSField = { fg = p.base7, bg = p.base0 },
  TSFloat = { fg = p.base7, bg = p.base0 },
  TSFunction = { fg = p.base7, bg = p.base0 },
  TSFuncBuiltin = { fg = p.base7, bg = p.base0 },
  TSFuncMacro = { fg = p.base7, bg = p.base0 },
  TSInclude = { fg = p.base7, bg = p.base0 },
  TSKeyword = { fg = p.base7, bg = p.base0 },
  TSKeywordFunction = { fg = p.base7, bg = p.base0 },
  TSKeywordOperator = { fg = p.base7, bg = p.base0 },
  TSKeywordReturn = { fg = p.base7, bg = p.base0 },
  TSLabel = { fg = p.base7, bg = p.base0 },
  TSMethod = { fg = p.base7, bg = p.base0 },
  TSNamespace = { fg = p.base7, bg = p.base0 },
  TSNone = { fg = p.base7, bg = p.base0 },
  TSNumber = { fg = p.base7, bg = p.base0 },
  TSOperator = { fg = p.base7, bg = p.base0 },
  TSParameter = { fg = p.base7, bg = p.base0 },
  TSParameterReference = { fg = p.base7, bg = p.base0 },
  TSProperty = { fg = p.base7, bg = p.base0 },
  TSPunctDelimiter = { fg = p.base7, bg = p.base0 },
  TSPunctBracket = { fg = p.base7, bg = p.base0 },
  TSPunctSpecial = { fg = p.base7, bg = p.base0 },
  TSRepeat = { fg = p.base7, bg = p.base0 },
  TSString = { fg = p.base7, bg = p.base0 },
  TSStringRegex = { fg = p.base7, bg = p.base0 },
  TSStringEscape = { fg = p.base7, bg = p.base0 },
  TSStringSpecial = { fg = p.base7, bg = p.base0 },
  TSSymbol = { fg = p.base7, bg = p.base0 },
  TSTag = { fg = p.base7, bg = p.base0 },
  TSTagAttribute = { fg = p.base7, bg = p.base0 },
  TSTagDelimiter = { fg = p.base7, bg = p.base0 },
  TSText = { fg = p.base7, bg = p.base0 },
  TSStrong = { fg = p.base7, bg = p.base0 },
  TSEmphasis = { fg = p.base7, bg = p.base0 },
  TSUnderline = { fg = p.base7, bg = p.base0 },
  TSStrike = { fg = p.base7, bg = p.base0 },
  TSTitle = { fg = p.base7, bg = p.base0 },
  TSLiteral = { fg = p.base7, bg = p.base0 },
  TSURI = { fg = p.base7, bg = p.base0 },
  TSMath = { fg = p.base7, bg = p.base0 },
  TSTextReference = { fg = p.base7, bg = p.base0 },
  TSEnvironment = { fg = p.base7, bg = p.base0 },
  TSEnvironmentName = { fg = p.base7, bg = p.base0 },
  TSNote = { fg = p.base7, bg = p.base0 },
  TSWarning = { fg = p.base7, bg = p.base0 },
  TSDanger = { fg = p.base7, bg = p.base0 },
  TSType = { fg = p.base7, bg = p.base0 },
  TSTypeBuiltin = { fg = p.base7, bg = p.base0 },
  TSVariable = { fg = p.base7, bg = p.base0 },
  TSVariableBuiltin = { fg = p.base7, bg = p.base0 },

  DiagnosticError = { fg = p.base7, bg = p.base0 },
  DiagnosticWarn = { fg = p.base7, bg = p.base0 },
  DiagnosticInfo = { fg = p.base7, bg = p.base0 },
  DiagnosticHint = { fg = p.base7, bg = p.base0 },

  LspReferenceText = { fg = p.base7, bg = p.base0 },
  LspReferenceRead = { fg = p.base7, bg = p.base0 },
  LspReferenceWrite = { fg = p.base7, bg = p.base0 },

  CmpItemAbbr = { fg = p.base7, bg = p.base0 },
  CmpItemAbbrDeprecated = { fg = p.base7, bg = p.base0 },
  CmpItemAbbrMatch = { fg = p.base7, bg = p.base0 },
  CmpItemAbbrMatchFuzzy = { fg = p.base7, bg = p.base0 },
  CmpItemKind = { fg = p.base7, bg = p.base0 },
  CmpItemMenu = { fg = p.base7, bg = p.base0 },

  CryolineNormal = { fg = p.base7, bg = p.base0 },
  CryolineVisual = { fg = p.base7, bg = p.base0 },
  CryolineSelect = { fg = p.base7, bg = p.base0 },
  CryolineInsert = { fg = p.base7, bg = p.base0 },
  CryolineReplace = { fg = p.base7, bg = p.base0 },
  CryolineElse = { fg = p.base7, bg = p.base0 },

  DrexDir = { fg = p.base7, bg = p.base0 },
  DrexLink = { fg = p.base7, bg = p.base0 },
  DrexOthers = { fg = p.base7, bg = p.base0 },
  DrexMarked = { fg = p.base7, bg = p.base0 },
  DrexSelected = { fg = p.base7, bg = p.base0 },
}

-- apply the colorscheme
apply_highlights(highlight_groups_table)
