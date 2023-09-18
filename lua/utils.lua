local M = {}
local uv = vim.loop

M.join_paths = _G.join_paths

---Get the full path to `data` dir
---@return string
function M.get_runtime_dir()
    return vim.call("stdpath", "data")
end

---Get the full path to `config` dir
---@return string
function M.get_config_dir()
    return vim.call("stdpath", "config")
end

---Get the full path to `cache` dir
---@return string
function M.get_cache_dir()
    return vim.call("stdpath", "cache")
end

---Get the full path to `undo` dir
---@return string
function M.get_undo_dir()
    return M.join_paths(M.get_config_dir(), "undo")
end

--- Checks whether a given path exists and is a directory
--@param path (string) path to check
--@returns (bool)
function M.is_directory(path)
    local stat = uv.fs_stat(path)
    return stat and stat.type == "directory" or false
end

return M
