local ok, peek = pcall(require, "peek")
if not ok then
  print("peek.nvim is NOT installed or failed to load")
  return
end

print("peek.nvim is installed and loaded successfully")

-- Setup peek.nvim with default config
peek.setup()

-- Try opening peek preview buffer
local ok_open, err_open = pcall(peek.open)
if ok_open then
  print("peek.nvim preview opened successfully")
  -- Close preview after a short delay
  vim.defer_fn(function()
    local ok_close, err_close = pcall(peek.close)
    if ok_close then
      print("peek.nvim preview closed successfully")
    else
      print("Failed to close peek.nvim preview:", err_close)
    end
  end, 2000)
else
  print("Failed to open peek.nvim preview:", err_open)
end
