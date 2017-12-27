--coding:utf-8	
--Author: zhugaolei
--FileName: GameScene.lua
--DateTime: 2017-12-27 21:19:51

local size = cc.Director:getInstance():getWinSize()
cclog("width:%d, height:%d", size.width, size.height)

local GameScene = class("GameScene", function()
	return cc.Scene:create()
end)

function GameScene.create()
	local scene = GameScene.new()
	scene:addChild(scene:createLayer())
	return scene
end

function GameScene:createLayer()
	cclog("GameScene.init")
	local layer = cc.Layer:create()

	local label = cc.Label:createWithSystemFont("HelloWorld", "Arial", 36)
	label:setPosition(cc.p(size.width/2, size.height - 200))
	layer:addChild(label)

	local sprite = cc.Sprite:create("HelloWorld.png")
	sprite:setPosition(cc.p(size.width/2, size.height/2))
	layer:addChild(sprite)

	return layer
end


return GameScene