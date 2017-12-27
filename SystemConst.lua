--coding:utf-8	
--Author: zhugaolei
--FileName: SystemConst.lua
--DateTime: 2017-12-27 23:37:10
--游戏中使用静态资源

local targetPlatform = cc.Application:getInstance():getTargetPlatform()

SOUND_KEY = "sound_key"
MUSIC_KEY = "music_key"
HIGHSCORE_KEY = "highscore_key"

if(cc.PLATFORM_OS_IPHONE == targetPlatform) or (cc.PLATFORM_OS_IPAD == targetPlatform) then
	