return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0,           -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic', 'nvim_lsp' },
      sections = { 'error', 'warn', 'info', 'hint' },
      diagnostics_color = {
        error = 'DiagnosticError', -- Changes diagnostics' error color.
        warn = 'DiagnosticWarn',   -- Changes diagnostics' warn color.
        info = 'DiagnosticInfo',   -- Changes diagnostics' info color.
        hint = 'DiagnosticHint',   -- Changes diagnostics' hint color.
      },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵' },
      colored = true,           -- Displays diagnostics status in color if set to true.
      update_in_insert = false, -- Update diagnostics in insert mode.
      always_visible = false,   -- Show diagnostics even if there are none.
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = true,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'catppuccin', -- Set theme based on environment variable
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { filename, 'branch' },
        lualine_c = { diagnostics },
        lualine_x = { diff },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
