--[[
	Adds pose paramter sequences to the red dot sight.
	
	Copyright (c) 2016 Rectus
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
]]--

require "animationsystem.sequences"             


model:CreateSequence(
    {
        name = "aim",
        poseParamX = model:CreatePoseParameter("dot_x", -1, 1, 0, false),
        poseParamY = model:CreatePoseParameter("dot_y", -1, 1, 0, false),
        --delta = true,
        sequences = 
		{
            {"xy_ul", "y_u", "xy_ur"}, {"x_l", "mid", "x_r"}, { "xy_dl", "y_d", "xy_dr"}
        },
    }
)

model:CreateSequence(
	{
		name = "idle",
		sequences = {
			{ "mid" }
		},
		addlayer = {
			 "aim"
		}
	}
)