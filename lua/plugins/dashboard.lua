return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                     ]],
          [[       ████ ██████           █████      ██                     ]],
          [[      ███████████             █████                             ]],
          [[      █████████ ███████████████████ ███   ███████████   ]],
          [[     █████████  ███    █████████████ █████ ██████████████   ]],
          [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
          [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
          [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
        }, --your header
        center = {
          {
            icon = '󰝰   ',
            icon_hl = 'Title',
            desc = 'Recent project                    ',
            key = 'p',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'Telescope projects',
          },
          {
            icon = '󰈙   ',
            icon_hl = 'Title',
            desc = 'Recent File',
            key = 'r',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'Telescope oldfiles',
          },
          {
            icon = '󰈞   ',
            icon_hl = 'Title',
            desc = 'Find File',
            key = 'f',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'Telescope find_files',
          },
          {
            icon = '   ',
            icon_hl = 'Title',
            desc = 'Config',
            key = 'c',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'edit ~/.config/nvim/lua/bourbxn/plugins/plugins-setup.lua',
          },
          {
            icon = '󰈆   ',
            icon_hl = 'Title',
            desc = 'Exit',
            key = 'q',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'q',
          },
        },
        footer = {
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          'neovim loaded 64 packages',
        }, --your footer
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
