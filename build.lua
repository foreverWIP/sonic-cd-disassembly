#!/usr/bin/env lua

local common = require "build_tools.lua.common"

local region = 1

local function build_file(input_name, output_name, flags)
	local message, abort = common.build_rom(input_name, output_name, "-supmode -D \"REGION\"=" .. region .. " " .. (flags or ""), "", false, "https://github.com/foreverWIP/sonic-cd-disassembly")

	if message then
		exit_code = false
	end

	if abort then
		os.exit(exit_code, true)
	end
end

build_file("Sound Drivers/FM/_Driver", "_Built/Misc/FM Sound Driver")

build_file("CD Initial Program/IP", "_Built/Misc/IP")

os.exit(exit_code, false)
