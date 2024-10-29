MultiBot.tips.warrior = {}
MultiBot.tips.warrior.dps = {}

MultiBot.tips.warrior.dps.master =
"DPS控制|cffffffff\n"..
"在DPS控制中，您可以找到通用的DPS策略。|r\n\n"..
"|cffff0000左键单击以显示或隐藏DPS控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warrior.dps.dpsAssist =
"DPS辅助|cffffffff\n"..
"它启用了DPS辅助策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用DPS辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warrior.dps.dpsAoe = 
"DPS-AOE|cffffffff\n"..
"它启用了DPS-AOE策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用DPS-AOE|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warrior.tankAssist = 
"坦克辅助|cffffffff\n"..
"它启用了坦克辅助策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warrior.tank = 
"坦克|cffffffff\n"..
"它启用了坦克策略。|r\n\n"..
"|cffff0000左键单击以启用或禁用坦克|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addWarrior = function(pFrame, pCombat, pNormal)
	pFrame.addButton("DpsControl", 0, 0, "ability_warrior_challange", MultiBot.tips.warrior.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -2, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.warrior.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsAoe", 0, 26, "spell_holy_surgeoflight", MultiBot.tips.warrior.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -30, 0, "ability_warrior_innerrage", MultiBot.tips.warrior.tankAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank assist,?", "co -tank assist,?", pButton.getName())) then
			pButton.getButton("DpsAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	-- TANK --
	
	pFrame.addButton("Tank", -60, 0, "ability_warrior_shieldmastery", MultiBot.tips.warrior.tank).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +tank,?", "co -tank,?", pButton.getName())
	end
	
	-- STRATEGIES --
	
	if(MultiBot.isInside(pCombat, "dps aoe")) then pFrame.getButton("DpsAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "dps assist")) then pFrame.getButton("DpsAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank assist")) then pFrame.getButton("TankAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank")) then pFrame.getButton("Tank").setEnable() end
end