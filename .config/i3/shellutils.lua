local shell_utils = {}

local temp_file_path = "/tmp/i3luacommandouput"

function shell_utils.get_output(command)
    os.execute(command .. " > " .. temp_file_path .. " 2> " .. temp_file_path)
    local file = io.open(temp_file_path, "r")
    if file == nil then
        error("Can't read output.")
    end
    local output = file:read()
    file:close()
    return output or ""
end

return shell_utils