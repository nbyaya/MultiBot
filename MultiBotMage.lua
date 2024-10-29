MultiBot.tips.mage = {}
MultiBot.tips.mage.dps = {}
MultiBot.tips.mage.buff = {}
MultiBot.tips.mage.playbook = {}

MultiBot.tips.mage.buff.master =
"增益控制|cffffffff\n"..
"此控制允许你选择、启用或禁用默认增益。|r\n\n"..
"|cffff0000左键点击以显示或隐藏选项|r\n"..
"|cff999999(执行命令: 系统)|r\n\n"..
"|cffff0000右键点击启用或禁用默认增益。|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.mage.buff.bmana =
"法力增益|cffffffff\n"..
"启用法力增益。|r\n\n"..
"|cffff0000左键点击以启用法力增益|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.mage.buff.bdps =
"伤害增益|cffffffff\n"..
"启用伤害增益。|r\n\n"..
"|cffff0000左键点击启用伤害增益|r\n"..
"|cff999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.master =
"策略手册|cffffffff\n"..
"在策略手册中你会找到该职业典型的策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏策略手册|r\n"..
"|cf9999999(执行命令: 系统)|r";

MultiBot.tips.mage.playbook.arcaneAoe =
"奥术范围攻击|cffffffff\n"..
"允许法师在战斗中使用奥术范围攻击法术。|r\n\n"..
"|cffff0000左键点击启用或禁用奥术范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.arcane =
"奥术魔法|cffffffff\n"..
"允许法师在战斗中使用奥术魔法。\n"..
"奥术、冰霜和火焰魔法相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用奥术魔法|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.frostAoe =
"冰霜范围攻击|cffffffff\n"..
"允许法师在战斗中使用冰霜范围攻击法术。|r\n\n"..
"|cffff0000左键点击启用或禁用奥术范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.frost =
"冰霜魔法|cffffffff\n"..
"允许法师在战斗中使用冰霜魔法\n"..
"奥术、冰霜和火焰魔法相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用冰霜魔法|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.fireAoe =
"火焰范围攻击|cffffffff\n"..
"允许法师在战斗中使用火焰范围攻击法术。|r\n\n"..
"|cffff0000左键点击启用或禁用火焰范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.playbook.fire =
"火焰魔法|cffffffff\n"..
"允许法师在战斗中使用火焰魔法。\n"..
"奥术、冰霜和火焰魔法相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用火焰魔法|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.dps.master =
"伤害输出控制|cffffffff\n"..
"在伤害输出控制中你会找到通用的伤害输出策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏伤害输出控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.dps.dpsAssist =
"伤害输出辅助|cffffffff\n"..
"启用伤害输出辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.dps.dpsAoe = 
"伤害输出范围攻击|cffffffff\n"..
"启用伤害输出范围攻击策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.mage.tankAssist = 
"坦克辅助|cffffffff\n"..
"启用坦克辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addMage = function(pFrame, pCombat, pNormal)
	local tButton = pFrame.addButton("Buff", 0, 0, "inv_elemental_primal_mana", MultiBot.tips.mage.buff.master)
	tButton.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.parent.frames["Buff"])
	end
	
	local tFrame = pFrame.addFrame("Buff", -2, 30)
	tFrame:Hide()
	
	tFrame.addButton("NonCombatMana", 0, 0, "inv_elemental_primal_mana", MultiBot.tips.mage.buff.bmana)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Buff", pButton.texture, "nc +bmana,?", pButton.getName())
		pButton.getButton("Buff").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bmana,?", "nc -bmana,?", pButton.getName())
		end
	end
	
	tFrame.addButton("NonCombatDps", 0, 26, "inv_elemental_primal_nether", MultiBot.tips.mage.buff.bdps)
	.doLeft = function(pButton)
		MultiBot.SelectToTarget(pButton.get(), "Buff", pButton.texture, "nc +bdps,?", pButton.getName())
		pButton.getButton("Buff").doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bdps,?", "nc -bdps,?", pButton.getName())
		end
	end
	
	-- STRATEGIES:BUFF --
	
	if(MultiBot.isInside(pNormal, "bmana")) then
		tButton.setTexture("inv_elemental_primal_mana").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bmana,?", "nc -bmana,?", pButton.getName())
		end
	elseif(MultiBot.isInside(pNormal, "bdps")) then
		tButton.setTexture("inv_elemental_primal_nether").setEnable().doRight = function(pButton)
			MultiBot.OnOffActionToTarget(pButton, "nc +bdps,?", "nc -bdps,?", pButton.getName())
		end
	end
	
	-- PLAYBOOK --
	
	pFrame.addButton("Playbook", -30, 0, "inv_misc_book_06", MultiBot.tips.mage.playbook.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("Playbook"))
	end
	
	tFrame = pFrame.addFrame("Playbook", -32, 30)
	tFrame:Hide()
	
	tFrame.addButton("ArcaneAoe", 0, 0, "spell_arcane_starfire", MultiBot.tips.mage.playbook.arcaneAoe).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +arcane aoe,?", "co -arcane aoe,?", pButton.getName())
	end
	
	tFrame.addButton("Arcane", 0, 26, "ability_mage_arcanebarrage", MultiBot.tips.mage.playbook.arcane).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +arcane,?", "co -arcane,?", pButton.getName())) then
			pButton.getButton("Frost").setDisable()
			pButton.getButton("Fire").setDisable()
		end
	end
	
	tFrame.addButton("FrostAoe", 0, 52, "spell_frost_freezingbreath", MultiBot.tips.mage.playbook.frostAoe).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +frost aoe,?", "co -frost aoe,?", pButton.getName())
	end
	
	tFrame.addButton("Frost", 0, 78, "spell_frost_frostbolt02", MultiBot.tips.mage.playbook.frost).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +frost,?", "co -frost,?", pButton.getName())) then
			pButton.getButton("Arcane").setDisable()
			pButton.getButton("Fire").setDisable()
		end
	end
	
	tFrame.addButton("FireAoe", 0, 104, "spell_shadow_rainoffire", MultiBot.tips.mage.playbook.fireAoe).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +fire aoe,?", "co -fire aoe,?", pButton.getName())
	end
	
	tFrame.addButton("Fire", 0, 130, "spell_fire_fireball02", MultiBot.tips.mage.playbook.fire).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +fire,?", "co -fire,?", pButton.getName())) then
			pButton.getButton("Arcane").setDisable()
			pButton.getButton("Frost").setDisable()
		end
	end
	
	-- STRATEGIES:PLAYBOOK --
	
	if(MultiBot.isInside(pCombat, "arcane aoe")) then pFrame.getButton("ArcaneAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "arcane,")) then pFrame.getButton("Arcane").setEnable() end
	if(MultiBot.isInside(pCombat, "frost aoe")) then pFrame.getButton("FrostAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "frost,")) then pFrame.getButton("Frost").setEnable() end
	if(MultiBot.isInside(pCombat, "fire aoe")) then pFrame.getButton("FireAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "fire,")) then pFrame.getButton("Fire").setEnable() end
	
	-- DPS --
	
	pFrame.addButton("DpsControl", -60, 0, "ability_warrior_challange", MultiBot.tips.mage.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -62, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.mage.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsAoe", 0, 26, "spell_holy_surgeoflight", MultiBot.tips.mage.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -90, 0, "ability_warrior_innerrage", MultiBot.tips.mage.tankAssist).setDisable()
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