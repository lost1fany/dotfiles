return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-telescope/telescope-dap.nvim",
        "jbyuki/one-small-step-for-vimkind",
        "leoluz/nvim-dap-go",
    },
    config = function()
        require("dapui").setup()
        require("dap-go").setup()
        local dap, dapui = require("dap"), require("dapui")
        vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<leader>dc', dap.continue, {})
        vim.keymap.set('n', '<leader>dn', dap.step_over, {})
        vim.keymap.set('n', '<leader>di', dap.step_into, {})
        vim.keymap.set('n', '<leader>do', dap.step_out, {})
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end

}
