return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      ui = {
        border = 'rounded',
        notification_style = 'native',
      },
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      widget_guides = {
        enabled = true,
      },
      closing_tags = {
        enabled = true,
      },
      dev_log = {
        enabled = true,
        open_cmd = 'tabedit',
      },
      lsp = {
        color = { enabled = true },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = 'prompt',
          enableSnippets = true,
        },
        on_attach = function(client, bufnr)
          -- format on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = false }
            end,
          })

          -- keymaps (only active in flutter/dart buffers)
          local map = function(keys, cmd, desc)
            vim.keymap.set('n', keys, cmd, { buffer = bufnr, desc = desc })
          end

          -- LSP
          map('gd', vim.lsp.buf.definition, 'Go to definition')
          map('gr', vim.lsp.buf.references, 'References')
          map('K', vim.lsp.buf.hover, 'Hover docs')
          map('<leader>rn', vim.lsp.buf.rename, 'Rename')
          map('<leader>ca', vim.lsp.buf.code_action, 'Code action')

          -- Flutter
          map('<leader>fr', '<cmd>FlutterRun<cr>', 'Flutter Run')
          map('<leader>fq', '<cmd>FlutterQuit<cr>', 'Flutter Quit')
          map('<leader>fR', '<cmd>FlutterRestart<cr>', 'Flutter Restart')
          map('<leader>fh', '<cmd>FlutterReload<cr>', 'Flutter Hot Reload')
          map('<leader>fd', '<cmd>FlutterDevices<cr>', 'Flutter Devices')
          map('<leader>fe', '<cmd>FlutterEmulators<cr>', 'Flutter Emulators')
          map('<leader>fo', '<cmd>FlutterOutlineToggle<cr>', 'Flutter Outline')
          map('<leader>fp', '<cmd>FlutterPubGet<cr>', 'Flutter Pub Get')
          map('<leader>fl', '<cmd>FlutterLogClear<cr>', 'Flutter Log Clear')
        end,
      },
    }
  end,
}
