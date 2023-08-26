local shell_utils = require("shellutils")

local status = shell_utils.get_output("playerctl status")
local song   = shell_utils.get_output("playerctl metadata title")
local artist = shell_utils.get_output("playerctl metadata artist")
local album  = shell_utils.get_output("playerctl metadata album")

if #album ~= 0 then
    album = ("from %s "):format(album)
end

if status == "Playing" then
    print((" 󰐊 Playing | %s by %s %s"):format(song, artist, album))
elseif status == "Paused" then
    print(("  Paused  | %s by %s %s"):format(song, artist, album))
else
    print(("  Stopped "):format(status))
end
