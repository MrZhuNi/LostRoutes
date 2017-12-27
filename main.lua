--coding:utf-8	
--Author: zhugaolei
--FileName: main.lua
--DateTime: 2017-12-27 21:20:18
--cc.FileUtils:getInstance():setPopupNotify(false)

require "cocos.init"

--cclog
cclog = function(...)
	print(string.format(...))
end

local designResolutionSize = cc.p(640, 960)
local smallResolutionSize = cc.p(320, 640)
local mediumResolutionSize = cc.p(640, 960)
local largeResolutionSize = cc.p(1080, 1920)

--后期再说
local function autoScreenAdapt()
	local director = cc.Director:getInstance()
	local frameSize = director:getOpenGLView():getFrameSize()
	local designSize = director:getDesignResolutionSize()

end

local function main()
	collectgarbage("collect")
	collectgarbage("setpause", 100)
	collectgarbage("setstepmul", 5000)

	cc.FileUtils:getInstance():addSearchPath("src")
	cc.FileUtils:getInstance():addSearchPath("res")

	local director = cc.Director:getInstance()
	director:getOpenGLView():setDesignResolutionSize(640, 960, 1)
	--屏幕适配
	autoScreenAdapt()

	director:setDisplayStats(true)
	director:setAnimationInterval(1.0 / 60)

	local scene = require("GameScene")
	local gameScene = scene.create()

	if director:getRunningScene() then
		director:replaceScene(gameScene)
	else
		director:runWithScene(gameScene)
	end
    
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    error(msg)
end
