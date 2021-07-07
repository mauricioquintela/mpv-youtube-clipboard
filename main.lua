-- copy the link of current playing file if it is an youtube video
-- press CTRL+SHIFT+C to call the function


local mp = require 'mp'
local utils = require 'mp.utils'
local options = require 'mp.options'
local M = {}


function M.prompt_msg(msg, ms)
	mp.commandv("show-text", msg, ms)
end


function M.show_filename()
	local current_filename = mp.get_property("filename")
	if string.sub(current_filename,1,5) == "watch" 
	then 
		formated_filename = "https://www.youtube.com/" .. current_filename
		set_clipboard(formated_filename)
        M.prompt_msg(formated_filename, 2000)
    else
        M.prompt_msg(current_filename, 2000)
	end
end


function set_clipboard(text)
    mp.commandv("run", "/home/mauricioquintela/.config/mpv/scripts/mpv_get-link/get_link.sh", text);
end


function M.bind_shift_enter()
	mp.add_key_binding('CTRL+SHIFT+C', 'check_file_name', M.show_filename)
end


function M.unbind_shift_enter()
	mp.remove_key_binding('CTRL+SHIFT+C')
end


function M.main() 
	M.bind_shift_enter()
end

mp.register_event("file-loaded", M.main)

