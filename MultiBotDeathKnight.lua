MultiBot.tips.deathknight = {}
MultiBot.tips.deathknight.dps = {}
MultiBot.tips.deathknight.presence = {}

MultiBot.tips.deathknight.presence.master =
"状态控制|cffffffff\n"..
"此控制允许您选择、启用或禁用默认状态。|r\n\n"..
"|cffff0000左键单击以显示或隐藏选项|r\n"..
"|cff999999(执行命令: 系统)|r\n\n"..
"|cffff0000右键单击以启用或禁用默认状态。|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.presence.unholy =
"邪恶状态|cffffffff\n"..
"它启用了邪恶状态。|r\n\n"..
"|cffff0000左键单击以启用邪恶状态|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.presence.frost =
"冰霜状态|cffffffff\n"..
"它启用了冰霜状态。|r\n\n"..
"|cffff0000左键单击以启用冰霜状态|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.presence.blood =
"鲜血状态|cffffffff\n"..
"它启用了鲜血状态。|r\n\n"..
"|cffff0000左键单击以启用鲜血状态|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.dps.master =
"伤害输出控制|cffffffff\n"..
"在伤害输出控制中你会找到通用的伤害输出策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏伤害输出控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.dps.dpsAssist =
"伤害输出辅助|cffffffff\n"..
"启用伤害输出辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.dps.dpsAoe =
"伤害输出范围攻击|cffffffff\n"..
"启用伤害输出范围攻击策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.deathknight.tankAssist =
"坦克辅助|cffffffff\n"..
"启用坦克辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addDeathKnight = function(pFrame, pCombat, pNormal)
	local tButton = pFrame.addButton("Presence", 0, 0, "spell_deathknight_bloodpresence", MultiBot.tips.deathknight.presence.master).setDisable()
	tButton.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("Presence"))
	end
	
	local tFrame = pFrame.addFrame("Presence", -2, 30)
	tFrame:Hide()
	
	tFrame.addButton("Unholy", 0, 0, "spell_deathknight_unholypresence", MultiBot.tips.deathknight.presence.unholy)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Presence", pButton.texture, "co +unholy,?", pButton.getName())
		pButton.getButton("Presence").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +unholy,?", "co -unholy,?", pButton.getName())
		end
	end
	
	tFrame.addButton("Frost", 0, 26, "spell_deathknight_frostpresence", MultiBot.tips.deathknight.presence.frost)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Presence", pButton.texture, "co +frost,?", pButton.getName())
		pButton.getButton("Presence").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +frost,?", "co -frost,?", pButton.getName())
		end
	end
	
	tFrame.addButton("Blood", 0, 52, "spell_deathknight_bloodpresence", MultiBot.tips.deathknight.presence.blood)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Presence", pButton.texture, "co +blood,?", pButton.getName())
		pButton.getButton("Presence").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +blood,?", "co -blood,?", pButton.getName())
		end
	end
	
	-- SRATEGIES:PRESENCE ---
	
	if(MultiBot.isInside(pCombat, "unholy")) then
		tButton.setTexture("spell_deathknight_unholypresence").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +unholy,?", "co -unholy,?", pButton.getName())
		end
	elseif(MultiBot.isInside(pCombat, "frost")) then
		tButton.setTexture("spell_deathknight_frostpresence").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +frost,?", "co -frost,?", pButton.getName())
		end
	elseif(MultiBot.isInside(pCombat, "blood")) then
		tButton.setTexture("spell_deathknight_bloodpresence").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "co +blood,?", "co -blood,?", pButton.getName())
		end
	end
	
	-- DPS --
	
	pFrame.addButton("DpsControl", -30, 0, "ability_warrior_challange", MultiBot.tips.deathknight.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -32, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.deathknight.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsAoe", 0, 26, "spell_holy_surgeoflight", MultiBot.tips.deathknight.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -60, 0, "ability_warrior_innerrage", MultiBot.tips.deathknight.tankAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank assist,?", "co -tank assist,?", pButton.getName())) then
			pButton.getButton("DpsAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	-- STRATEGIES --
	
	if(MultiBot.isInside(pCombat, "dps aoe")) then pFrame.getButton("DpsAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "dps assist")) then pFrame.getButton("DpsAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank assist")) then pFrame.getButton("TankAssist").setEnable() end
end