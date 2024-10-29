MultiBot.tips.rogue = {}
MultiBot.tips.rogue.dps = {}

MultiBot.tips.rogue.dps.master =
"DPS控制|cffffffff\n"..
"在DPS控制中，您可以找到通用的DPS策略。|r\n\n"..
"|cffff0000左键单击以显示或隐藏DPS控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.rogue.dps.dpsAssist =
"DPS辅助|cffffffff\n"..
"它启用了DPS辅助策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用DPS辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.rogue.dps.dpsAoe = 
"DPS-AOE|cffffffff\n"..
"它启用了DPS-AOE策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用DPS-AOE|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.rogue.dps.dps = 
"DPS|cffffffff\n"..
"它启用了DPS策略。|r\n\n"..
"|cffff0000左键单击以启用或禁用DPS|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.rogue.tankAssist = 
"坦克辅助|cffffffff\n"..
"它启用了坦克辅助策略。\n"..
"DPS-AOE、DPS辅助和坦克辅助是互斥的。\n"..
"只能激活这些策略中的一个。|r\n\n"..
"|cffff0000左键单击以启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addRogue = function(pFrame, pCombat, pNormal)
	pFrame.addButton("DpsControl", 0, 0, "ability_warrior_challange", MultiBot.tips.rogue.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -2, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.rogue.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsAoe", 0, 26, "spell_holy_surgeoflight", MultiBot.tips.rogue.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	tFrame.addButton("Dps", 0, 52, "spell_holy_divinepurpose", MultiBot.tips.rogue.dps.dps).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +dps,?", "co -dps,?", pButton.getName())
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -30, 0, "ability_warrior_innerrage", MultiBot.tips.rogue.tankAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank assist,?", "co -tank assist,?", pButton.getName())) then
			pButton.getButton("DpsAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	-- STRATEGIES --
	
	if(MultiBot.isInside(pCombat, "dps")) then pFrame.getButton("Dps").setEnable() end
	if(MultiBot.isInside(pCombat, "dps aoe")) then pFrame.getButton("DpsAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "dps assist")) then pFrame.getButton("DpsAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank assist")) then pFrame.getButton("TankAssist").setEnable() end
end