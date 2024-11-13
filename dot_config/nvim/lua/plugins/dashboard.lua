local function default_header()
    return {
        '', '', '',
        '██╗      ██████╗ ███████╗████████╗    ███████╗ █████╗ ███╗   ██╗██╗   ██╗',
        '██║     ██╔═══██╗██╔════╝╚══██╔══╝    ██╔════╝██╔══██╗████╗  ██║╚██╗ ██╔╝',
        '██║     ██║   ██║███████╗   ██║       █████╗  ███████║██╔██╗ ██║ ╚████╔╝ ',
        '██║     ██║   ██║╚════██║   ██║       ██╔══╝  ██╔══██║██║╚██╗██║  ╚██╔╝  ',
        '███████╗╚██████╔╝███████║   ██║       ██║     ██║  ██║██║ ╚████║   ██║   ',
        '╚══════╝ ╚═════╝ ╚══════╝   ╚═╝       ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ',
        '', '', ''
    }
end


return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    opts = {
        theme = 'doom',
        config = {
            header = default_header(),
            center = {
                {
                    icon = '󰙅 ',
                    icon_hl = 'Title',
                    desc = 'Open File Tree',
                    desc_hl = 'String',
                    key = 'e',
                    keymap = '<space> e',
                    key_hl = 'Number',
                    action = ':Neotree float reveal'
                },
                {
                    icon = ' ',
                    icon_hl = 'Title',
                    desc = 'Open Yazi',
                    desc_hl = 'String',
                    key = 'E',
                    keymap = '<space> E',
                    key_hl = 'Number',
                    action = ':Yazi cwd'
                },
                {
                    icon = '󰈞 ',
                    icon_hl = 'Title',
                    desc = 'Find files',
                    desc_hl = 'String',
                    key = 'f',
                    keymap = '<space> f f',
                    key_hl = 'Number',
                    action = ':Telescope find_files'
                },
                {
                    icon = ' ',
                    icon_hl = 'Title',
                    desc = 'Find text',
                    desc_hl = 'String',
                    key = 'w',
                    keymap = '<space> f w',
                    key_hl = 'Number',
                    action = ':Telescope live_grep'
                },
                {
                    icon = ' ',
                    icon_hl = 'Title',
                    desc = 'Git Braches',
                    desc_hl = 'String',
                    key = 'b',
                    keymap = '<space> g b',
                    key_hl = 'Number',
                    action = ':Telescope git_branches'
                }

            }
        }
    },
    -- config = function()
    -- require('dashboard').setup {
    -- config
    -- }
    -- end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
