local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction="float" })

function _lazygit_toggle()
  lazygit:toggle()
end

local htop = Terminal:new({ cmd = "htop", hidden = true, direction="float" })

function _htop_toggle()
  htop:toggle()
end


