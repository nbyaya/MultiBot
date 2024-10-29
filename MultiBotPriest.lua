MultiBot.tips.priest = {}
MultiBot.tips.priest.dps = {}
MultiBot.tips.priest.playbook = {}

MultiBot.tips.priest.heal =
"治疗|cffffffff\n"..
"它使牧师成为团队的治疗者。\n"..
"暗影和治疗相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用治疗|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.buff =
"增益|cffffffff\n"..
"它允许牧师为团队施加增益。|r\n\n"..
"|cffff0000左键点击启用或禁用增益|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.playbook.master =
"策略手册|cffffffff\n"..
"在策略手册中你会找到该职业典型的策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏策略手册|r\n"..
"|cf9999999(执行命令: 系统)|r";

MultiBot.tips.priest.playbook.shadowDebuff =
"暗影减益|cffffffff\n"..
"允许牧师在战斗中使用暗影减益法术。|r\n\n"..
"|cffff0000左键点击启用或禁用暗影减益|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.playbook.shadowAoe =
"暗影范围攻击|cffffffff\n"..
"允许牧师在战斗中使用暗影范围攻击法术。|r\n\n"..
"|cffff0000左键点击启用或禁用暗影范围攻击减益|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.playbook.shadow =
"暗影|cffffffff\n"..
"允许牧师在战斗中使用暗影法术。\n"..
"暗影和治疗相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用暗影|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.dps.master =
"伤害输出控制|cffffffff\n"..
"在伤害输出控制中你会找到通用的伤害输出策略。|r\n\n"..
"|cffff0000左键点击显示或隐藏伤害输出控制|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.dps.dpsAssist =
"伤害输出辅助|cffffffff\n"..
"启用伤害输出辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.dps.dpsDebuff =
"伤害输出减益|cffffffff\n"..
"启用减益策略。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出减益|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.dps.dpsAoe = 
"伤害输出范围攻击|cffffffff\n"..
"启用伤害输出范围攻击策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用伤害输出范围攻击|r\n"..
"|cf9999999(执行命令: 机器人)|r"

MultiBot.tips.priest.dps.dps = 
"伤害输出|cffffffff\n"..
"启用了伤害输出策略。|r\n\n"..
"|cffff0000左键单击以启用或禁用伤害输出策略|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.tips.priest.tankAssist = 
"坦克辅助|cffffffff\n"..
"启用坦克辅助策略。\n"..
"伤害输出范围攻击、伤害输出辅助和坦克辅助相互排斥。\n"..
"只能激活这些策略中的一种。|r\n\n"..
"|cffff0000左键点击启用或禁用坦克辅助|r\n"..
"|cf9999999(执行命令: 机器人)|r";

MultiBot.addPriest = function(pFrame, pCombat, pNormal)
	pFrame.addButton("Heal", 0, 0, "spell_holy_aspiration", MultiBot.tips.priest.heal).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +heal,?", "co -heal,?", pButton.getName())) then
			pButton.getButton("Shadow").setDisable()
			pButton.getButton("Dps").setDisable()
		end
	end
	
	-- BUFF --
	
	pFrame.addButton("Buff", -30, 0, "spell_holy_power", MultiBot.tips.priest.buff).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +buff,?", "co -buff,?", pButton.getName())
	end
	
	-- PLAYBOOK --
	
	pFrame.addButton("Playbook", -60, 0, "inv_misc_book_06", MultiBot.tips.priest.playbook.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("Playbook"))
	end
	
	local tFrame = pFrame.addFrame("Playbook", -62, 30)
	tFrame:Hide()
	
	tFrame.addButton("ShadowDebuff", 0, 0, "spell_shadow_demonicempathy", MultiBot.tips.priest.playbook.shadowDebuff).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +shadow debuff,?", "co -shadow debuff,?", pButton.getName())) then
			pButton.getButton("DpsDebuff").setEnable()
		else
			pButton.getButton("DpsDebuff").setDisable()
		end
	end
	
	tFrame.addButton("ShadowAoe", 0, 26, "spell_arcane_arcanetorrent", MultiBot.tips.priest.playbook.shadowAoe).setDisable()
	.doLeft = function(pButton)
		MultiBot.OnOffActionToTarget(pButton, "co +shadow aoe,?", "co -shadow aoe,?", pButton.getName())
	end
	
	tFrame.addButton("Shadow", 0, 52, "spell_holy_devotion", MultiBot.tips.priest.playbook.shadow).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +shadow,?", "co -shadow,?", pButton.getName())) then
			pButton.getButton("Heal").setDisable()
			pButton.getButton("Dps").setEnable()
		else
			pButton.getButton("Dps").setDisable()
		end
	end
	
	-- DPS --
	
	pFrame.addButton("DpsControl", -90, 0, "ability_warrior_challange", MultiBot.tips.priest.dps.master)
	.doLeft = function(pButton)
		MultiBot.ShowHideSwitch(pButton.getFrame("DpsControl"))
	end
	
	local tFrame = pFrame.addFrame("DpsControl", -92, 30)
	tFrame:Hide()
	
	tFrame.addButton("DpsAssist", 0, 0, "spell_holy_heroism", MultiBot.tips.priest.dps.dpsAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps assist,?", "co -dps assist,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	tFrame.addButton("DpsDebuff", 0, 26, "spell_holy_restoration", MultiBot.tips.priest.dps.dpsDebuff).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +shadow debuff,?", "co -shadow debuff,?", pButton.getName())) then
			pButton.getButton("ShadowDebuff").setEnable()
		else
			pButton.getButton("ShadowDebuff").setDisable()
		end
	end
	
	tFrame.addButton("DpsAoe", 0, 52, "spell_holy_surgeoflight", MultiBot.tips.priest.dps.dpsAoe).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +dps aoe,?", "co -dps aoe,?", pButton.getName())) then
			pButton.getButton("TankAssist").setDisable()
			pButton.getButton("DpsAssist").setDisable()
		end
	end
	
	tFrame.addButton("Dps", 0, 78, "spell_holy_divinepurpose", MultiBot.tips.priest.dps.dps).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +shadow,?", "co -shadow,?", pButton.getName())) then
			pButton.getButton("Shadow").setEnable()
			pButton.getButton("Heal").setDisable()
		else
			pButton.getButton("Shadow").setDisable()
		end
	end
	
	-- ASSIST --
	
	pFrame.addButton("TankAssist", -120, 0, "ability_warrior_innerrage", MultiBot.tips.priest.tankAssist).setDisable()
	.doLeft = function(pButton)
		if(MultiBot.OnOffActionToTarget(pButton, "co +tank assist,?", "co -tank assist,?", pButton.getName())) then
			pButton.getButton("DpsAssist").setDisable()
			pButton.getButton("DpsAoe").setDisable()
		end
	end
	
	-- STRATEGIES --
	
	if(MultiBot.isInside(pCombat, "heal")) then pFrame.getButton("Heal").setEnable() end
	if(MultiBot.isInside(pNormal, "buff,")) then pFrame.getButton("Buff").setEnable() end
	if(MultiBot.isInside(pCombat, "shadow debuff")) then pFrame.getButton("ShadowDebuff").setEnable() end
	if(MultiBot.isInside(pCombat, "shadow aoe")) then pFrame.getButton("ShadowAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "shadow,")) then pFrame.getButton("Shadow").setEnable() end
	if(MultiBot.isInside(pCombat, "dps assist")) then pFrame.getButton("DpsAssist").setEnable() end
	if(MultiBot.isInside(pCombat, "shadow debuff")) then pFrame.getButton("DpsDebuff").setEnable() end
	if(MultiBot.isInside(pCombat, "dps aoe")) then pFrame.getButton("DpsAoe").setEnable() end
	if(MultiBot.isInside(pCombat, "shadow,")) then pFrame.getButton("Shadow").setEnable() end
	if(MultiBot.isInside(pCombat, "tank assist")) then pFrame.getButton("TankAssist").setEnable() end
end