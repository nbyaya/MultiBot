MultiBot.tips.warlock = {}
MultiBot.tips.warlock.dps = {}
MultiBot.tips.warlock.buff = {}

MultiBot.tips.warlock.buff.master =
"增益控制|cffffffff\n"..
"此控制允许你选择、启用或禁用默认增益。|r\n\n"..
"|cffff0000左键点击以显示或隐藏选项|r\n"..
"|cff999999(执行命令: 系统)|r\n\n"..
"|cffff0000右键点击启用或禁用默认增益。|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.buff.bhealth =
"生命增益|cffffffff\n"..
"启用生命增益。|r\n\n"..
"|cffff0000左键点击启生命增益 |r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.buff.bmana =
"法力增益|cffffffff\n"..
"启用法力增益。|r\n\n"..
"|cffff0000左键点击启用法力增益|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.buff.bdps =
"伤害输出增益|cffffffff\n"..
"启用伤害输出增益。|r\n\n"..
"|cffff0000左键点击启用伤害输出增益|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.dps.master =
"伤害输出控制|cffffffff\n"..
"在伤害输出控制中你会找到通用的伤害输出策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏伤害输出控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.dps.dpsAssist =
"伤害输出辅助|cffffffff\n"..
"启用伤害输出辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.dps.dpsDebuff =
"伤害输出减益|cffffffff\n"..
"启用伤害输出减益策略。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出减益|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.dps.dpsAoe = 
"伤害输出范围攻击|cffffffff\n"..
"启用伤害输出范围攻击策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.dps.dps = 
"伤害输出|cffffffff\n"..
"启用伤害输出策略。\n"..
"伤害输出和坦克相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.tankAssist = 
"坦克辅助|cffffffff\n"..
"启用坦克辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.warlock.tank = 
"坦克|cffffffff\n"..
"启用坦克策略。\n"..
"伤害输出和坦克相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用坦克|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addWarlock = function(pFrame, pCombat, pNormal)
	local tButton = pFrame.addButton("Buff", 0, 0, "spell_shadow_lifedrain02", MultiBot.tips.warlock.buff.master)
	tButton.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.parent.frames["Buff"])
	end
	
	local tFrame = pFrame.addFrame("Buff", -2, 30)
	tFrame:Hide()
	
	tFrame.addButton("BuffHealth", 0, 0, "spell_shadow_lifedrain02", MultiBot.tips.warlock.buff.bhealth)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Buff", pButton.texture, "nc +bhealth,?", pButton.getName())
		pButton.getButton("Buff").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bhealth,?", "nc -bhealth,?", pButton.getName())
		end
	end
	
	tFrame.addButton("BuffMana", 0, 26, "spell_shadow_siphonmana", MultiBot.tips.warlock.buff.bmana)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Buff", pButton.texture, "nc +bmana,?", pButton.getName())
		pButton.getButton("Buff").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bmana,?", "nc -bmana,?", pButton.getName())
		end
	end
	
	tFrame.addButton("BuffDps", 0, 52, "spell_shadow_haunting", MultiBot.tips.warlock.buff.bdps)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Buff", pButton.texture, "nc +bdps,?", pButton.getName())
		pButton.getButton("Buff").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bdps,?", "nc -bdps,?", pButton.getName())
		end
	end
	
	-- STRATEGIES:BUFF --
	
	if(MultiBot.isInside(pNormal, "bhealth")) then
		tButton.setTexture("spell_shadow_lifedrain02").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bhealth,?", "nc -bhealth,?", pButton.getName())
		end
	elseif(MultiBot.isInside(pNormal, "bmana")) then
		tButton.setTexture("spell_shadow_siphonmana").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bmana,?", "nc -bmana,?", pButton.getName())
		end
	elseif(MultiBot.isInside(pNormal, "bdps")) then
		tButton.setTexture("spell_shadow_haunting").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bdps,?", "nc -bdps,?", pButton.getName())
		end
	end
	
	-- DPS --
	
	pFrame.addButton("DpsControl", -30, 0, "ability_warrior_challange", MultiBot.tips.warlock.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -32, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.warlock.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsDebuff", 0, 26, "spell_holy_restoration", MultiBot.tips.warlock.dps.dpsDebuff).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +dps debuff,?", "co -dps debuff,?", pButton.getName())
	end
	
	tFrame.addButton("DpsAoe", 0, 52, "spell_holy_surgeoflight", MultiBot.tips.warlock.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	tFrame.addButton("Dps", 0, 78, "spell_holy_divinepurpose", MultiBot.tips.warlock.dps.dps).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps,?", "co -dps,?", pButton.getName())) then
			pButton.getButton("Tank").setDisable()
		end
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -60, 0, "ability_warrior_innerrage", MultiBot.tips.warlock.tankAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank assist,?", "co -tank assist,?", pButton.getName())) then
			pButton.getButton("DpsAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	-- TANK --
	
	pFrame.addButton("Tank", -90, 0, "ability_warrior_shieldmastery", MultiBot.tips.warlock.tank).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank,?", "co -tank,?", pButton.getName())) then
			pButton.getButton("Dps").setDisable()
		end
	end
	
	-- STRATEGIES --
	
	if(MultiBot.isInside(pCombat, "dps")) then pFrame.getButton("Dps").setEnable() end
	if(MultiBot.isInside(pCombat, "dps aoe")) then pFrame.getButton("DpsAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "dps debuff")) then pFrame.getButton("DpsDebuff").setEnable() end
	if(MultiBot.isInside(pCombat, "dps assist")) then pFrame.getButton("DpsAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank assist")) then pFrame.getButton("TankAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "tank")) then pFrame.getButton("Tank").setEnable() end
end