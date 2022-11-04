-- If it's between 9am and 4:30pm, use the light theme
local function is_light()
  local hour = os.date("%H%M")
  return tonumber(hour) >= 900 and tonumber(hour) < 1630
end

-- Get current directory name
local function get_basename()
  local cwd = vim.fn.getcwd()
  if cwd == "" then
    cwd = "~"
  end
  return string.match(cwd, "/(%w+[-]*%w+)$")
end

return {
  is_light = is_light,
  get_cwd = get_basename,
}
