#!/usr/bin/env lua

local common = require "build_tools.lua.common"

local function build_file(input_name, output_name, flags)
	local message, abort = common.build_rom(input_name, output_name, flags or "", "", false, "https://github.com/foreverWIP/sonic-cd-disassembly")

	if message then
		exit_code = false
	end

	if abort then
		os.exit(exit_code, true)
	end
end

build_file("Sound Drivers/FM/_Driver", "_Built/Misc/FM Sound Driver")

os.exit(exit_code, false)
