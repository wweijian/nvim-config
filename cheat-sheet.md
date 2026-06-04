# LazyVim Cheatsheet

This sheet is for this Neovim config, not stock LazyVim only.

- Leader: `\`
- Local leader: `Space`
- Open the interactive keymap helper: `\?`
- Open Lazy plugin manager: `\l`

## Daily Driver

| Key | Action |
| --- | --- |
| `\ Space` | Find files from project root |
| `\ff` | Find files |
| `\fg` | Live grep |
| `\fb` | Buffers |
| `\fh` | Help tags |
| `\e` | Explorer from project root |
| `\E` | Explorer from cwd |
| `\,` | Buffer picker |
| `\/` | Grep from project root |
| `\:` | Command history |
| `\n` | Notification history |
| `\?` | Buffer-local keymaps |
| `\ocs` | Open cheatsheet |
| `<Esc>` | Clear search highlight |

## Movement

| Key | Action |
| --- | --- |
| `h` `j` `k` `l` | Left, down, up, right |
| `w` / `W` | Next word / next WORD |
| `b` / `B` | Previous word / previous WORD |
| `e` / `E` | End of word / end of WORD |
| `gg` | First line |
| `G` | Last line |
| `{count}G` | Go to line |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `%` | Matching pair |
| `{` / `}` | Previous / next paragraph or block |
| `Ctrl-d` / `Ctrl-u` | Half page down / up |
| `Ctrl-f` / `Ctrl-b` | Page down / up |
| `zz` | Center cursor |
| `zt` / `zb` | Cursor line at top / bottom |

## Flash Jump

| Key | Action |
| --- | --- |
| `s` | Flash jump |
| `S` | Flash Treesitter |
| `r` after operator | Remote Flash motion, for example `yr` |
| `R` in visual/operator mode | Treesitter search |

## Editing

| Key | Action |
| --- | --- |
| `i` / `I` | Insert before cursor / start of line |
| `a` / `A` | Insert after cursor / end of line |
| `o` / `O` | New line below / above |
| `r` | Replace one character |
| `R` | Replace mode |
| `u` | Undo |
| `Ctrl-r` | Redo |
| `.` | Repeat last change |
| `J` | Join line with space |
| `gJ` | Join line without space |
| `cc` | Change whole line |
| `C` | Change to end of line |
| `ciw` | Change inner word |
| `yiw` | Yank inner word |
| `diw` | Delete inner word |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `x` | Delete character |
| `p` / `P` | Paste after / before cursor |
| `gcc` | Toggle comment line |
| `gc` + motion | Toggle comment over motion |
| `gco` / `gcO` | Add commented line below / above |
| `Alt-j` / `Alt-k` | Move line or selection down / up |
| `Alt-Down` / `Alt-Up` | Move line or selection down / up |
| `Ctrl-s` | Save file |

## Visual Mode

| Key | Action |
| --- | --- |
| `v` | Characterwise visual mode |
| `V` | Linewise visual mode |
| `Ctrl-v` | Block visual mode |
| `o` | Move to other end of selection |
| `<` / `>` | Indent left / right and keep selection |
| `y` | Yank selection |
| `d` | Delete selection |
| `gc` | Toggle comment selection |
| `\tf` | Format selection |
| `\sw` | Search selected text in project root |
| `\sW` | Search selected text in cwd |

## Text Objects

| Key | Action |
| --- | --- |
| `iw` / `aw` | Inner word / a word |
| `ip` / `ap` | Inner paragraph / a paragraph |
| `i"` / `a"` | Inside / around double quotes |
| `i'` / `a'` | Inside / around single quotes |
| `` i` `` / `` a` `` | Inside / around backticks |
| `ib` / `ab` | Inside / around parentheses |
| `iB` / `aB` | Inside / around braces |
| `it` / `at` | Inside / around tag |

## Search And Replace

| Key | Action |
| --- | --- |
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Next / previous search result |
| `*` / `#` | Search word under cursor forward / backward |
| `:%s/old/new/g` | Replace in file |
| `:%s/old/new/gc` | Replace in file with confirmation |
| `\sr` | Search and replace with Grug Far |

## Files And Pickers

| Key | Action |
| --- | --- |
| `\ff` | Find files |
| `\fF` | Find files from cwd |
| `\fc` | Find config file |
| `\fg` | Live grep |
| `\fr` | Recent files |
| `\fR` | Recent files from cwd |
| `\fp` | Projects |
| `\fn` | New file |
| `\fe` | Explorer from project root |
| `\fE` | Explorer from cwd |
| `\fb` | Buffers |
| `\fB` | All buffers |
| `\ft` | Terminal from project root |
| `\fT` | Terminal from cwd |
| `Ctrl-/` | Toggle terminal |

## Search Pickers

| Key | Action |
| --- | --- |
| `\sg` | Grep from project root |
| `\sG` | Grep from cwd |
| `\sb` | Buffer lines |
| `\sB` | Grep open buffers |
| `\sw` | Search word or visual selection from project root |
| `\sW` | Search word or visual selection from cwd |
| `\sd` | Diagnostics |
| `\sD` | Buffer diagnostics |
| `\sh` | Help pages |
| `\sk` | Keymaps |
| `\sm` | Marks |
| `\sj` | Jumps |
| `\sq` | Quickfix list |
| `\sl` | Location list |
| `\su` | Undotree |
| `\st` | Todo comments |
| `\sT` | Todo/Fix/Fixme comments |

## Buffers

| Key | Action |
| --- | --- |
| `H` / `L` | Previous / next buffer |
| `[b` / `]b` | Previous / next buffer |
| `\bb` | Switch to alternate buffer |
| `` \` `` | Switch to alternate buffer |
| `\bd` | Delete buffer |
| `\bD` | Delete buffer and window |
| `\bo` | Delete other buffers |
| `\bi` | Delete invisible buffers |
| `\bp` | Toggle buffer pin |
| `\bP` | Delete non-pinned buffers |
| `\bl` / `\br` | Delete buffers to left / right |
| `\bj` | Pick buffer |

## Windows And Tabs

| Key | Action |
| --- | --- |
| `Ctrl-h/j/k/l` | Move to left/lower/upper/right window |
| `Ctrl-Up/Down` | Increase / decrease window height |
| `Ctrl-Left/Right` | Decrease / increase window width |
| `\-` | Horizontal split below |
| `\` then `Shift-\` | Vertical split right |
| `\wd` | Delete window |
| `\wm` | Toggle window zoom |
| `\uz` | Toggle zen mode |
| `\uZ` | Toggle zoom |
| `\<Tab><Tab>` | New tab |
| `\<Tab>]` / `\<Tab>[` | Next / previous tab |
| `\<Tab>d` | Close tab |
| `\<Tab>o` | Close other tabs |
| `\<Tab>f` / `\<Tab>l` | First / last tab |

## LSP And Diagnostics

| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `grr` | References |
| `gri` | Implementation |
| `grt` | Type definition |
| `gra` | Code action |
| `grn` | Rename |
| `\rn` | Rename symbol |
| `\cf` | Format |
| `\tf` | Format buffer or selection |
| `\cF` | Format injected languages |
| `\cd` | Line diagnostics |
| `\td` | Toggle diagnostics |
| `[d` / `]d` | Previous / next diagnostic |
| `[e` / `]e` | Previous / next error |
| `[w` / `]w` | Previous / next warning |
| `\cs` | Symbols in Trouble |
| `\cS` | LSP references/definitions in Trouble |
| `\xx` | Diagnostics in Trouble |
| `\xX` | Buffer diagnostics in Trouble |
| `\xq` | Quickfix list |
| `\xl` | Location list |

## Git

| Key | Action |
| --- | --- |
| `\og` | Open LazyGit from git root |
| `\gd` | Git diff hunks |
| `\gD` | Git diff against origin |
| `\gs` | Git status |
| `\gS` | Git stash |
| `\gb` | Git blame line |
| `\gf` | Current file history |
| `\gl` | Git log from project root |
| `\gL` | Git log from cwd |
| `\gB` | Open Git browse URL |
| `\gY` | Copy Git browse URL |

## Harpoon

| Key | Action |
| --- | --- |
| `\ha` | Add current file to Harpoon |
| `\hh` | Toggle Harpoon quick menu |
| `Ctrl-1` | Jump to Harpoon file 1 |
| `Ctrl-2` | Jump to Harpoon file 2 |
| `Ctrl-3` | Jump to Harpoon file 3 |
| `Ctrl-4` | Jump to Harpoon file 4 |

## Toggles

| Key | Action |
| --- | --- |
| `\uf` | Toggle auto format |
| `\uF` | Toggle auto format for current buffer |
| `\ud` | Toggle diagnostics |
| `\us` | Toggle spelling |
| `\uw` | Toggle wrap |
| `\ul` | Toggle line numbers |
| `\uL` | Toggle relative line numbers |
| `\uc` | Toggle conceal level |
| `\uA` | Toggle tabline |
| `\uT` | Toggle Treesitter |
| `\ub` | Toggle dark background |
| `\uD` | Toggle dim |
| `\ua` | Toggle animations |
| `\ug` | Toggle indent guides |
| `\uS` | Toggle smooth scroll |
| `\uh` | Toggle inlay hints |
| `\uC` | Colorschemes |
| `\ur` | Redraw, clear search, and update diff |

## Sessions, Quit, And Tools

| Key | Action |
| --- | --- |
| `\qs` | Restore session |
| `\ql` | Restore last session |
| `\qS` | Select session |
| `\qd` | Do not save current session |
| `\qq` | Quit all |
| `\od` | Open LazyDocker |
| `\cm` | Mason |
| `\L` | LazyVim changelog |
| `\ui` | Inspect cursor position |
| `\uI` | Inspect Treesitter tree |

## Registers, Marks, And Macros

| Key | Action |
| --- | --- |
| `:reg` | Show registers |
| `"ay` | Yank into register `a` |
| `"ap` | Paste from register `a` |
| `"+y` / `"+p` | Yank / paste system clipboard |
| `"_d` | Delete into black-hole register |
| `ma` | Set mark `a` |
| `` `a `` | Jump to mark `a` |
| `:marks` | List marks |
| `q a` | Record macro into register `a` |
| `q` | Stop recording macro |
| `@a` | Run macro `a` |
| `@@` | Repeat last macro |

## Supermaven

| Key or command | Action |
| --- | --- |
| `<Tab>` | Accept completion, snippet jump, or AI suggestion when available |
| `Ctrl-]` | Clear inline Supermaven suggestion |
| `Ctrl-j` | Accept next word of Supermaven suggestion |
| `:SupermavenToggle` | Toggle Supermaven |
| `:SupermavenStatus` | Show Supermaven status |
| `:SupermavenUseFree` | Use free tier |
| `:SupermavenUsePro` | Use pro tier |

## Command-Line Basics

| Command | Action |
| --- | --- |
| `:w` | Write file |
| `:q` | Quit window |
| `:wq` | Write and quit |
| `:qa` | Quit all |
| `:e path` | Edit file |
| `:bnext` / `:bprevious` | Next / previous buffer |
| `:checkhealth` | Run health checks |
| `:Lazy` | Open plugin manager |
| `:Mason` | Open Mason |
