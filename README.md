# MultiBot
适用于AzerothCore模块"Playerbot"的用户界面，由Liyunfan1223开发。<br>
已在美服和德服3.3.5版本的巫妖王之怒客户端上测试通过。

# 安装说明
只需将文件放置在World of Warcraft插件目录中名为"MultiBot"的文件夹内即可。<br>
示例："C:\WorldOfWarcraft\Interface\AddOns\MultiBot"

# 使用方法
启动魔兽世界后，在聊天框中输入"/multibot"或"/mbot"或"/mb"即可。

# 当前状态
<table>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-00-Start.png"></td>
    <td>
      此图片显示了启动后的默认MultiBot界面。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-00-Main-Control.png"></td>
    <td>
      水平按钮栏是主控制面板。
      来自主控制面板的命令会发送给队伍或团队中的所有机器人。
      功能差异在工具提示中有说明。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-00-Playerbots.png"></td>
    <td>
      垂直按钮栏是玩家机器人选择器。
      在这里您可以找到您账号中的所有角色。
      每个角色都有一个对应的按钮。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-00-Character-Info.png"></td>
    <td>
      角色按钮的工具提示会显示该角色的职业和名称。
      这可以帮助您识别自己的角色。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Playerbot-Online.png"></td>
    <td>
      左键点击可以加载您的角色，并自动将其添加到队伍或团队中。
      出现的水平按钮栏是玩家机器人控制面板。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Combat-Behaviour.png"></td>
    <td>
      您可以使用左侧的按钮来调整玩家机器人的战斗行为。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Summon.png"></td>
    <td>
      右侧第一个按钮可以召唤您的玩家机器人。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Group-And-Ungroup.png"></td>
    <td>
      右侧第二个按钮可以将您的玩家机器人添加到队伍或团队中，或者将其移出队伍或团队。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Non-Combat-Behaviour.png"></td>
    <td>
      接下来的三个按钮可以调整您的玩家机器人的非战斗行为。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-01-Inventory.png"></td>
    <td>
      右侧最后一个按钮可以打开玩家机器人的背包。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-02-Inspect-And-Inventory.png"></td>
    <td>
      左键点击背包按钮会打开您玩家机器人的观察和背包窗口。
      注意：只有当玩家机器人在可接触范围内时，观察窗口才会打开。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-03-Sell-Mode.png"></td>
    <td>
      背包会自动以出售模式打开。
      在出售模式下，左键点击物品即可出售。
      注意：您必须将商人设为目标。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-03-Equip-Mode.png"></td>
    <td>
      使用此按钮可以切换到装备模式。
      在装备模式下，左键点击物品即可装备。
      注意：仅适用于装备物品。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-03-Use-Mode.png"></td>
    <td>
      使用此按钮可以切换到使用模式。
      在使用模式下，左键点击物品即可使用。
      注意：仅适用于可使用物品。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-03-Destroy-Mode.png"></td>
    <td>
      使用此按钮可以切换到销毁模式。
      在销毁模式下，左键点击物品即可销毁。
      重要：此操作没有安全确认，适用于所有物品。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-03-View-Mode.png"></td>
    <td>
      无论选择哪种模式，都可以查看物品。
      也就是说：查看模式始终处于激活状态。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-04-Hide-Playerbot-Control.png"></td>
    <td>
      左键点击角色按钮可以隐藏和显示玩家机器人控制面板。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-05-Hide-Playerbots.png"></td>
    <td>
      左键点击左侧滚动按钮可以隐藏和显示玩家机器人。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-06-Show-Friendbots.png"></td>
    <td>
      左键点击右侧滚动按钮可以隐藏和显示好友机器人。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-06-Firendbots.png"></td>
    <td>
      垂直按钮栏是好友选择器。
      在这里您可以找到好友列表中的角色。
      最多可显示10个按钮。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-06-Browse-Friendbots.png"></td>
    <td>
      使用此按钮可以浏览好友列表。
      每次点击会显示接下来的10个角色。
      到达末尾时会从头开始。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-07-Filter-Selection.png"></td>
    <td>
      您可以限制选择范围，以便更容易找到所需的好友机器人。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-07-Filter-By-Classes.png"></td>
    <td>
      只需按下其中一个筛选按钮即可缩小选择范围。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-08-No-Browse-Button.png"></td>
    <td>
      如您所见，浏览按钮已消失。
      这是因为筛选器将选择范围缩小到少于10个好友机器人。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-08-Shows-Filter.png"></td>
    <td>
      筛选器会显示当前的限制条件。
      在此示例中，我们筛选出战士职业。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-08-Friendbot-Button.png"></td>
    <td>
      此按钮是筛选的结果。
      功能与玩家机器人几乎相同。
      因此我们不再进一步说明。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Tank-Attack.png"></td>
    <td>
      这是坦克攻击按钮。
      左键点击按钮会让所有坦克攻击您的目标。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Actionbar-Attack.png"></td>
    <td>
      这是攻击动作条。
      左键点击按钮会执行选定的动作。
      右键点击按钮会显示和隐藏可选动作。
      要替换选定的动作，请右键点击可选动作。
      要执行可选动作，请左键点击它。
      默认动作是"所有成员攻击我的目标"。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Modebar.png"></td>
    <td>
      这是模式条。
      左键点击按钮会启用和禁用选定的模式。
      右键点击按钮会显示和隐藏模式选择。
      要选择其他模式，请左键点击模式选项。
      模式会在选择时激活。
      默认模式切换是"被动模式"。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Stay-Follow.png"></td>
    <td>
      这是停留/跟随切换按钮。
      左键点击按钮会向队伍或团队发送停留命令。
      再次左键点击按钮会向队伍或团队发送跟随命令。
      图标会显示当前状态。
      默认状态是"跟随"。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Actionbar-Flee.png"></td>
    <td>
      这是逃跑动作条。
      左键点击按钮会执行选定的动作。
      右键点击按钮会显示和隐藏可选动作。
      要替换选定的动作，请右键点击可选动作。
      要执行可选动作，请左键点击它。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Formation.png"></td>
    <td>
      这是阵型选择器。
      左键点击按钮会显示和隐藏选项。
      左键点击选项按钮会向队伍或团队发送相应的阵型命令。
      右键点击按钮会询问队伍或团队当前的阵型。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Beastmaster.png"></td>
    <td>
      这是兽王控制面板。
      左键点击按钮会显示和隐藏动作。
      左键点击动作会向您的目标、队伍或团队发送相应的命令。
      它支持Azerothcore的"mod-beastmaster"模块。
      这些按钮适用于目标、队伍和团队。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Control.png"></td>
    <td>
      这是MultiBot控制面板。
      左键点击按钮会显示和隐藏控制选项。
      在这里您可以找到针对机器人的"重置"、"重置机器人AI"和"纳克萨玛斯"命令。
      这些按钮适用于目标、队伍和团队。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Drink.png"></td>
    <td>
      此按钮会向队伍或团队发送"喝水"命令。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Release.png"></td>
    <td>
      此按钮会向队伍或团队发送"释放"命令。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Revive.png"></td>
    <td>
      此按钮会向队伍或团队发送"复活"命令。
    </td>
  </tr>
  <tr>
    <td><img src="https://github.com/Macx-Lio/MultiBot/blob/main/Screenshots/Handout-09-Summon.png"></td>
    <td>
      此按钮会召唤所有活跃的好友和玩家机器人。
    </td>
  </tr>
</table>

# 即将推出
目前我正在开发队伍和团队控制功能。

# 当前不支持的功能
任务系统