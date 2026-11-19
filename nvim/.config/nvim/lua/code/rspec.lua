local M = {}

M.config = {
  cmd = "bin/rspec",
  split = "botright split",
}

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

local function run(with_line)
  local file = vim.fn.expand("%:.")
  if not file:match("_spec%.rb$") then
    vim.notify("Not a spec file: " .. file, vim.log.levels.WARN)
    return
  end
  local target = with_line and (file .. ":" .. vim.fn.line(".")) or file
  vim.cmd(M.config.split)
  vim.cmd("terminal " .. M.config.cmd .. " " .. vim.fn.shellescape(target))
  vim.cmd("startinsert")
end

function M.file() run(false) end
function M.line() run(true) end

return M
