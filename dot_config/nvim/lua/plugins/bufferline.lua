return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
            buffer_close_icon = '',
            mode = 'buffers',
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    separator = true,
                    padding = 1
                }
            },
            diagnostics = "nvim_lsp",
            indicator = {
                icon = ' · ',
                style = 'icon'
            },
        }
    }
}
