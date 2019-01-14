local L = LibStub("AceLocale-3.0"):NewLocale("Details", "zhCN") 
if not L then return end 

L["ABILITY_ID"] = "技能 ID"
L["STRING_"] = ""
L["STRING_ABSORBED"] = "吸收"
L["STRING_ACTORFRAME_NOTHING"] = "没有报告"
L["STRING_ACTORFRAME_REPORTAT"] = "在"
L["STRING_ACTORFRAME_REPORTOF"] = "的"
L["STRING_ACTORFRAME_REPORTTARGETS"] = "报告的对象"
L["STRING_ACTORFRAME_REPORTTO"] = "报告给"
L["STRING_ACTORFRAME_SPELLDETAILS"] = "法术细节"
L["STRING_ACTORFRAME_SPELLSOF"] = "法术的"
L["STRING_ACTORFRAME_SPELLUSED"] = "所有使用的法术"
L["STRING_AGAINST"] = "相反"
L["STRING_ALIVE"] = "存活"
L["STRING_ALPHA"] = "Alpha"
L["STRING_ANCHOR_BOTTOM"] = "下"
L["STRING_ANCHOR_BOTTOMLEFT"] = "左下"
L["STRING_ANCHOR_BOTTOMRIGHT"] = "右下"
L["STRING_ANCHOR_LEFT"] = "左"
L["STRING_ANCHOR_RIGHT"] = "右"
L["STRING_ANCHOR_TOP"] = "上"
L["STRING_ANCHOR_TOPLEFT"] = "左上"
L["STRING_ANCHOR_TOPRIGHT"] = "右上"
L["STRING_ASCENDING"] = "升序"
L["STRING_ATACH_DESC"] = "窗口 #%d 和窗口 #%d 合成一个群组。"
L["STRING_ATTRIBUTE_CUSTOM"] = "自订"
L["STRING_ATTRIBUTE_DAMAGE"] = "伤害"
L["STRING_ATTRIBUTE_DAMAGE_BYSPELL"] = "受到的技能伤害"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS"] = "光环 & 虚空领域"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS_REPORT"] = "减益魔法伤害和持续时间"
L["STRING_ATTRIBUTE_DAMAGE_DONE"] = "造成伤害"
L["STRING_ATTRIBUTE_DAMAGE_DPS"] = "每秒伤害"
L["STRING_ATTRIBUTE_DAMAGE_ENEMIES"] = "敌对受到伤害"
L["STRING_ATTRIBUTE_DAMAGE_ENEMIES_DONE"] = "敌方的伤害"
L["STRING_ATTRIBUTE_DAMAGE_FRAGS"] = "击杀"
L["STRING_ATTRIBUTE_DAMAGE_FRIENDLYFIRE"] = "队友误伤"
L["STRING_ATTRIBUTE_DAMAGE_TAKEN"] = "受到伤害"
L["STRING_ATTRIBUTE_ENERGY"] = "能量"
L["STRING_ATTRIBUTE_ENERGY_ALTERNATEPOWER"] = "特殊能量"
L["STRING_ATTRIBUTE_ENERGY_ENERGY"] = "能量生成"
L["STRING_ATTRIBUTE_ENERGY_MANA"] = "法力恢复"
L["STRING_ATTRIBUTE_ENERGY_RAGE"] = "怒气生成"
L["STRING_ATTRIBUTE_ENERGY_RESOURCES"] = "资源"
L["STRING_ATTRIBUTE_ENERGY_RUNEPOWER"] = "符文能量生成"
L["STRING_ATTRIBUTE_HEAL"] = "治疗"
L["STRING_ATTRIBUTE_HEAL_ABSORBED"] = "治疗吸收"
L["STRING_ATTRIBUTE_HEAL_DONE"] = "造成治疗"
L["STRING_ATTRIBUTE_HEAL_ENEMY"] = "敌方的治疗"
L["STRING_ATTRIBUTE_HEAL_HPS"] = "每秒治疗"
L["STRING_ATTRIBUTE_HEAL_OVERHEAL"] = "过量治疗"
L["STRING_ATTRIBUTE_HEAL_PREVENT"] = "伤害预防"
L["STRING_ATTRIBUTE_HEAL_TAKEN"] = "受到治疗"
L["STRING_ATTRIBUTE_MISC"] = "杂项"
L["STRING_ATTRIBUTE_MISC_BUFF_UPTIME"] = "增益持续时间"
L["STRING_ATTRIBUTE_MISC_CCBREAK"] = "打破控场"
L["STRING_ATTRIBUTE_MISC_DEAD"] = "死亡"
L["STRING_ATTRIBUTE_MISC_DEBUFF_UPTIME"] = "减益持续时间"
L["STRING_ATTRIBUTE_MISC_DEFENSIVE_COOLDOWNS"] = "冷却"
L["STRING_ATTRIBUTE_MISC_DISPELL"] = "驱散"
L["STRING_ATTRIBUTE_MISC_INTERRUPT"] = "打断"
L["STRING_ATTRIBUTE_MISC_RESS"] = "战斗复活"
L["STRING_AUTO"] = "自动"
L["STRING_AUTOSHOT"] = "自动射击"
L["STRING_AVERAGE"] = "平均"
L["STRING_BLOCKED"] = "格挡"
L["STRING_BOTTOM"] = "底部"
L["STRING_BOTTOM_TO_TOP"] = "从下往上"
L["STRING_CAST"] = "释放"
L["STRING_CAUGHT"] = "捕捉"
L["STRING_CCBROKE"] = "移除群体控制"
L["STRING_CENTER"] = "中间"
L["STRING_CENTER_UPPER"] = "中间"
L["STRING_CHANGED_TO_CURRENT"] = "片段已变化: |cFFFFFF00当前|r"
L["STRING_CHANNEL_PRINT"] = "观察者"
L["STRING_CHANNEL_RAID"] = "团队"
L["STRING_CHANNEL_SAY"] = "说"
L["STRING_CHANNEL_WHISPER"] = "密语"
L["STRING_CHANNEL_WHISPER_TARGET_COOLDOWN"] = "Whisper Cooldown Target"
L["STRING_CHANNEL_YELL"] = "喊"
L["STRING_CLICK_REPORT_LINE1"] = "|cFFFFCC22点击|r: |cFFFFEE00报告|r"
L["STRING_CLICK_REPORT_LINE2"] = "|cFFFFCC22Shift+点击|r: |cFFFFEE00窗口模式|r"
L["STRING_CLOSEALL"] = "所有的 Details 窗口都关闭了, 输入 '/details show' 来重新打开."
L["STRING_COLOR"] = "颜色"
L["STRING_COMMAND_LIST"] = "命令列表"
L["STRING_COOLTIP_NOOPTIONS"] = "无选项"
L["STRING_CREATEAURA"] = "创建一个wa监视"
L["STRING_CRITICAL_HITS"] = "致命一击"
L["STRING_CRITICAL_ONLY"] = "致命"
L["STRING_CURRENT"] = "当前"
L["STRING_CURRENTFIGHT"] = "当前片段"
L["STRING_CUSTOM_ACTIVITY_ALL"] = "活跃时间"
L["STRING_CUSTOM_ACTIVITY_ALL_DESC"] = "显示团队中每个玩家的活跃度"
L["STRING_CUSTOM_ACTIVITY_DPS"] = "活跃伤害时间"
L["STRING_CUSTOM_ACTIVITY_DPS_DESC"] = "每个人造成伤害的时间"
L["STRING_CUSTOM_ACTIVITY_HPS"] = "活跃治疗时间"
L["STRING_CUSTOM_ACTIVITY_HPS_DESC"] = "每个人造成治疗的时间."
L["STRING_CUSTOM_ATTRIBUTE_DAMAGE"] = "伤害"
L["STRING_CUSTOM_ATTRIBUTE_HEAL"] = "治疗"
L["STRING_CUSTOM_ATTRIBUTE_SCRIPT"] = "自定义脚本"
L["STRING_CUSTOM_AUTHOR"] = "作者:"
L["STRING_CUSTOM_AUTHOR_DESC"] = "编写了这个统计的人"
L["STRING_CUSTOM_CANCEL"] = "取消"
L["STRING_CUSTOM_CC_DONE"] = "造成群体控制"
L["STRING_CUSTOM_CC_RECEIVED"] = "受到群体控制"
L["STRING_CUSTOM_CREATE"] = "创建"
L["STRING_CUSTOM_CREATED"] = "新的统计方式已建立."
L["STRING_CUSTOM_DAMAGEONANYMARKEDTARGET"] = "对其它标记目标造成的伤害"
L["STRING_CUSTOM_DAMAGEONANYMARKEDTARGET_DESC"] = "显示对其它所有标记的目标造成的伤害数值"
L["STRING_CUSTOM_DAMAGEONSHIELDS"] = "对护盾造成的伤害"
L["STRING_CUSTOM_DAMAGEONSKULL"] = "对骷髅标记目标造成的伤害"
L["STRING_CUSTOM_DAMAGEONSKULL_DESC"] = "显示对标记骷髅的目标造成的伤害数值"
L["STRING_CUSTOM_DESCRIPTION"] = "描述:"
L["STRING_CUSTOM_DESCRIPTION_DESC"] = "描述这项统计的用途."
L["STRING_CUSTOM_DONE"] = "完成"
L["STRING_CUSTOM_DTBS"] = "受到技能伤害"
L["STRING_CUSTOM_DTBS_DESC"] = "显示敌对技能伤害."
L["STRING_CUSTOM_DYNAMICOVERAL"] = "动态总体伤害"
L["STRING_CUSTOM_EDIT"] = "编辑"
L["STRING_CUSTOM_EDIT_SEARCH_CODE"] = "编辑搜索代码"
L["STRING_CUSTOM_EDIT_TOOLTIP_CODE"] = "编辑提示框代码"
L["STRING_CUSTOM_EDITCODE_DESC"] = "这是进阶功能,用户可以创建自己的统计用代码."
L["STRING_CUSTOM_EDITTOOLTIP_DESC"] = "这是提示框代码,当移至统计条上时显示."
L["STRING_CUSTOM_ENEMY_DT"] = " 受到伤害"
L["STRING_CUSTOM_EXPORT"] = "导出"
L["STRING_CUSTOM_FUNC_INVALID"] = "自定义脚本无效,无法刷新窗口"
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT"] = "治疗药水&治疗石"
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT_DESC"] = "显示你的队伍中谁使用过治疗药水或者治疗石"
L["STRING_CUSTOM_ICON"] = "图标:"
L["STRING_CUSTOM_IMPORT"] = "导入"
L["STRING_CUSTOM_IMPORT_ALERT"] = "统计方式已加载,点击导入来确认."
L["STRING_CUSTOM_IMPORT_BUTTON"] = "导入"
L["STRING_CUSTOM_IMPORT_ERROR"] = "导入失败, 无效的字符串."
L["STRING_CUSTOM_IMPORTED"] = "统计方式导入成功."
L["STRING_CUSTOM_LONGNAME"] = "名字太长, 最大允许32个字符."
L["STRING_CUSTOM_MYSPELLS"] = "我的技能"
L["STRING_CUSTOM_MYSPELLS_DESC"] = "在统计中显示你的技能."
L["STRING_CUSTOM_NAME"] = "名字:"
L["STRING_CUSTOM_NAME_DESC"] = "给你的自定义统计起个名字"
L["STRING_CUSTOM_NEW"] = "管理自定义统计"
L["STRING_CUSTOM_PASTE"] = "粘贴到这里:"
L["STRING_CUSTOM_POT_DEFAULT"] = "有使用药水"
L["STRING_CUSTOM_POT_DEFAULT_DESC"] = "显示你的团队中谁在战斗时使用了药水."
L["STRING_CUSTOM_REMOVE"] = "删除"
L["STRING_CUSTOM_REPORT"] = "(自定义)"
L["STRING_CUSTOM_SAVE"] = "保存变更"
L["STRING_CUSTOM_SAVED"] = "自定义统计已保存."
L["STRING_CUSTOM_SHORTNAME"] = "名字需要至少5个字符."
L["STRING_CUSTOM_SKIN_TEXTURE"] = "自定义皮肤文件"
L["STRING_CUSTOM_SKIN_TEXTURE_DESC"] = [=[tga图片的文件名(.tga).

 必须放在下面指定的文件夹里：

 |cFFFFFF00WoW/Interface/|r

 |cFFFFFF00重要提示:|r 在创建文件前，选择游戏客户端所在路径。 之后， 使用 /reload 命令来加载新的贴图文件。]=]
L["STRING_CUSTOM_SOURCE"] = "来源:"
L["STRING_CUSTOM_SOURCE_DESC"] = [=[是谁触发的效果.
在右侧的按钮显示团队副本战斗中的NPC名单.]=]
L["STRING_CUSTOM_SPELLID"] = "法术 Id:"
L["STRING_CUSTOM_SPELLID_DESC"] = [=[可选项, 是指由来源对目标造成该效果的法术.
在右侧的按钮显示团队副本战斗中的NPC名单.]=]
L["STRING_CUSTOM_TARGET"] = "目标:"
L["STRING_CUSTOM_TARGET_DESC"] = [=[这是来源的目标.
在右侧的按钮显示团队副本战斗中的NPC名单.]=]
L["STRING_CUSTOM_TEMPORARILY"] = " (|cFFFFC000临时|r)"
L["STRING_DAMAGE"] = "伤害"
L["STRING_DAMAGE_DPS_IN"] = "受到的DPS来自"
L["STRING_DAMAGE_FROM"] = "伤害来自"
L["STRING_DAMAGE_TAKEN_FROM"] = "受到伤害来自"
L["STRING_DAMAGE_TAKEN_FROM2"] = "施加伤害在"
L["STRING_DEFENSES"] = "防御"
L["STRING_DESCENDING"] = "降序"
L["STRING_DETACH_DESC"] = "分离窗口组群"
L["STRING_DISCARD"] = "放弃"
L["STRING_DISPELLED"] = "增益/减益 移除"
L["STRING_DODGE"] = "闪避"
L["STRING_DOT"] = " (DoT)"
L["STRING_DPS"] = "每秒伤害"
L["STRING_EMPTY_SEGMENT"] = "空的片段"
L["STRING_ENABLED"] = "启用"
L["STRING_ENVIRONMENTAL_DROWNING"] = "环境伤害 (溺水)"
L["STRING_ENVIRONMENTAL_FALLING"] = "环境伤害 (高处坠落)"
L["STRING_ENVIRONMENTAL_FATIGUE"] = "环境伤害 (疲劳)"
L["STRING_ENVIRONMENTAL_FIRE"] = "环境伤害 (火烧)"
L["STRING_ENVIRONMENTAL_LAVA"] = "环境伤害 (岩浆)"
L["STRING_ENVIRONMENTAL_SLIME"] = "环境伤害 (粘液)"
L["STRING_EQUILIZING"] = "分享首领战数据"
L["STRING_ERASE"] = "删除"
L["STRING_ERASE_DATA"] = "重置所有数据"
L["STRING_ERASE_DATA_OVERALL"] = "重置总计数据"
L["STRING_ERASE_IN_COMBAT"] = "安排在当前战斗结束后重置数据."
L["STRING_EXAMPLE"] = "例子"
L["STRING_EXPLOSION"] = "爆炸"
L["STRING_FAIL_ATTACKS"] = "攻击失败"
L["STRING_FEEDBACK_CURSE_DESC"] = "在Details!页面上提交一个表单或留言."
L["STRING_FEEDBACK_MMOC_DESC"] = "在mmo-champion论坛我们的版块中发帖."
L["STRING_FEEDBACK_PREFERED_SITE"] = "选择你偏好的社交网站:"
L["STRING_FEEDBACK_SEND_FEEDBACK"] = "发送反馈"
L["STRING_FEEDBACK_WOWI_DESC"] = "在Details!项目页面中发表评论."
L["STRING_FIGHTNUMBER"] = "战斗 #"
L["STRING_FORGE_BUTTON_ALLSPELLS"] = "所有技能"
L["STRING_FORGE_BUTTON_ALLSPELLS_DESC"] = "列出玩家和NPC的所有技能."
L["STRING_FORGE_BUTTON_BWTIMERS"] = "BigWigs计时器"
L["STRING_FORGE_BUTTON_BWTIMERS_DESC"] = "列出BigWigs中的计时器"
L["STRING_FORGE_BUTTON_DBMTIMERS"] = "DBM计时器"
L["STRING_FORGE_BUTTON_DBMTIMERS_DESC"] = "列出Deadly Boss Mods中的计时器"
L["STRING_FORGE_BUTTON_ENCOUNTERSPELLS"] = "首领技能"
L["STRING_FORGE_BUTTON_ENCOUNTERSPELLS_DESC"] = "只列出团队和地下城首领战中的技能."
L["STRING_FORGE_BUTTON_ENEMIES"] = "敌人"
L["STRING_FORGE_BUTTON_ENEMIES_DESC"] = "列出当前战斗中的敌人."
L["STRING_FORGE_BUTTON_PETS"] = "宠物"
L["STRING_FORGE_BUTTON_PETS_DESC"] = "列出当前战斗中的宠物."
L["STRING_FORGE_BUTTON_PLAYERS"] = "玩家"
L["STRING_FORGE_BUTTON_PLAYERS_DESC"] = "列出当前战斗中的玩家."
L["STRING_FORGE_ENABLEPLUGINS"] = "\"请在ESC菜单>插件中打开带有副本名称的Details!插件,比如Details: Tomb of Sargeras.\""
L["STRING_FORGE_FILTER_BARTEXT"] = "条名称"
L["STRING_FORGE_FILTER_CASTERNAME"] = "施放者名称"
L["STRING_FORGE_FILTER_ENCOUNTERNAME"] = "首领战名称"
L["STRING_FORGE_FILTER_ENEMYNAME"] = "敌人名称"
L["STRING_FORGE_FILTER_OWNERNAME"] = "所有者名称"
L["STRING_FORGE_FILTER_PETNAME"] = "宠物名称"
L["STRING_FORGE_FILTER_PLAYERNAME"] = "玩家名称"
L["STRING_FORGE_FILTER_SPELLNAME"] = "技能名称"
L["STRING_FORGE_HEADER_BARTEXT"] = "条文本"
L["STRING_FORGE_HEADER_CASTER"] = "施放者"
L["STRING_FORGE_HEADER_CLASS"] = "职业"
L["STRING_FORGE_HEADER_CREATEAURA"] = "创建监控"
L["STRING_FORGE_HEADER_ENCOUNTERID"] = "首领战ID"
L["STRING_FORGE_HEADER_ENCOUNTERNAME"] = "首领战名称"
L["STRING_FORGE_HEADER_EVENT"] = "事件"
L["STRING_FORGE_HEADER_FLAG"] = "标志"
L["STRING_FORGE_HEADER_GUID"] = "GUID"
L["STRING_FORGE_HEADER_ICON"] = "图标"
L["STRING_FORGE_HEADER_ID"] = "ID"
L["STRING_FORGE_HEADER_INDEX"] = "序号"
L["STRING_FORGE_HEADER_NAME"] = "名称"
L["STRING_FORGE_HEADER_NPCID"] = "NpcID"
L["STRING_FORGE_HEADER_OWNER"] = "所有者"
L["STRING_FORGE_HEADER_SCHOOL"] = "法术类别"
L["STRING_FORGE_HEADER_SPELLID"] = "技能ID"
L["STRING_FORGE_HEADER_TIMER"] = "计时"
L["STRING_FORGE_TUTORIAL_DESC"] = "浏览技能和首领模块计时并点击'|cFFFFFF00创建监控|r'来创建监控."
L["STRING_FORGE_TUTORIAL_TITLE"] = "欢迎来到Details! Forge"
L["STRING_FORGE_TUTORIAL_VIDEO"] = "一个通过首领战斗模块监控的示例:"
L["STRING_FREEZE"] = "这个片段在此阶段不可用"
L["STRING_FROM"] = "从"
L["STRING_GERAL"] = "一般"
L["STRING_GLANCING"] = "擦过"
L["STRING_GUILDDAMAGERANK_BOSS"] = "BOSS"
L["STRING_GUILDDAMAGERANK_DATABASEERROR"] = "'|cFFFFFF00Details! Storage|r'打开失败,可能这个插件被禁用了?"
L["STRING_GUILDDAMAGERANK_DIFF"] = "难度"
L["STRING_GUILDDAMAGERANK_GUILD"] = "公会"
L["STRING_GUILDDAMAGERANK_PLAYERBASE"] = "玩家分组"
L["STRING_GUILDDAMAGERANK_PLAYERBASE_INDIVIDUAL"] = "独立"
L["STRING_GUILDDAMAGERANK_PLAYERBASE_PLAYER"] = "玩家"
L["STRING_GUILDDAMAGERANK_PLAYERBASE_RAID"] = "所有玩家"
L["STRING_GUILDDAMAGERANK_RAID"] = "副本"
L["STRING_GUILDDAMAGERANK_ROLE"] = "职责"
L["STRING_GUILDDAMAGERANK_SHOWHISTORY"] = "显示历史"
L["STRING_GUILDDAMAGERANK_SHOWRANK"] = "显示公会排行"
L["STRING_GUILDDAMAGERANK_SYNCBUTTONTEXT"] = "与公会同步"
L["STRING_GUILDDAMAGERANK_TUTORIAL_DESC"] = "Details!会保存你与公会在首领战中造成的伤害和治疗量.\\n\\n勾选'|cFFFFFF00显示历史|r'以浏览历史记录,所有战斗记录都会显示.\\n'勾选|cFFFFFF00显示公会排行|r'会显示所选首领站中的排名数据.\\n\\n如果你是第一次使用这个工具或者你缺席了某次公会活动,点击'|cFFFFFF00与公会同步|r'按钮."
L["STRING_GUILDDAMAGERANK_WINDOWALERT"] = "首领被击败!显示排行"
L["STRING_HEAL"] = "治疗"
L["STRING_HEAL_ABSORBED"] = "治疗吸收"
L["STRING_HEAL_CRIT"] = "治疗爆击"
L["STRING_HEALING_FROM"] = "受到治疗来自"
L["STRING_HEALING_HPS_FROM"] = "每秒治疗来自"
L["STRING_HITS"] = "命中"
L["STRING_HPS"] = "每秒治疗"
L["STRING_IMAGEEDIT_ALPHA"] = "透明度"
L["STRING_IMAGEEDIT_CROPBOTTOM"] = "剪裁底部"
L["STRING_IMAGEEDIT_CROPLEFT"] = "剪裁左部"
L["STRING_IMAGEEDIT_CROPRIGHT"] = "剪裁右部"
L["STRING_IMAGEEDIT_CROPTOP"] = "剪裁顶部"
L["STRING_IMAGEEDIT_DONE"] = "完成"
L["STRING_IMAGEEDIT_FLIPH"] = "水平翻转"
L["STRING_IMAGEEDIT_FLIPV"] = "垂直翻转"
L["STRING_INFO_TAB_AVOIDANCE"] = "闪避"
L["STRING_INFO_TAB_COMPARISON"] = "比较"
L["STRING_INFO_TAB_SUMMARY"] = "概要"
L["STRING_INFO_TUTORIAL_COMPARISON1"] = "点击 |cFFFFDD00比较|r 标签来比较查看同一职业下的玩家。"
L["STRING_INSTANCE_CHAT"] = "副本频道"
L["STRING_INSTANCE_LIMIT"] = "最大窗口数量已经达到，你可以在选项面板修改这个限制。你也可以重新打开关闭的窗口 通过 (#) 窗口菜单。"
L["STRING_INTERFACE_OPENOPTIONS"] = "打开选项面板"
L["STRING_ISA_PET"] = "这个角色是一个宠物"
L["STRING_KEYBIND_BOOKMARK"] = "书签"
L["STRING_KEYBIND_BOOKMARK_NUMBER"] = "书签 #%s"
L["STRING_KEYBIND_RESET_SEGMENTS"] = "重置片段"
L["STRING_KEYBIND_SCROLL_DOWN"] = "向下滚动所有窗口"
L["STRING_KEYBIND_SCROLL_UP"] = "向上滚动所有窗口"
L["STRING_KEYBIND_SCROLLING"] = "滚动"
L["STRING_KEYBIND_SEGMENTCONTROL"] = "片段控制"
L["STRING_KEYBIND_TOGGLE_WINDOW"] = "切换窗口 #%s"
L["STRING_KEYBIND_TOGGLE_WINDOWS"] = "切换所有"
L["STRING_KEYBIND_WINDOW_CONTROL"] = "窗口控制"
L["STRING_KEYBIND_WINDOW_REPORT"] = "将报告数据显示在窗口 #%s。"
L["STRING_KEYBIND_WINDOW_REPORT_HEADER"] = "报告数据"
L["STRING_KILLED"] = "已击杀"
L["STRING_LAST_COOLDOWN"] = "last cooldown used"
L["STRING_LEFT"] = "左"
L["STRING_LEFT_CLICK_SHARE"] = "左键点击报告。"
L["STRING_LEFT_TO_RIGHT"] = "从左往右"
L["STRING_LOCK_DESC"] = "锁定或解锁窗口"
L["STRING_LOCK_WINDOW"] = "锁定"
L["STRING_MASTERY"] = "精通"
L["STRING_MAXIMUM"] = "最大"
L["STRING_MAXIMUM_SHORT"] = "最大"
L["STRING_MEDIA"] = "媒体"
L["STRING_MELEE"] = "近战"
L["STRING_MEMORY_ALERT_BUTTON"] = "我的理解"
L["STRING_MEMORY_ALERT_TEXT1"] = "Details! 使用了大量的内存，但是，|cFFFF8800与流行的认知相反|r，插件的内存占用|cFFFF8800不影响|r任何游戏表现或你的FPS。"
L["STRING_MEMORY_ALERT_TEXT2"] = "所以，如果你看到 Details! 使用大量内存，不要惊慌 :D！|cFFFF8800一切正常!|r，已使用内存的一部分也会|cFFFF8800用于生成缓存|r，使插件运行更加流畅。"
L["STRING_MEMORY_ALERT_TEXT3"] = "但是，如果你想知道|cFFFF8800哪个插件占用较多内存|r或会导致游戏帧数降低，可以安装下列插件：“|cFFFFFF00AddOns Cpu Usage|r”。"
L["STRING_MEMORY_ALERT_TITLE"] = "请仔细阅读！"
L["STRING_MENU_CLOSE_INSTANCE"] = "关闭这个窗口"
L["STRING_MENU_CLOSE_INSTANCE_DESC"] = "关闭窗口只是使它处于未激活状态，你可以在任何时间通过窗口控制菜单重新打开它。"
L["STRING_MENU_CLOSE_INSTANCE_DESC2"] = "要想完全删除一个窗口，查看选项面板的杂项部分。"
L["STRING_MENU_INSTANCE_CONTROL"] = "窗口控制"
L["STRING_MINIMAP_TOOLTIP1"] = "|cFFCFCFCF左键点击|r: 打开选项面板"
L["STRING_MINIMAP_TOOLTIP11"] = "|cFFCFCFCF左键点击|r: 清除所有的片段"
L["STRING_MINIMAP_TOOLTIP12"] = "|cFFCFCFCF左键点击|r: 显示/隐藏窗口"
L["STRING_MINIMAP_TOOLTIP2"] = "|cFFCFCFCF右键点击|r: 快捷菜单"
L["STRING_MINIMAPMENU_CLOSEALL"] = "全部关闭"
L["STRING_MINIMAPMENU_HIDEICON"] = "隐藏小地图图标"
L["STRING_MINIMAPMENU_LOCK"] = "锁定"
L["STRING_MINIMAPMENU_NEWWINDOW"] = "创建一个新窗口"
L["STRING_MINIMAPMENU_REOPENALL"] = "打开所有"
L["STRING_MINIMAPMENU_UNLOCK"] = "解锁"
L["STRING_MINIMUM"] = "最小"
L["STRING_MINIMUM_SHORT"] = "最小"
L["STRING_MINITUTORIAL_BOOKMARK1"] = "右键点击窗口任何区域打开书签！"
L["STRING_MINITUTORIAL_BOOKMARK2"] = "书签是快速访问你常用统计的捷径。"
L["STRING_MINITUTORIAL_BOOKMARK3"] = "使用鼠标右键点击关闭书签面板。"
L["STRING_MINITUTORIAL_BOOKMARK4"] = "不再显示。"
L["STRING_MINITUTORIAL_CLOSECTRL1"] = "|cFFFFFF00Ctrl + 右键点击|r 关闭窗口！"
L["STRING_MINITUTORIAL_CLOSECTRL2"] = "如果你想重新打开它，去模式菜单->窗口控制或选项面板。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL1"] = "窗口处于被修改状态。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL2"] = "当选中时,群组内的所有窗口都会被修改."
L["STRING_MINITUTORIAL_OPTIONS_PANEL3"] = [=[创建一个组，拖动窗口 #2 到窗口 #1 附近。

点击 |cFFFFFF00取消|r 按钮拆分群组]=]
L["STRING_MINITUTORIAL_OPTIONS_PANEL4"] = "创建测试计量条来测试你的配置。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL5"] = "当编辑组启用时，群组中的所有窗口都改变了。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL6"] = "在此选择你想改变哪个窗口的外观。"
L["STRING_MINITUTORIAL_WINDOWS1"] = [=[你刚创建的一组窗口。

拆分它，点击锁图标。]=]
L["STRING_MINITUTORIAL_WINDOWS2"] = [=[窗口已被锁定。

单击标题栏并拖动到拉伸。]=]
L["STRING_MIRROR_IMAGE"] = "镜像"
L["STRING_MISS"] = "未命中"
L["STRING_MODE_ALL"] = "所有的"
L["STRING_MODE_GROUP"] = "标准"
L["STRING_MODE_OPENFORGE"] = "监控生成"
L["STRING_MODE_PLUGINS"] = "插件"
L["STRING_MODE_RAID"] = "插件: 团队"
L["STRING_MODE_SELF"] = "插件: 单刷"
L["STRING_MORE_INFO"] = "详情请见右箱。"
L["STRING_MULTISTRIKE"] = "Multistrike"
L["STRING_MULTISTRIKE_HITS"] = "Multistrike Hits"
L["STRING_MUSIC_DETAILS_ROBERTOCARLOS"] = [=[There's no use trying to forget
For a long time in your life I will live
Details as small of us]=]
L["STRING_NEWROW"] = "等待刷新..."
L["STRING_NEWS_REINSTALL"] = "更新后发现问题? 尝试 '/details reinstall' 命令."
L["STRING_NEWS_TITLE"] = "最近更新"
L["STRING_NO"] = "No"
L["STRING_NO_DATA"] = "数据已经被清除"
L["STRING_NO_SPELL"] = "no spell has been used"
L["STRING_NO_TARGET"] = "没有找到目标."
L["STRING_NO_TARGET_BOX"] = "没有目标可用"
L["STRING_NOCLOSED_INSTANCES"] = [=[没有关闭的窗口，
点击打开一个新的。]=]
L["STRING_NOLAST_COOLDOWN"] = "no cooldown used"
L["STRING_NOMORE_INSTANCES"] = [=[到达最大窗口数量
通过选项面板改变限制。]=]
L["STRING_NORMAL_HITS"] = "Normal Hits"
L["STRING_NUMERALSYSTEM"] = "数字显示"
L["STRING_NUMERALSYSTEM_ARABIC_MYRIAD_EASTASIA"] = "用千和万来显示数值"
L["STRING_NUMERALSYSTEM_ARABIC_WESTERN"] = "西方"
L["STRING_NUMERALSYSTEM_ARABIC_WESTERN_DESC"] = "通用，三位一分割"
L["STRING_NUMERALSYSTEM_DESC"] = "选择数字显示系统"
L["STRING_NUMERALSYSTEM_MYRIAD_EASTASIA"] = "东亚"
L["STRING_OFFHAND_HITS"] = "副手"
L["STRING_OPTIONS_3D_LALPHA_DESC"] = [=[在较低的模型调整透明度。

|cFFFFFF00重要|r: 一些模型忽略透明度。]=]
L["STRING_OPTIONS_3D_LANCHOR"] = "低 3D 模型:"
L["STRING_OPTIONS_3D_LENABLED_DESC"] = "Enabled or Disable the usage of a 3d model frame behind the bars."
L["STRING_OPTIONS_3D_LSELECT_DESC"] = "选择哪个模型将被用于在较低的模型栏。"
L["STRING_OPTIONS_3D_SELECT"] = "选择模型"
L["STRING_OPTIONS_3D_UALPHA_DESC"] = [=[在更高模型上调整透明度。

|cFFFFFF00重要|r: 一些模型忽略透明度。]=]
L["STRING_OPTIONS_3D_UANCHOR"] = "较高 3D 模型:"
L["STRING_OPTIONS_3D_UENABLED_DESC"] = "Enabled or Disable the usage of a 3d model frame above the bars."
L["STRING_OPTIONS_3D_USELECT_DESC"] = "选择哪个模型将被用于在较高的模型栏。"
L["STRING_OPTIONS_ADVANCED"] = "进阶"
L["STRING_OPTIONS_ALPHAMOD_ANCHOR"] = "自动隐藏:"
L["STRING_OPTIONS_ALWAYS_USE"] = "所有角色通用"
L["STRING_OPTIONS_ALWAYS_USE_DESC"] = "当启用时，所有角色都使用选择的配置，否则， 将显示一个面板供选择"
L["STRING_OPTIONS_ALWAYSSHOWPLAYERS"] = "显示未组队的玩家"
L["STRING_OPTIONS_ALWAYSSHOWPLAYERS_DESC"] = "当使用默认标准模式时，显示和你不在一个队伍中的玩家角色"
L["STRING_OPTIONS_ANCHOR"] = "侧"
L["STRING_OPTIONS_ANIMATEBARS"] = "动画计量条"
L["STRING_OPTIONS_ANIMATEBARS_DESC"] = "启用所有动画计量条"
L["STRING_OPTIONS_ANIMATESCROLL"] = "动画滚动计量条"
L["STRING_OPTIONS_ANIMATESCROLL_DESC"] = "当启用时，滚动计量条使用动画时显示或隐藏。"
L["STRING_OPTIONS_APPEARANCE"] = "外观"
L["STRING_OPTIONS_ATTRIBUTE_TEXT"] = "标题文本设置"
L["STRING_OPTIONS_ATTRIBUTE_TEXT_DESC"] = "这些选项控制窗口的标题文本。"
L["STRING_OPTIONS_AUTO_SWITCH"] = "所有角色 |cFFFFAA00(战斗中)|r"
L["STRING_OPTIONS_AUTO_SWITCH_COMBAT"] = "|cFFFFAA00(战斗中)|r"
L["STRING_OPTIONS_AUTO_SWITCH_DAMAGER_DESC"] = "When in damager specialization, this window show the selected attribute or plugin."
L["STRING_OPTIONS_AUTO_SWITCH_DESC"] = [=[当你进入战斗，此窗口显示选择的属性或插件。

|cFFFFFF00重要|r: 为每个角色选择的个体属性覆盖这里所选择的属性。]=]
L["STRING_OPTIONS_AUTO_SWITCH_HEALER_DESC"] = "当你是治疗专精时，窗口显示选择的属性或插件"
L["STRING_OPTIONS_AUTO_SWITCH_TANK_DESC"] = "当你是坦克专精时，窗口显示选择的属性或插件"
L["STRING_OPTIONS_AUTO_SWITCH_WIPE"] = "清除后"
L["STRING_OPTIONS_AUTO_SWITCH_WIPE_DESC"] = "在尝试击败团队首领失败后，此窗口自动显示该属性。"
L["STRING_OPTIONS_AVATAR"] = "选择头像"
L["STRING_OPTIONS_AVATAR_ANCHOR"] = "身份:"
L["STRING_OPTIONS_AVATAR_DESC"] = "头像也被送到公会成员，并显示在工具提示的顶部和玩家的详细信息窗口。"
L["STRING_OPTIONS_BAR_BACKDROP_ANCHOR"] = "边框:"
L["STRING_OPTIONS_BAR_BACKDROP_COLOR_DESC"] = "改变边框颜色。"
L["STRING_OPTIONS_BAR_BACKDROP_ENABLED_DESC"] = "启用或禁用行边框。"
L["STRING_OPTIONS_BAR_BACKDROP_SIZE_DESC"] = "调整边框大小。"
L["STRING_OPTIONS_BAR_BACKDROP_TEXTURE_DESC"] = "改变边框外观。"
L["STRING_OPTIONS_BAR_BCOLOR"] = "背景颜色"
L["STRING_OPTIONS_BAR_BTEXTURE_DESC"] = "该纹理位于下方的顶部纹理和它的大小总是相同的窗口宽度。"
L["STRING_OPTIONS_BAR_COLOR_DESC"] = [=[该纹理的颜色和透明度。

|cFFFFFF00重要|r: 当时用职业颜色时，颜色选择将被忽略。]=]
L["STRING_OPTIONS_BAR_COLORBYCLASS"] = "使用职业颜色"
L["STRING_OPTIONS_BAR_COLORBYCLASS_DESC"] = "当启用时，该纹理始终使用玩家的职业颜色。"
L["STRING_OPTIONS_BAR_FOLLOWING"] = "总是显示我"
L["STRING_OPTIONS_BAR_FOLLOWING_ANCHOR"] = "玩家计量条:"
L["STRING_OPTIONS_BAR_FOLLOWING_DESC"] = "When enabled, your bar will always be shown even when you aren't at the top ranked players."
L["STRING_OPTIONS_BAR_GROW"] = "计量条增长方向"
L["STRING_OPTIONS_BAR_GROW_DESC"] = "计量条从窗口顶部或底部增长。"
L["STRING_OPTIONS_BAR_HEIGHT"] = "高度"
L["STRING_OPTIONS_BAR_HEIGHT_DESC"] = "增加或者减少计量条的高度"
L["STRING_OPTIONS_BAR_ICONFILE"] = "图标文件"
L["STRING_OPTIONS_BAR_ICONFILE_DESC"] = [=[自定义图标文件的路径。

图像必须是一个的.tga结尾的文件, 256x256 像素 透明通道.]=]
L["STRING_OPTIONS_BAR_ICONFILE_DESC2"] = "选择要使用的图标包。"
L["STRING_OPTIONS_BAR_ICONFILE1"] = "没有图标"
L["STRING_OPTIONS_BAR_ICONFILE2"] = "默认"
L["STRING_OPTIONS_BAR_ICONFILE3"] = "默认 (黑白)"
L["STRING_OPTIONS_BAR_ICONFILE4"] = "默认 (透明)"
L["STRING_OPTIONS_BAR_ICONFILE5"] = "圆角图标"
L["STRING_OPTIONS_BAR_ICONFILE6"] = "默认 (透明的黑色白色)"
L["STRING_OPTIONS_BAR_SPACING"] = "间距"
L["STRING_OPTIONS_BAR_SPACING_DESC"] = "每个计量条之间的间隙大小。"
L["STRING_OPTIONS_BAR_TEXTURE_DESC"] = "纹理被用在顶部计量条"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM"] = "自定义文本启用"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM_DESC"] = "当启用时，左文本被格式化以方框中的规则。"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM2"] = ""
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM2_DESC"] = [=[|cFFFFFF00{数据1}|r: 通常代表了玩家的位置编号。

|cFFFFFF00{数据2}|r: 总是玩家名字。

|cFFFFFF00{数据3}|r: 在某些情况下，此值代表玩家的派系或角色图标。

|cFFFFFF00{func}|r: 运行一个定制的Lua函数增加它的返回值的文本。
例如: 
{func return 'hello azeroth'}

|cFFFFFF00转义序列|r: 用它来改变颜色或添加纹理。搜索“UI转义序列”以获取更多信息。]=]
L["STRING_OPTIONS_BARORIENTATION"] = "计量条方向"
L["STRING_OPTIONS_BARORIENTATION_DESC"] = "计量条填充方向"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM"] = "自定义文本启用"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM_DESC"] = "当启用时，右文本被格式化以方框中的规则。"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM2"] = ""
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM2_DESC"] = [=[|cFFFFFF00{数据1}|r: 被传递的第一个数字，一般此数字代表所做的总和。

|cFFFFFF00{数据2}|r: 传递第二数目，大部分的时间表示每秒平均值。

|cFFFFFF00{数据3}|r: 通过第三个数字，通常是百分比。

|cFFFFFF00{func}|r: 运行一个定制的Lua函数增加它的返回值的文本。
例如: 
{func return 'hello azeroth'}

|cFFFFFF00转义序列|r: 用它来改变颜色或添加纹理。搜索“UI转义序列”以获取更多信息。]=]
L["STRING_OPTIONS_BARS"] = "计量条一般设置"
L["STRING_OPTIONS_BARS_CUSTOM_TEXTURE"] = "自定义贴图文件"
L["STRING_OPTIONS_BARS_CUSTOM_TEXTURE_DESC"] = [=[

 |cFFFFFF00重要提示|r: 图片必须为256x32像素。]=]
L["STRING_OPTIONS_BARS_DESC"] = "这些选项控制计量条的外观。"
L["STRING_OPTIONS_BARSORT"] = "排序顺序"
L["STRING_OPTIONS_BARSORT_DESC"] = "根据升序或降序排序"
L["STRING_OPTIONS_BARSTART"] = "Bar Start After Icon"
L["STRING_OPTIONS_BARSTART_DESC"] = [=[禁用时顶部纹理开始在图标的左边而不是右边

使用带有透明区域的图标包时，这是非常有用的。]=]
L["STRING_OPTIONS_BARUR_ANCHOR"] = "快速更新:"
L["STRING_OPTIONS_BARUR_DESC"] = "当启用时，DPS和HPS值的更新只比平常快一点。"
L["STRING_OPTIONS_BG_ALL_ALLY"] = "全部显示"
L["STRING_OPTIONS_BG_ALL_ALLY_DESC"] = [=[启用时，在分组模式下敌对玩家的数据也会显示。

cFFFFFF00注意|r：下次进入战斗时此改动才会生效。]=]
L["STRING_OPTIONS_BG_ANCHOR"] = "战场："
L["STRING_OPTIONS_BG_UNIQUE_SEGMENT"] = "独立分段"
L["STRING_OPTIONS_BG_UNIQUE_SEGMENT_DESC"] = "每个分段都是截取的每次战斗的数据。"
L["STRING_OPTIONS_CAURAS"] = "采集光环"
L["STRING_OPTIONS_CAURAS_DESC"] = [=[启用捕获：

- |cFFFFFF00增益持续时间|r
- |cFFFFFF00减益持续时间|r
- |cFFFFFF00空白区|r
-|cFFFFFF00 冷却|r]=]
L["STRING_OPTIONS_CDAMAGE"] = "采集伤害"
L["STRING_OPTIONS_CDAMAGE_DESC"] = [=[启用捕获：

- |cFFFFFF00造成伤害|r
- |cFFFFFF00每秒伤害|r
- |cFFFFFF00队友误伤|r
- |cFFFFFF00承受伤害|r]=]
L["STRING_OPTIONS_CENERGY"] = "采集能量"
L["STRING_OPTIONS_CENERGY_DESC"] = [=[启用捕获：

- |cFFFFFF00法力恢复|r
- |cFFFFFF00怒气生成|r
- |cFFFFFF00能量生成|r
- |cFFFFFF00符文能量生成|r]=]
L["STRING_OPTIONS_CHANGE_CLASSCOLORS"] = "修改职业颜色"
L["STRING_OPTIONS_CHANGE_CLASSCOLORS_DESC"] = "选择新的职业颜色。"
L["STRING_OPTIONS_CHANGECOLOR"] = "修改颜色"
L["STRING_OPTIONS_CHANGELOG"] = "版本说明"
L["STRING_OPTIONS_CHART_ADD"] = "添加数据"
L["STRING_OPTIONS_CHART_ADD2"] = "添加"
L["STRING_OPTIONS_CHART_ADDAUTHOR"] = "作者: "
L["STRING_OPTIONS_CHART_ADDCODE"] = "Code: "
L["STRING_OPTIONS_CHART_ADDICON"] = "图标: "
L["STRING_OPTIONS_CHART_ADDNAME"] = "名字: "
L["STRING_OPTIONS_CHART_ADDVERSION"] = "版本: "
L["STRING_OPTIONS_CHART_AUTHOR"] = "作者"
L["STRING_OPTIONS_CHART_AUTHORERROR"] = "作者的名字是无效的。"
L["STRING_OPTIONS_CHART_CANCEL"] = "取消"
L["STRING_OPTIONS_CHART_CLOSE"] = "关闭"
L["STRING_OPTIONS_CHART_CODELOADED"] = "代码已加载，无法显示。"
L["STRING_OPTIONS_CHART_EDIT"] = "编辑代码"
L["STRING_OPTIONS_CHART_EXPORT"] = "导出"
L["STRING_OPTIONS_CHART_FUNCERROR"] = "函数是无效的。"
L["STRING_OPTIONS_CHART_ICON"] = "图标"
L["STRING_OPTIONS_CHART_IMPORT"] = "导入"
L["STRING_OPTIONS_CHART_IMPORTERROR"] = "导入字符串无效"
L["STRING_OPTIONS_CHART_NAME"] = "名字"
L["STRING_OPTIONS_CHART_NAMEERROR"] = "名字无效。"
L["STRING_OPTIONS_CHART_PLUGINWARNING"] = "安装图表查看器插件显示自定义图表。"
L["STRING_OPTIONS_CHART_REMOVE"] = "删除"
L["STRING_OPTIONS_CHART_SAVE"] = "存储"
L["STRING_OPTIONS_CHART_VERSION"] = "版本"
L["STRING_OPTIONS_CHART_VERSIONERROR"] = "版本无效。"
L["STRING_OPTIONS_CHEAL"] = "采集治疗"
L["STRING_OPTIONS_CHEAL_DESC"] = [=[启用捕获：

- |cFFFFFF00造成治疗|r
- |cFFFFFF00吸收|r
- |cFFFFFF00每秒治疗|r
- |cFFFFFF00过量治疗|r
- |cFFFFFF00受到治疗|r
- |cFFFFFF00敌方的治疗|r
- |cFFFFFF00减伤|r]=]
L["STRING_OPTIONS_CLASSCOLOR_MODIFY"] = "修改职业颜色"
L["STRING_OPTIONS_CLASSCOLOR_RESET"] = "右键重置"
L["STRING_OPTIONS_CLEANUP"] = "自动清除片段"
L["STRING_OPTIONS_CLEANUP_DESC"] = "When enabled, trash cleanup segments are removed automatically after two others segments."
L["STRING_OPTIONS_CLICK_TO_OPEN_MENUS"] = "点击打开菜单"
L["STRING_OPTIONS_CLICK_TO_OPEN_MENUS_DESC"] = "鼠标悬浮在标题栏按钮上时不再显示菜单，点击打开菜单。"
L["STRING_OPTIONS_CLOUD"] = "云捕获"
L["STRING_OPTIONS_CLOUD_DESC"] = "When enabled, the data of disabled collectors are collected within others raid members."
L["STRING_OPTIONS_CMISC"] = "采集杂项"
L["STRING_OPTIONS_CMISC_DESC"] = [=[启用捕获：

- |cFFFFFF00人群控制中断|r
- |cFFFFFF00驱散|r
- |cFFFFFF00打断|r
- |cFFFFFF00复生|r
- |cFFFFFF00死亡|r]=]
L["STRING_OPTIONS_COLORANDALPHA"] = "Color & Alpha"
L["STRING_OPTIONS_COLORFIXED"] = "修正颜色"
L["STRING_OPTIONS_COMBAT_ALPHA"] = "当"
L["STRING_OPTIONS_COMBAT_ALPHA_1"] = "None"
L["STRING_OPTIONS_COMBAT_ALPHA_2"] = "战斗中"
L["STRING_OPTIONS_COMBAT_ALPHA_3"] = "脱离战斗"
L["STRING_OPTIONS_COMBAT_ALPHA_4"] = "当退出队伍"
L["STRING_OPTIONS_COMBAT_ALPHA_5"] = "当不在战斗中"
L["STRING_OPTIONS_COMBAT_ALPHA_6"] = "当在战斗中"
L["STRING_OPTIONS_COMBAT_ALPHA_7"] = "团队副本测试"
L["STRING_OPTIONS_COMBAT_ALPHA_DESC"] = [=[选择怎样的战斗影响窗口透明度。

|cFFFFFF00没变化|r: 不修改透明度。

|cFFFFFF00当在战斗|r: When your character enter in a combat, the alpha chosen is applied on the window.

|cFFFFFF00脱离战斗|r: The alpha is applied whenever your character isn't in combat.

|cFFFFFF00当退出队伍|r: When you aren't in party or a raid group, the window assumes the selected alpha.

|cFFFFFF00重要|r: This option overwrite the alpha determined by Auto Transparency feature.]=]
L["STRING_OPTIONS_COMBATTWEEKS"] = "战斗微调"
L["STRING_OPTIONS_COMBATTWEEKS_DESC"] = "设定Details!如何调整一些战斗数据的细节。"
L["STRING_OPTIONS_CONFIRM_ERASE"] = "Do you want erase data?"
L["STRING_OPTIONS_CUSTOMSPELL_ADD"] = "Add Spell"
L["STRING_OPTIONS_CUSTOMSPELLTITLE"] = "Edit Spells Settings"
L["STRING_OPTIONS_CUSTOMSPELLTITLE_DESC"] = "This panel alows you modify the name and icon of spells."
L["STRING_OPTIONS_DATABROKER"] = "Data Broker:"
L["STRING_OPTIONS_DATABROKER_TEXT"] = "Text"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD1"] = "玩家造成伤害"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD2"] = "玩家有效的Dps"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD3"] = "伤害定位"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD4"] = "伤害差异"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD5"] = "玩家造成治疗"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD6"] = "玩家有效的Hps"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD7"] = "治疗定位"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD8"] = "治疗差异"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD9"] = "战斗时长"
L["STRING_OPTIONS_DATABROKER_TEXT1_DESC"] = [=[|cFFFFFF00{dmg}|r: player damage done.

|cFFFFFF00{dps}|r: player effective damage per second.

|cFFFFFF00{dpos}|r: rank position between members of the raid or party group on damage.

|cFFFFFF00{ddiff}|r: damage difference between you and the first place.

|cFFFFFF00{heal}|r: player healing done.

|cFFFFFF00{hps}|r: player effective healing per second.

|cFFFFFF00{hpos}|r: rank position between members of the raid or party group on healing.

|cFFFFFF00{hdiff}|r: healing difference between you and the first place.

|cFFFFFF00{time}|r: fight elapsed time.]=]
L["STRING_OPTIONS_DATACHARTTITLE"] = "创建定时数据的图表"
L["STRING_OPTIONS_DATACHARTTITLE_DESC"] = "该面板使您能够创建定制的数据捕获的图表制作。"
L["STRING_OPTIONS_DATACOLLECT_ANCHOR"] = "数据类型:"
L["STRING_OPTIONS_DEATHLIMIT"] = "死亡事件数额"
L["STRING_OPTIONS_DEATHLIMIT_DESC"] = "设置要在死亡显示器上显示事件的数量。"
L["STRING_OPTIONS_DEATHLOG_MINHEALING"] = "死亡记录最低治疗量"
L["STRING_OPTIONS_DEATHLOG_MINHEALING_DESC"] = "死亡记录不会显示低于该值的治疗量"
L["STRING_OPTIONS_DESATURATE_MENU"] = "降低饱和度"
L["STRING_OPTIONS_DESATURATE_MENU_DESC"] = "启用该选项，所有的工具栏上的菜单图标变成黑色和白色。"
L["STRING_OPTIONS_DISABLE_ALLDISPLAYSWINDOW"] = "禁用\"全部显示\"窗口"
L["STRING_OPTIONS_DISABLE_ALLDISPLAYSWINDOW_DESC"] = "启用时，右键点击标题栏会显示书签内容。"
L["STRING_OPTIONS_DISABLE_BARHIGHLIGHT"] = "禁用计量条高亮"
L["STRING_OPTIONS_DISABLE_BARHIGHLIGHT_DESC"] = "悬浮在计量条上不会高亮显示。"
L["STRING_OPTIONS_DISABLE_GROUPS"] = "禁用分组"
L["STRING_OPTIONS_DISABLE_GROUPS_DESC"] = "启用后，一个窗口靠近另一个窗口是不再合成一个群组。"
L["STRING_OPTIONS_DISABLE_LOCK_RESIZE"] = "禁用缩放按钮"
L["STRING_OPTIONS_DISABLE_LOCK_RESIZE_DESC"] = "当你鼠标停留在视窗时，缩放与锁定/解锁以及解散按钮不会出现。"
L["STRING_OPTIONS_DISABLE_RESET"] = "禁用复位按钮"
L["STRING_OPTIONS_DISABLE_RESET_DESC"] = "When enabled, is necessary use the tooltip menu from reset button instead of just click on it."
L["STRING_OPTIONS_DISABLE_STRETCH_BUTTON"] = "禁用拉伸按钮"
L["STRING_OPTIONS_DISABLE_STRETCH_BUTTON_DESC"] = "启用后将不会显示拉伸按钮。"
L["STRING_OPTIONS_DISABLED_RESET"] = "通过这个按钮复位当前是被禁用的，在提示菜单上选择。"
L["STRING_OPTIONS_DTAKEN_EVERYTHING"] = "受到伤害（进阶）"
L["STRING_OPTIONS_DTAKEN_EVERYTHING_DESC"] = "当启用时，任何模式下总是显示受到伤害。"
L["STRING_OPTIONS_ED"] = "擦除数据"
L["STRING_OPTIONS_ED_DESC"] = [=[|cFFFFFF00手动|r: 用户需要点击复位按钮。

|cFFFFFF00提示|r: 在新的副本询问是否重置

|cFFFFFF00Auto|r: 进入新的副本后自动清除数据]=]
L["STRING_OPTIONS_ED1"] = "手动"
L["STRING_OPTIONS_ED2"] = "提示"
L["STRING_OPTIONS_ED3"] = "自动"
L["STRING_OPTIONS_EDITIMAGE"] = "编辑图片"
L["STRING_OPTIONS_EDITINSTANCE"] = "编辑窗口:"
L["STRING_OPTIONS_ERASECHARTDATA"] = "删除图表"
L["STRING_OPTIONS_ERASECHARTDATA_DESC"] = "注销时，所有的战斗收集的数据创建的图表将被删除。"
L["STRING_OPTIONS_EXTERNALS_TITLE"] = "外部小工具"
L["STRING_OPTIONS_EXTERNALS_TITLE2"] = "这些选项控制外部小工具的行为。"
L["STRING_OPTIONS_GENERAL"] = "一般设置"
L["STRING_OPTIONS_GENERAL_ANCHOR"] = "一般:"
L["STRING_OPTIONS_HIDE_ICON"] = "隐藏图标"
L["STRING_OPTIONS_HIDE_ICON_DESC"] = [=[当启用时，表示所选的展示的图标不显示。

|cFFFFFF00重要|r: 启用图标后，强烈建议调整标题文本的位置。]=]
L["STRING_OPTIONS_HIDECOMBATALPHA_DESC"] = [=[你的角色与所选择的规则匹配时改变透明度。

|cFFFFFF00Zero|r: 完全隐藏，不能在窗口内进行交互。

|cFFFFFF001 - 100|r: 不隐藏，只有透明才发生改变，您可以用窗口交互。]=]
L["STRING_OPTIONS_HOTCORNER"] = "显示按钮"
L["STRING_OPTIONS_HOTCORNER_ACTION"] = "点击"
L["STRING_OPTIONS_HOTCORNER_ACTION_DESC"] = "选作做什么当左键点击Hotcorner计量条上的按钮是。"
L["STRING_OPTIONS_HOTCORNER_ANCHOR"] = "Hotcorner:"
L["STRING_OPTIONS_HOTCORNER_DESC"] = "显示或隐藏在Hotcorner面板上的按钮。"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK"] = "启用快速点击"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_DESC"] = [=[启用或禁用Hotcorners快速点击功能。

Quick button is localized at the further top left pixel, moving your mouse all the way to there, activities the top left hot corner and if clicked an action is performed.]=]
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC"] = "Quick Click On Click"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC_DESC"] = "选择做什么当Hotcorner的快速按钮被点击时"
L["STRING_OPTIONS_IGNORENICKNAME"] = "忽略昵称"
L["STRING_OPTIONS_IGNORENICKNAME_DESC"] = "当启用时，公会成员设置的昵称被忽略，并显示他们的角色的名字。"
L["STRING_OPTIONS_ILVL_TRACKER"] = "物品等级跟踪："
L["STRING_OPTIONS_ILVL_TRACKER_DESC"] = "当启用并在非战斗状态，此插件查询并追踪团队内玩家的物品等级"
L["STRING_OPTIONS_ILVL_TRACKER_TEXT"] = "启用"
L["STRING_OPTIONS_INSTANCE_ALPHA2"] = "背景颜色"
L["STRING_OPTIONS_INSTANCE_ALPHA2_DESC"] = "此选项让你改变窗口背景的颜色。"
L["STRING_OPTIONS_INSTANCE_BACKDROP"] = "背景纹理"
L["STRING_OPTIONS_INSTANCE_BACKDROP_DESC"] = [=[选择使用此窗口的背景纹理。

|cFFFFFF00默认|r: Details 背景.]=]
L["STRING_OPTIONS_INSTANCE_COLOR"] = "窗口颜色"
L["STRING_OPTIONS_INSTANCE_COLOR_DESC"] = [=[改变这个窗口的颜色和透明度。

|cFFFFFF00重要|r: the alpha chosen here are overwritten with |cFFFFFF00Auto Transparency|r values when enabled.

|cFFFFFF00重要|r: 选择窗口颜色覆盖任何颜色定制的状态栏。]=]
L["STRING_OPTIONS_INSTANCE_CURRENT"] = "自动切换到当前"
L["STRING_OPTIONS_INSTANCE_CURRENT_DESC"] = "每当战斗开始这个窗口自动切换到当前片段。"
L["STRING_OPTIONS_INSTANCE_DELETE"] = "删除"
L["STRING_OPTIONS_INSTANCE_DELETE_DESC"] = [=[移除永久的窗口。
你的游戏画面可以在擦除过程重新加载。]=]
L["STRING_OPTIONS_INSTANCE_SKIN"] = "皮肤"
L["STRING_OPTIONS_INSTANCE_SKIN_DESC"] = "修改基于皮肤主题的窗口外观。"
L["STRING_OPTIONS_INSTANCE_STATUSBAR_ANCHOR"] = "状态栏:"
L["STRING_OPTIONS_INSTANCE_STATUSBARCOLOR"] = "颜色和透明度"
L["STRING_OPTIONS_INSTANCE_STATUSBARCOLOR_DESC"] = [=[选择状态栏使用的颜色。

|cFFFFFF00重要|r: this option overwrite the color and transparency chosen over Window Color.]=]
L["STRING_OPTIONS_INSTANCE_STRATA"] = "层的阶层"
L["STRING_OPTIONS_INSTANCE_STRATA_DESC"] = [=[Selects the layer height that the frame will be placed on.

Low layer is the default and makes the window stay behind of the most interface panels.

Using high layer the window might stay in front of the major others panels.

When changing the layer height you may find some conflict with others panels, overlapping each other.]=]
L["STRING_OPTIONS_INSTANCES"] = "窗口:"
L["STRING_OPTIONS_INTERFACEDIT"] = "接口编辑模式"
L["STRING_OPTIONS_LEFT_MENU_ANCHOR"] = "菜单设置:"
L["STRING_OPTIONS_LOCKSEGMENTS"] = "片段锁定"
L["STRING_OPTIONS_LOCKSEGMENTS_DESC"] = "当启用时，改变一个片段将使得所有其他窗口也切换到该改变。"
L["STRING_OPTIONS_MANAGE_BOOKMARKS"] = "管理书签"
L["STRING_OPTIONS_MAXINSTANCES"] = "窗口数量"
L["STRING_OPTIONS_MAXINSTANCES_DESC"] = [=[限制可以创建的窗口的数量。

您可以通过管理窗口控制菜单的窗口。]=]
L["STRING_OPTIONS_MAXSEGMENTS"] = "片段数量"
L["STRING_OPTIONS_MAXSEGMENTS_DESC"] = [=[这个选项控制你想要保持多少片段。

建议值是 |cFFFFFF0012|r, 但可以随时调整这个数字。

电脑内存在 |cFFFFFF001GB|r 或更少的情况下应该保持较低数量的片段，这可以提升你的系统性能。]=]
L["STRING_OPTIONS_MENU_ALPHA"] = "鼠标交互:"
L["STRING_OPTIONS_MENU_ALPHAENABLED_DESC"] = [=[当启用时，透明度时自动改变当悬停或离开窗口时。

|cFFFFFF00重要|r: This settings overwrites the alpha selected on Window Color option under Window Settings section.]=]
L["STRING_OPTIONS_MENU_ALPHAENTER"] = "将鼠标悬停在"
L["STRING_OPTIONS_MENU_ALPHAENTER_DESC"] = "When you have the mouse over the window, the transparency changes to this value."
L["STRING_OPTIONS_MENU_ALPHALEAVE"] = "没有互动"
L["STRING_OPTIONS_MENU_ALPHALEAVE_DESC"] = "When you don't have the mouse over the window, the transparency changes to this value."
L["STRING_OPTIONS_MENU_ALPHAWARNING"] = "鼠标交互被启用，透明度可能不会受到影响。"
L["STRING_OPTIONS_MENU_ANCHOR"] = "菜单锚点侧"
L["STRING_OPTIONS_MENU_ANCHOR_DESC"] = "Change if the left menu is attached within left side of window or in the right side."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORX"] = "Position X"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORX_DESC"] = "调节X轴属性文字的位置。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORY"] = "Position Y"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORY_DESC"] = "调节Y轴属性文字的位置。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENABLED_DESC"] = "Active show the display's name currently shown in the window."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENCOUNTERTIMER"] = "交叠计时器"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENCOUNTERTIMER_DESC"] = "启用时，始终在文本左侧显示秒表计数器。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_FONT"] = "文字字体"
L["STRING_OPTIONS_MENU_ATTRIBUTE_FONT_DESC"] = "选择文本字体属性。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_SHADOW_DESC"] = "启用或禁用文本阴影。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_SIDE"] = "文本锚点"
L["STRING_OPTIONS_MENU_ATTRIBUTE_SIDE_DESC"] = "选择文本被固定在哪里。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTCOLOR"] = "文本颜色"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTCOLOR_DESC"] = "更改文字颜色属性。"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTSIZE"] = "文字大小"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTSIZE_DESC"] = "调整文字大小属性"
L["STRING_OPTIONS_MENU_ATTRIBUTESETTINGS_ANCHOR"] = "设置:"
L["STRING_OPTIONS_MENU_AUTOHIDE_DESC"] = "When enabled the menu automatically hides it self when the mouse leaves the window and shows up when you are interacting with it again."
L["STRING_OPTIONS_MENU_AUTOHIDE_LEFT"] = "自动隐藏菜单"
L["STRING_OPTIONS_MENU_BUTTONSSIZE_DESC"] = "选择按钮大小. 这也改变了插件添加的按钮。"
L["STRING_OPTIONS_MENU_FONT_FACE"] = "菜单文本字体"
L["STRING_OPTIONS_MENU_FONT_FACE_DESC"] = "修改所有菜单中使用的字体。"
L["STRING_OPTIONS_MENU_FONT_SIZE"] = "菜单文字大小"
L["STRING_OPTIONS_MENU_FONT_SIZE_DESC"] = "修改所有菜单上的字体大小上。"
L["STRING_OPTIONS_MENU_IGNOREBARS"] = "忽略计量条"
L["STRING_OPTIONS_MENU_IGNOREBARS_DESC"] = "当启用时，在此窗口中的所有的行不受这种机制的影响。"
L["STRING_OPTIONS_MENU_SHOWBUTTONS"] = "显示按钮"
L["STRING_OPTIONS_MENU_SHOWBUTTONS_DESC"] = "选择哪些按钮显示在标题栏。"
L["STRING_OPTIONS_MENU_X"] = "位置 X"
L["STRING_OPTIONS_MENU_X_DESC"] = "改变X轴位置。"
L["STRING_OPTIONS_MENU_Y"] = "位置 Y"
L["STRING_OPTIONS_MENU_Y_DESC"] = "改变Y轴位置。"
L["STRING_OPTIONS_MENUS_SHADOW"] = "阴影"
L["STRING_OPTIONS_MENUS_SHADOW_DESC"] = "所有按键增加了一个薄的阴影边框。"
L["STRING_OPTIONS_MENUS_SPACEMENT"] = "间距"
L["STRING_OPTIONS_MENUS_SPACEMENT_DESC"] = "控制按钮之间的距离。"
L["STRING_OPTIONS_MICRODISPLAY_ANCHOR"] = "微型显示："
L["STRING_OPTIONS_MICRODISPLAY_LOCK"] = "锁定微缩视图"
L["STRING_OPTIONS_MICRODISPLAY_LOCK_DESC"] = "锁定后，它们将不再相应鼠标移动上去或是点击的操作。"
L["STRING_OPTIONS_MICRODISPLAYS_DROPDOWN_TOOLTIP"] = "选择要显示在这一侧的微型展示。"
L["STRING_OPTIONS_MICRODISPLAYS_OPTION_TOOLTIP"] = "设置配置为这款微展示。"
L["STRING_OPTIONS_MICRODISPLAYS_SHOWHIDE_TOOLTIP"] = "显示或隐藏此微展示"
L["STRING_OPTIONS_MICRODISPLAYS_WARNING"] = [=[|cFFFFFF00Note|r: 微展示无法显示，因为
他们被固定在底部
侧面和状态栏被禁用。]=]
L["STRING_OPTIONS_MICRODISPLAYSSIDE"] = "微型显示锚点"
L["STRING_OPTIONS_MICRODISPLAYSSIDE_DESC"] = "放置在微展示在窗口的顶部或者在底侧。"
L["STRING_OPTIONS_MICRODISPLAYWARNING"] = "微展示不显示，因为状态栏被禁用。"
L["STRING_OPTIONS_MINIMAP"] = "显示图标"
L["STRING_OPTIONS_MINIMAP_ACTION"] = "点击"
L["STRING_OPTIONS_MINIMAP_ACTION_DESC"] = "选择做什么当小地图图标按钮被左键点击时。"
L["STRING_OPTIONS_MINIMAP_ACTION1"] = "打开选项面板"
L["STRING_OPTIONS_MINIMAP_ACTION2"] = "重置片段"
L["STRING_OPTIONS_MINIMAP_ACTION3"] = "显示/隐藏窗口"
L["STRING_OPTIONS_MINIMAP_ANCHOR"] = "小地图:"
L["STRING_OPTIONS_MINIMAP_DESC"] = "显示或隐藏小地图图标。"
L["STRING_OPTIONS_MISCTITLE"] = "杂项设置"
L["STRING_OPTIONS_MISCTITLE2"] = "这些控制几个选项。"
L["STRING_OPTIONS_NICKNAME"] = "昵称"
L["STRING_OPTIONS_NICKNAME_DESC"] = [=[为您设置一个昵称。
昵称发送给公会成员和 Details!使用它代替你的名字。]=]
L["STRING_OPTIONS_OPEN_ROWTEXT_EDITOR"] = "行文字编辑器"
L["STRING_OPTIONS_OPEN_TEXT_EDITOR"] = "打开文本编辑器"
L["STRING_OPTIONS_OVERALL_ALL"] = "所有片段"
L["STRING_OPTIONS_OVERALL_ALL_DESC"] = "所有片段被添加到总体数据。"
L["STRING_OPTIONS_OVERALL_ANCHOR"] = "总体数据:"
L["STRING_OPTIONS_OVERALL_DUNGEONBOSS"] = "地下城 Bosses"
L["STRING_OPTIONS_OVERALL_DUNGEONBOSS_DESC"] = "地下城boss片段被添加到总体数据。"
L["STRING_OPTIONS_OVERALL_DUNGEONCLEAN"] = "地下城小怪"
L["STRING_OPTIONS_OVERALL_DUNGEONCLEAN_DESC"] = "地下城清理小怪片段被添加到总体数据"
L["STRING_OPTIONS_OVERALL_LOGOFF"] = "清除注销"
L["STRING_OPTIONS_OVERALL_LOGOFF_DESC"] = "当启用时，总体数据将自动被清除当你退到角色界面。"
L["STRING_OPTIONS_OVERALL_MYTHICPLUS"] = "大秘境开始时清除"
L["STRING_OPTIONS_OVERALL_MYTHICPLUS_DESC"] = "启用后，当一个新的大秘境开始时，整个数据都将被自动清除。"
L["STRING_OPTIONS_OVERALL_NEWBOSS"] = "新BOSS时清除"
L["STRING_OPTIONS_OVERALL_NEWBOSS_DESC"] = "当启用时，总数据时将自动被清除当遭遇不同的地下城首领。"
L["STRING_OPTIONS_OVERALL_RAIDBOSS"] = "地下城首领"
L["STRING_OPTIONS_OVERALL_RAIDBOSS_DESC"] = "地下城首领片段被添加到总体数据。"
L["STRING_OPTIONS_OVERALL_RAIDCLEAN"] = "团队副本小怪"
L["STRING_OPTIONS_OVERALL_RAIDCLEAN_DESC"] = "地下城清理小怪片段被添加到总体数据。"
L["STRING_OPTIONS_PANIMODE"] = "应急模式"
L["STRING_OPTIONS_PANIMODE_DESC"] = "When enabled and you got dropped from the game (by a disconnect, for instance) and you are fighting against a boss encounter, all segments are erased, this make your logoff process faster."
L["STRING_OPTIONS_PDW_ANCHOR"] = "玩家详细信息窗口:"
L["STRING_OPTIONS_PDW_SKIN_DESC"] = "更改玩家详细信息窗口的皮肤"
L["STRING_OPTIONS_PERCENT_TYPE"] = "比例类型"
L["STRING_OPTIONS_PERCENT_TYPE_DESC"] = [=[更改百分比法：

|cFFFFFF00相对总体数据|r: 百分比显示的是RAID所有成员作出贡献。

|cFFFFFF00相对最高玩家|r: 百分比是相对于最高玩家的分数。]=]
L["STRING_OPTIONS_PERFORMANCE"] = "性能"
L["STRING_OPTIONS_PERFORMANCE_ANCHOR"] = "一般:"
L["STRING_OPTIONS_PERFORMANCE_ARENA"] = "竞技场"
L["STRING_OPTIONS_PERFORMANCE_BG15"] = "战场 15"
L["STRING_OPTIONS_PERFORMANCE_BG40"] = "战场 40"
L["STRING_OPTIONS_PERFORMANCE_DUNGEON"] = "地下城"
L["STRING_OPTIONS_PERFORMANCE_ENABLE_DESC"] = "如果启用此设置是当你的团队与之相匹配的RAID类型选择适用。"
L["STRING_OPTIONS_PERFORMANCE_ERASEWORLD"] = "自动清除世界分段"
L["STRING_OPTIONS_PERFORMANCE_ERASEWORLD_DESC"] = "自动清除野外战斗的分段"
L["STRING_OPTIONS_PERFORMANCE_MYTHIC"] = "史诗"
L["STRING_OPTIONS_PERFORMANCE_PROFILE_LOAD"] = "性能简介改为： "
L["STRING_OPTIONS_PERFORMANCE_RAID15"] = "Raid 10-15"
L["STRING_OPTIONS_PERFORMANCE_RAID30"] = "Raid 16-30"
L["STRING_OPTIONS_PERFORMANCE_RF"] = "Raid 搜索"
L["STRING_OPTIONS_PERFORMANCE_TYPES"] = "类型"
L["STRING_OPTIONS_PERFORMANCE_TYPES_DESC"] = "This is the types of raid where different options can automatically change."
L["STRING_OPTIONS_PERFORMANCE1"] = "性能调整"
L["STRING_OPTIONS_PERFORMANCE1_DESC"] = "这些选项可以帮助节省一些CPU使用率。"
L["STRING_OPTIONS_PERFORMANCECAPTURES"] = "数据采集"
L["STRING_OPTIONS_PERFORMANCECAPTURES_DESC"] = "这些选项是负责分析和收集战斗数据。"
L["STRING_OPTIONS_PERFORMANCEPROFILES_ANCHOR"] = "性能配置："
L["STRING_OPTIONS_PICONS_DIRECTION"] = "插件图标方向"
L["STRING_OPTIONS_PICONS_DIRECTION_DESC"] = "改变这些插件图标显示在工具栏上的方向。"
L["STRING_OPTIONS_PLUGINS"] = "插件"
L["STRING_OPTIONS_PLUGINS_AUTHOR"] = "作者"
L["STRING_OPTIONS_PLUGINS_NAME"] = "名字"
L["STRING_OPTIONS_PLUGINS_OPTIONS"] = "选项"
L["STRING_OPTIONS_PLUGINS_RAID_ANCHOR"] = "Raid 插件"
L["STRING_OPTIONS_PLUGINS_SOLO_ANCHOR"] = "Solo 插件"
L["STRING_OPTIONS_PLUGINS_TOOLBAR_ANCHOR"] = "工具栏插件"
L["STRING_OPTIONS_PLUGINS_VERSION"] = "版本"
L["STRING_OPTIONS_PRESETNONAME"] = "提供一个名称的预设。"
L["STRING_OPTIONS_PRESETTOOLD"] = "This preset is too old and cannot be loaded at this version of Details!."
L["STRING_OPTIONS_PROFILE_COPYOKEY"] = "配置复制成功"
L["STRING_OPTIONS_PROFILE_FIELDEMPTY"] = "名称字段为空。"
L["STRING_OPTIONS_PROFILE_GLOBAL"] = "选择一个配置应用到全部角色。"
L["STRING_OPTIONS_PROFILE_LOADED"] = "Profile loaded:"
L["STRING_OPTIONS_PROFILE_NOTCREATED"] = "配置不能创建"
L["STRING_OPTIONS_PROFILE_OVERWRITTEN"] = "你已经给这个角色选择了一个特定的配置。"
L["STRING_OPTIONS_PROFILE_POSSIZE"] = "保存大小和位置"
L["STRING_OPTIONS_PROFILE_POSSIZE_DESC"] = "当启用时，此配置文件保存窗口的位置和大小。"
L["STRING_OPTIONS_PROFILE_REMOVEOKEY"] = "配置删除成功"
L["STRING_OPTIONS_PROFILE_SELECT"] = "选择一个配置。"
L["STRING_OPTIONS_PROFILE_SELECTEXISTING"] = "选择一个现有的配置文件，或者继续使用一个新的这个角色："
L["STRING_OPTIONS_PROFILE_USENEW"] = "使用新配置"
L["STRING_OPTIONS_PROFILES_ANCHOR"] = "设置:"
L["STRING_OPTIONS_PROFILES_COPY"] = "复制配置从"
L["STRING_OPTIONS_PROFILES_COPY_DESC"] = "拷贝所有设置从所选配置中并覆盖当前所有的配置"
L["STRING_OPTIONS_PROFILES_CREATE"] = "创建配置"
L["STRING_OPTIONS_PROFILES_CREATE_DESC"] = "创建一个新的配置。"
L["STRING_OPTIONS_PROFILES_CURRENT"] = "当前配置："
L["STRING_OPTIONS_PROFILES_CURRENT_DESC"] = "这是当前在用配置文件的名称。"
L["STRING_OPTIONS_PROFILES_ERASE"] = "删除配置"
L["STRING_OPTIONS_PROFILES_ERASE_DESC"] = "删除选中的配置"
L["STRING_OPTIONS_PROFILES_RESET"] = "重置当前的配置"
L["STRING_OPTIONS_PROFILES_RESET_DESC"] = "重置所有配置并设置成默认值"
L["STRING_OPTIONS_PROFILES_SELECT"] = "选择配置"
L["STRING_OPTIONS_PROFILES_SELECT_DESC"] = "加载配置文件，所有设置都被新的配置文件设置覆盖。"
L["STRING_OPTIONS_PROFILES_TITLE"] = "配置文件"
L["STRING_OPTIONS_PROFILES_TITLE_DESC"] = "这些选项允许你不同的角色之间共享相同的设置。"
L["STRING_OPTIONS_PS_ABBREVIATE"] = "数字格式"
L["STRING_OPTIONS_PS_ABBREVIATE_COMMA"] = "逗号"
L["STRING_OPTIONS_PS_ABBREVIATE_DESC"] = [=[选择缩写方法。

|cFFFFFF00ToK I|r:
520600 = 520.6K
19530000 = 19.53M

|cFFFFFF00ToK II|r:
520600 = 520K
19530000 = 19.53M

|cFFFFFF00ToM I|r:
520600 = 520.6K
19530000 = 19M

|cFFFFFF00Comma|r:
19530000 = 19.530.000

|cFFFFFF00Lower|r and |cFFFFFF00Upper|r: are references to 'K' and 'M' letters if lowercase or uppercase.]=]
L["STRING_OPTIONS_PS_ABBREVIATE_NONE"] = "None"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK"] = "ToK I Upper"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK0"] = "ToM I Upper"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK0MIN"] = "ToM I Lower"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK2"] = "ToK II Upper"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK2MIN"] = "ToK II Lower"
L["STRING_OPTIONS_PS_ABBREVIATE_TOKMIN"] = "ToK I Lower"
L["STRING_OPTIONS_PVPFRAGS"] = "仅PVP击杀"
L["STRING_OPTIONS_PVPFRAGS_DESC"] = "启用时, 只在|cFFFFFF00造成伤害 > 击杀|r 标签显示被击杀的敌人数目。"
L["STRING_OPTIONS_REALMNAME"] = "Remove Realm Name"
L["STRING_OPTIONS_REALMNAME_DESC"] = [=[When enabled, the character realm name isn't displayed.

|cFFFFFF00Disabled|r: Charles-Netherwing
|cFFFFFF00Enabled|r: Charles]=]
L["STRING_OPTIONS_REPORT_ANCHOR"] = "报告:"
L["STRING_OPTIONS_REPORT_HEALLINKS"] = "有益法术链接"
L["STRING_OPTIONS_REPORT_HEALLINKS_DESC"] = [=[当发送一份报告，并启用该选项, |cFF55FF55有益|r 法术报告与法术的链接，而不是它的名字。

|cFFFF5555有害|r 法术报告由默认链接.]=]
L["STRING_OPTIONS_REPORT_SCHEMA"] = "格式化"
L["STRING_OPTIONS_REPORT_SCHEMA_DESC"] = "选择聊天频道链接文本的文本格式。"
L["STRING_OPTIONS_REPORT_SCHEMA1"] = "Total / Per Second / Percent"
L["STRING_OPTIONS_REPORT_SCHEMA2"] = "Percent / Per Second / Total"
L["STRING_OPTIONS_REPORT_SCHEMA3"] = "Percent / Total / Per Second"
L["STRING_OPTIONS_RESET_TO_DEFAULT"] = "重置成默认"
L["STRING_OPTIONS_ROW_SETTING_ANCHOR"] = "一般:"
L["STRING_OPTIONS_ROWADV_TITLE"] = "行高级设置"
L["STRING_OPTIONS_ROWADV_TITLE_DESC"] = "这些选项让你更深入的修改行。"
L["STRING_OPTIONS_RT_COOLDOWN1"] = "%s 使用在 %s!"
L["STRING_OPTIONS_RT_COOLDOWN2"] = "%s 被使用!"
L["STRING_OPTIONS_RT_COOLDOWNS_ANCHOR"] = "通报冷却时间："
L["STRING_OPTIONS_RT_COOLDOWNS_CHANNEL"] = "频道"
L["STRING_OPTIONS_RT_COOLDOWNS_CHANNEL_DESC"] = [=[哪个聊天通道用于发送警报消息。

如果 |cFFFFFF00Observer|r 被选中, 所有的冷却时间都将打印在你的聊天频道, 除了自身冷却时间.]=]
L["STRING_OPTIONS_RT_COOLDOWNS_CUSTOM"] = "自定义文本"
L["STRING_OPTIONS_RT_COOLDOWNS_CUSTOM_DESC"] = [=[键入自己的短语来发送。

使用 |cFFFFFF00{spell}|r 添加冷却时间的法术名称。

使用 |cFFFFFF00{target}|r 添加玩家目标名称。]=]
L["STRING_OPTIONS_RT_COOLDOWNS_ONOFF_DESC"] = "当你使用一个冷却时间，消息是通过选定的频道发送。"
L["STRING_OPTIONS_RT_COOLDOWNS_SELECT"] = "忽略冷却名单"
L["STRING_OPTIONS_RT_COOLDOWNS_SELECT_DESC"] = "选择被忽略的冷却时间"
L["STRING_OPTIONS_RT_DEATH_MSG"] = "Details! %s's 死亡"
L["STRING_OPTIONS_RT_DEATHS_ANCHOR"] = "通报死亡:"
L["STRING_OPTIONS_RT_DEATHS_FIRST"] = "仅第一次"
L["STRING_OPTIONS_RT_DEATHS_FIRST_DESC"] = "Make it only annouce the first X deaths during the encounter."
L["STRING_OPTIONS_RT_DEATHS_HITS"] = "点击量"
L["STRING_OPTIONS_RT_DEATHS_HITS_DESC"] = "当通报死亡，显示有多少点击率。"
L["STRING_OPTIONS_RT_DEATHS_ONOFF_DESC"] = "当团队成员死亡，将其发送到RAID通道是什么杀死该玩家。"
L["STRING_OPTIONS_RT_DEATHS_WHERE"] = "副本"
L["STRING_OPTIONS_RT_DEATHS_WHERE_DESC"] = [=[选择在哪里通报死亡。

|cFFFFFF00重要|r for raids /raid channel is used, /p while in dungeons.

如果 |cFFFFFF00观察者|r 被选中, 死亡仅仅显示在你的频道。]=]
L["STRING_OPTIONS_RT_DEATHS_WHERE1"] = "团队 & 地下城"
L["STRING_OPTIONS_RT_DEATHS_WHERE2"] = "仅团队"
L["STRING_OPTIONS_RT_DEATHS_WHERE3"] = "仅地下城"
L["STRING_OPTIONS_RT_FIRST_HIT"] = "第一下"
L["STRING_OPTIONS_RT_FIRST_HIT_DESC"] = "打印在聊天面板 (|cFFFFFF00仅为你|r) 是谁打的第一下, 通常是谁开始的战斗。"
L["STRING_OPTIONS_RT_IGNORE_TITLE"] = "忽略冷却时间"
L["STRING_OPTIONS_RT_INFOS"] = "额外信息："
L["STRING_OPTIONS_RT_INFOS_PREPOTION"] = "提前使用药水"
L["STRING_OPTIONS_RT_INFOS_PREPOTION_DESC"] = "当boss战开始时, 打印在你的聊天面板 (|cFFFFFF00only 仅仅为你|r) 谁提前喝药了。"
L["STRING_OPTIONS_RT_INTERRUPT"] = "%s 打断!"
L["STRING_OPTIONS_RT_INTERRUPT_ANCHOR"] = "通报打断："
L["STRING_OPTIONS_RT_INTERRUPT_NEXT"] = "下一个: %s"
L["STRING_OPTIONS_RT_INTERRUPTS_CHANNEL"] = "频道"
L["STRING_OPTIONS_RT_INTERRUPTS_CHANNEL_DESC"] = [=[哪个聊天通道用于发送警报消息。

如果 |cFFFFFF00观察者|r 被选择, 所有打断只会打印在你自己的频道。]=]
L["STRING_OPTIONS_RT_INTERRUPTS_CUSTOM"] = "自定义文本"
L["STRING_OPTIONS_RT_INTERRUPTS_CUSTOM_DESC"] = [=[键入自己的短语来发送。

使用 |cFFFFFF00{spell}|r 添加被打断的法术名称。

使用 |cFFFFFF00{next}|r 添加下一个要打断的玩家填充在“下一步”集合中的玩家。]=]
L["STRING_OPTIONS_RT_INTERRUPTS_NEXT"] = "下一个玩家"
L["STRING_OPTIONS_RT_INTERRUPTS_NEXT_DESC"] = "当存在中断的序列，将负责下一个中断的玩家的名字。"
L["STRING_OPTIONS_RT_INTERRUPTS_ONOFF_DESC"] = "当你成功打断施法，一个消息被发送。"
L["STRING_OPTIONS_RT_INTERRUPTS_WHISPER"] = "密语 To"
L["STRING_OPTIONS_RT_OTHER_ANCHOR"] = "一般:"
L["STRING_OPTIONS_RT_TITLE"] = "团队工具"
L["STRING_OPTIONS_RT_TITLE_DESC"] = "在这个面板中，你可以可以主动通过一些机制帮助你的团队。"
L["STRING_OPTIONS_SAVELOAD"] = "保存和加载"
L["STRING_OPTIONS_SAVELOAD_APPLYALL"] = "当前的皮肤已经在所有其他窗口被应用。"
L["STRING_OPTIONS_SAVELOAD_APPLYALL_DESC"] = "应用当前的皮肤上创建的所有窗口。"
L["STRING_OPTIONS_SAVELOAD_APPLYTOALL"] = "应用于所有窗口"
L["STRING_OPTIONS_SAVELOAD_CREATE_DESC"] = [=[在字段中键入自定义皮肤的名称，然后点击创建按钮。

这个过程创建一个自定义皮肤，你可以加载别人窗户或保存在另一时间。]=]
L["STRING_OPTIONS_SAVELOAD_DESC"] = "这些选项允许你保存或加载预定义的设置。"
L["STRING_OPTIONS_SAVELOAD_ERASE_DESC"] = "此选项删除以前保存的皮肤。"
L["STRING_OPTIONS_SAVELOAD_EXPORT"] = "导出"
L["STRING_OPTIONS_SAVELOAD_EXPORT_COPY"] = "按 CTRL + C"
L["STRING_OPTIONS_SAVELOAD_EXPORT_DESC"] = "以文本格式保存皮肤"
L["STRING_OPTIONS_SAVELOAD_IMPORT"] = "导入"
L["STRING_OPTIONS_SAVELOAD_IMPORT_DESC"] = "以文本方式导入皮肤"
L["STRING_OPTIONS_SAVELOAD_IMPORT_OKEY"] = "皮肤成功导入到您保存皮肤列表。现在你可以应用它通过“应用”保管箱。"
L["STRING_OPTIONS_SAVELOAD_LOAD"] = "应用"
L["STRING_OPTIONS_SAVELOAD_LOAD_DESC"] = "选择先前保存的皮肤之一，应用当前选定的窗口。"
L["STRING_OPTIONS_SAVELOAD_MAKEDEFAULT"] = "设置标准"
L["STRING_OPTIONS_SAVELOAD_PNAME"] = "名字"
L["STRING_OPTIONS_SAVELOAD_REMOVE"] = "擦除"
L["STRING_OPTIONS_SAVELOAD_RESET"] = "加载默认皮肤"
L["STRING_OPTIONS_SAVELOAD_SAVE"] = "存储"
L["STRING_OPTIONS_SAVELOAD_SKINCREATED"] = "皮肤被创建。"
L["STRING_OPTIONS_SAVELOAD_STD_DESC"] = [=[设置当前的外观为标准的皮肤。

此外观将应用于创建的所有新窗口。]=]
L["STRING_OPTIONS_SAVELOAD_STDSAVE"] = "标准的皮肤已被保存，新窗口将使用该皮肤在默认情况下。"
L["STRING_OPTIONS_SCROLLBAR"] = "滚动条"
L["STRING_OPTIONS_SCROLLBAR_DESC"] = [=[启用或禁用滚动条。

默认情况下，Details! 滚动条是由一直延伸窗口的机制替代。

 |cFFFFFF00拉伸处理|r 超出了窗口键/菜单（关闭按钮左边）。]=]
L["STRING_OPTIONS_SEGMENTSSAVE"] = "存储片段"
L["STRING_OPTIONS_SEGMENTSSAVE_DESC"] = [=[这些选项控制你有多少片段想保存 在游戏sesions之间。

High values may increase the time your character takes to logoff.

如果您极少使用最后一天的数据, 强烈建议你设置此选择在 |cFFFFFF001|r。]=]
L["STRING_OPTIONS_SENDFEEDBACK"] = "反馈"
L["STRING_OPTIONS_SHOW_SIDEBARS"] = "显示边框"
L["STRING_OPTIONS_SHOW_SIDEBARS_DESC"] = "显示或隐藏窗口边框。"
L["STRING_OPTIONS_SHOW_STATUSBAR"] = "显示状态栏"
L["STRING_OPTIONS_SHOW_STATUSBAR_DESC"] = "显示或隐藏状态栏下方。"
L["STRING_OPTIONS_SHOW_TOTALBAR_COLOR_DESC"] = "选择颜色。透明度值遵循行alpha值。"
L["STRING_OPTIONS_SHOW_TOTALBAR_DESC"] = "显示或隐藏总的计量条。"
L["STRING_OPTIONS_SHOW_TOTALBAR_ICON"] = "图报"
L["STRING_OPTIONS_SHOW_TOTALBAR_ICON_DESC"] = "选择总的计量条上显示的图标。"
L["STRING_OPTIONS_SHOW_TOTALBAR_INGROUP"] = "仅仅在小队"
L["STRING_OPTIONS_SHOW_TOTALBAR_INGROUP_DESC"] = "不在小队不显示总的计量条"
L["STRING_OPTIONS_SIZE"] = "大小"
L["STRING_OPTIONS_SKIN_A"] = "皮肤设置"
L["STRING_OPTIONS_SKIN_A_DESC"] = "这些选项允许你改变皮肤。"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON1"] = "对齐在右聊天"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON1_DESC"] = "移动调整窗口 |cFFFFFF00#1|r 和 |cFFFFFF00#2|r 放在在右侧的聊天窗口的上面"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON2"] = "设置工具提示边框为黑色"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON2_DESC"] = [=[修改 tooltip's:

边框颜色：|cFFFFFF00黑色|r.
边框大小设置为： |cFFFFFF0016|r.
纹理： |cFFFFFF00Blizzard Tooltip|r.]=]
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"] = "移除提示边框"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"] = [=[修改 tooltip's:

边框颜色：|cFFFFFF00透明|r.]=]
L["STRING_OPTIONS_SKIN_EXTRA_OPTIONS_ANCHOR"] = "皮肤选项："
L["STRING_OPTIONS_SKIN_LOADED"] = "皮肤成功加载。"
L["STRING_OPTIONS_SKIN_PRESETS_ANCHOR"] = "保存皮肤："
L["STRING_OPTIONS_SKIN_PRESETSCONFIG_ANCHOR"] = "管理保存的自定义皮肤："
L["STRING_OPTIONS_SKIN_REMOVED"] = "删除皮肤。"
L["STRING_OPTIONS_SKIN_RESET_TOOLTIP"] = "重置提示边框"
L["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"] = "设置提示的边框颜色和纹理为默认值。"
L["STRING_OPTIONS_SKIN_SELECT"] = "选择一个皮肤"
L["STRING_OPTIONS_SKIN_SELECT_ANCHOR"] = "皮肤选择："
L["STRING_OPTIONS_SOCIAL"] = "社会"
L["STRING_OPTIONS_SOCIAL_DESC"] = "Tell how you want to be known in your guild enviorement."
L["STRING_OPTIONS_SPELL_ADD"] = "添加"
L["STRING_OPTIONS_SPELL_ADDICON"] = "新图标: "
L["STRING_OPTIONS_SPELL_ADDNAME"] = "新名字: "
L["STRING_OPTIONS_SPELL_ADDSPELL"] = "添加法术"
L["STRING_OPTIONS_SPELL_ADDSPELLID"] = "SpellId: "
L["STRING_OPTIONS_SPELL_CLOSE"] = "关闭"
L["STRING_OPTIONS_SPELL_ICON"] = "图标"
L["STRING_OPTIONS_SPELL_IDERROR"] = "法术id无效。"
L["STRING_OPTIONS_SPELL_INDEX"] = "索引"
L["STRING_OPTIONS_SPELL_NAME"] = "名字"
L["STRING_OPTIONS_SPELL_NAMEERROR"] = "法术名称无效。"
L["STRING_OPTIONS_SPELL_NOTFOUND"] = "法术没有找到。"
L["STRING_OPTIONS_SPELL_REMOVE"] = "删除"
L["STRING_OPTIONS_SPELL_RESET"] = "重置"
L["STRING_OPTIONS_SPELL_SPELLID"] = "法术 ID"
L["STRING_OPTIONS_SPELL_SPELLID_DESC"] = [=[A ID is a unique number to identify the spell inside World of Warcraft. There is many ways to get the number:

- On the Player Details Window, hold shift while hover over spells bars.
- Type the spell name in the SpellId field, a tooltip is shown with suggested spells.
- Community web sites, most of them have the spellid on the address link.
- Browsing the spell cache below:]=]
L["STRING_OPTIONS_STRETCH"] = "拉伸按钮锚点"
L["STRING_OPTIONS_STRETCH_DESC"] = [=[交替拉伸按钮的位置。

|cFFFFFF00顶部|r: 抓取放置在右上角。

|cFFFFFF00底部|r: 抓取放置在底部中心。]=]
L["STRING_OPTIONS_STRETCHTOP"] = "拉伸按钮始终在顶部"
L["STRING_OPTIONS_STRETCHTOP_DESC"] = [=[The stretch button will be placed on the FULLSCREEN strata and always stay higher than the others frames.

|cFFFFFF00Important|r: Moving the grab for a high layer, it might stay in front of others frames like backpacks, use only if you really need.]=]
L["STRING_OPTIONS_SWITCH_ANCHOR"] = "开关:"
L["STRING_OPTIONS_SWITCHINFO"] = "|cFFF79F81 左边禁用|r  |cFF81BEF7 右边禁用|r"
L["STRING_OPTIONS_TABEMB_ANCHOR"] = "已嵌入聊天标签"
L["STRING_OPTIONS_TABEMB_ENABLED_DESC"] = "启用后一个或多个窗口会被嵌入聊天标签页。"
L["STRING_OPTIONS_TABEMB_SINGLE"] = "单窗口"
L["STRING_OPTIONS_TABEMB_SINGLE_DESC"] = "启用后只会附加一个窗口。"
L["STRING_OPTIONS_TABEMB_TABNAME"] = "标签名"
L["STRING_OPTIONS_TABEMB_TABNAME_DESC"] = "将要添加到窗口的选项卡的名称。"
L["STRING_OPTIONS_TESTBARS"] = "创建测试计量条"
L["STRING_OPTIONS_TEXT"] = "计量条文本设置"
L["STRING_OPTIONS_TEXT_DESC"] = "这些选项控制窗口行文本的外观。"
L["STRING_OPTIONS_TEXT_FIXEDCOLOR"] = "文本颜色"
L["STRING_OPTIONS_TEXT_FIXEDCOLOR_DESC"] = [=[改变文本左右两边的颜色。

忽略 如果 |cFFFFFFFF职业化颜色|r 被启用。]=]
L["STRING_OPTIONS_TEXT_FONT"] = "文本字体"
L["STRING_OPTIONS_TEXT_FONT_DESC"] = "改变文本左右两边的字体"
L["STRING_OPTIONS_TEXT_LCLASSCOLOR_DESC"] = "当启用时，文本始终使用玩家职业颜色。"
L["STRING_OPTIONS_TEXT_LEFT_ANCHOR"] = "左文本："
L["STRING_OPTIONS_TEXT_LOUTILINE"] = "文本阴影"
L["STRING_OPTIONS_TEXT_LOUTILINE_DESC"] = "启用或禁用左边文字的下划线。"
L["STRING_OPTIONS_TEXT_LPOSITION"] = "显示数字"
L["STRING_OPTIONS_TEXT_LPOSITION_DESC"] = "显示位置编号在玩家的名字左边。"
L["STRING_OPTIONS_TEXT_RIGHT_ANCHOR"] = "右文本："
L["STRING_OPTIONS_TEXT_ROUTILINE_DESC"] = "启用或禁用右边文字的下划线。"
L["STRING_OPTIONS_TEXT_ROWICONS_ANCHOR"] = "图标："
L["STRING_OPTIONS_TEXT_SHOW_BRACKET"] = "括号"
L["STRING_OPTIONS_TEXT_SHOW_BRACKET_DESC"] = "选择哪个字符是用来打开和关闭每秒和百分比块。"
L["STRING_OPTIONS_TEXT_SHOW_PERCENT"] = "显示百分比"
L["STRING_OPTIONS_TEXT_SHOW_PERCENT_DESC"] = "显示的百分比。"
L["STRING_OPTIONS_TEXT_SHOW_PS"] = "每秒显示"
L["STRING_OPTIONS_TEXT_SHOW_PS_DESC"] = "S显示每秒伤害和每秒治疗效果。"
L["STRING_OPTIONS_TEXT_SHOW_SEPARATOR"] = "分隔符"
L["STRING_OPTIONS_TEXT_SHOW_SEPARATOR_DESC"] = "Choose which character is used to separate the per second amount from percent amount."
L["STRING_OPTIONS_TEXT_SHOW_TOTAL"] = "显示总的"
L["STRING_OPTIONS_TEXT_SHOW_TOTAL_DESC"] = [=[显示角色完成的总的数据。

例如: total damage, total heal received.]=]
L["STRING_OPTIONS_TEXT_SIZE"] = "文本大小"
L["STRING_OPTIONS_TEXT_SIZE_DESC"] = "同时改变左和右的文本的大小。"
L["STRING_OPTIONS_TEXT_TEXTUREL_ANCHOR"] = "较低的纹理："
L["STRING_OPTIONS_TEXT_TEXTUREU_ANCHOR"] = "较高的纹理："
L["STRING_OPTIONS_TEXTEDITOR_CANCEL"] = "取消"
L["STRING_OPTIONS_TEXTEDITOR_CANCEL_TOOLTIP"] = "完成编辑并忽略代码中的任何变化。"
L["STRING_OPTIONS_TEXTEDITOR_COLOR_TOOLTIP"] = "选择文本，然后单击颜色按钮来更改所选文本的颜色。"
L["STRING_OPTIONS_TEXTEDITOR_COMMA"] = "逗号"
L["STRING_OPTIONS_TEXTEDITOR_COMMA_TOOLTIP"] = [=[添加一个函数来用逗号分隔格式的数字。
例如: 1000000 to 1.000.000.]=]
L["STRING_OPTIONS_TEXTEDITOR_DATA"] = "[数据 %s]"
L["STRING_OPTIONS_TEXTEDITOR_DATA_TOOLTIP"] = [=[Add a data feed:

|cFFFFFF00Data 1|r: normaly represents the total done by the actor or the position number.

|cFFFFFF00Data 2|r: in most cases represents the DPS, HPS or player's name.

|cFFFFFF00Data 3|r: represents the percent done by the actor, spec or faction icon.]=]
L["STRING_OPTIONS_TEXTEDITOR_DONE"] = "完成"
L["STRING_OPTIONS_TEXTEDITOR_DONE_TOOLTIP"] = "完成编辑并保存代码。"
L["STRING_OPTIONS_TEXTEDITOR_FUNC"] = "函数"
L["STRING_OPTIONS_TEXTEDITOR_FUNC_TOOLTIP"] = [=[添加一个空函数。
函数必须总是返回一个数字。]=]
L["STRING_OPTIONS_TEXTEDITOR_RESET"] = "重置"
L["STRING_OPTIONS_TEXTEDITOR_RESET_TOOLTIP"] = "清除所有的代码，并添加默认的代码。"
L["STRING_OPTIONS_TEXTEDITOR_TOK"] = "ToK"
L["STRING_OPTIONS_TEXTEDITOR_TOK_TOOLTIP"] = [=[添加一个函数来格式化数字的值。
例如: 1500000 to 1.5kk.]=]
L["STRING_OPTIONS_TIMEMEASURE"] = "时间测量"
L["STRING_OPTIONS_TIMEMEASURE_DESC"] = [=[|cFFFFFF00Activity|r: the timer of each raid member is put on hold if his activity is ceased and back again to count when is resumed, common way of measure Dps and Hps.

|cFFFFFF00Effective|r: used on rankings, this method uses the elapsed combat time for measure the Dps and Hps of all raid members.]=]
L["STRING_OPTIONS_TOOLBAR_SETTINGS"] = "左边的菜单设置"
L["STRING_OPTIONS_TOOLBAR_SETTINGS_DESC"] = "这些选项更改在窗口顶部的主菜单。"
L["STRING_OPTIONS_TOOLBARSIDE"] = "工具栏锚点"
L["STRING_OPTIONS_TOOLBARSIDE_DESC"] = [=[Places the toolbar (a.k.a title bar) on the top or bottom side of window.

|cFFFFFF00Important|r: when alternating the position, title text won't change, check out |cFFFFFF00Title Bar: Text|r section for more options.]=]
L["STRING_OPTIONS_TOOLS_ANCHOR"] = "工具:"
L["STRING_OPTIONS_TOOLTIP_ANCHOR"] = "设置:"
L["STRING_OPTIONS_TOOLTIP_ANCHORTEXTS"] = "文本:"
L["STRING_OPTIONS_TOOLTIPS_ABBREVIATION"] = "缩写类型"
L["STRING_OPTIONS_TOOLTIPS_ABBREVIATION_DESC"] = "选择提示上显示的号码是如何被格式化。"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_ATTACH"] = "提示侧"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_ATTACH_DESC"] = "Which side of tooltip is used to fit with the anchor attach side."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_BORDER"] = "边框:"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_POINT"] = "锚点:"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_RELATIVE"] = "锚点侧"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_RELATIVE_DESC"] = "Which side of the anchor the tooltip will be placed."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TEXT"] = "Tooltip Anchor"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TEXT_DESC"] = "right click to lock."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO"] = "锚点"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_CHOOSE"] = "Move Anchor Point"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_CHOOSE_DESC"] = "Move the anchor position when Anchor is set to |cFFFFFF00Point on Screen|r."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_DESC"] = "Tooltips attaches on the hovered row or on a chosen point in the game screen."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO1"] = "窗口行"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO2"] = "Point on Screen"
L["STRING_OPTIONS_TOOLTIPS_ANCHORCOLOR"] = "标题"
L["STRING_OPTIONS_TOOLTIPS_BACKGROUNDCOLOR"] = "背景颜色"
L["STRING_OPTIONS_TOOLTIPS_BACKGROUNDCOLOR_DESC"] = "Choose the color used on the background."
L["STRING_OPTIONS_TOOLTIPS_BORDER_COLOR_DESC"] = "Change the border color."
L["STRING_OPTIONS_TOOLTIPS_BORDER_SIZE_DESC"] = "Change the border size."
L["STRING_OPTIONS_TOOLTIPS_BORDER_TEXTURE_DESC"] = "Modify the border texture file."
L["STRING_OPTIONS_TOOLTIPS_FONTCOLOR"] = "Text Color"
L["STRING_OPTIONS_TOOLTIPS_FONTCOLOR_DESC"] = "Change the color used on tooltip texts."
L["STRING_OPTIONS_TOOLTIPS_FONTFACE"] = "Text Font"
L["STRING_OPTIONS_TOOLTIPS_FONTFACE_DESC"] = "Choose the font used on tooltip texts."
L["STRING_OPTIONS_TOOLTIPS_FONTSHADOW_DESC"] = "Enable or disable the shadow in the text."
L["STRING_OPTIONS_TOOLTIPS_FONTSIZE"] = "Text Size"
L["STRING_OPTIONS_TOOLTIPS_FONTSIZE_DESC"] = "Increase or decrease the size of tooltip texts"
L["STRING_OPTIONS_TOOLTIPS_IGNORESUBWALLPAPER"] = "子菜单壁纸"
L["STRING_OPTIONS_TOOLTIPS_IGNORESUBWALLPAPER_DESC"] = "启用后一些菜单将会使用它们自己的子菜单壁纸。"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE"] = "Maximize Method"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE_DESC"] = [=[Select the method used to expand the information shown on the tooltip.

|cFFFFFF00 On Control Keys|r: tooltip box is expanded when Shift, Ctrl or Alt keys is pressed.

|cFFFFFF00 Always Maximized|r: the tooltip always show all information without any amount limitations.

|cFFFFFF00 Only Shift Block|r: the first block on the tooltip is always expanded by default.

|cFFFFFF00 Only Ctrl Block|r: the second block is always expanded by default.

|cFFFFFF00 Only Alt Block|r: the third block is always expanded by default.]=]
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE1"] = "On Shift Ctrl Alt"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE2"] = "Always Maximized"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE3"] = "Only Shift Block"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE4"] = "Only Ctrl Block"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE5"] = "Only Alt Block"
L["STRING_OPTIONS_TOOLTIPS_MENU_WALLP"] = "编辑选单外观"
L["STRING_OPTIONS_TOOLTIPS_MENU_WALLP_DESC"] = "修改标题栏菜单背景图的缩放比例。"
L["STRING_OPTIONS_TOOLTIPS_OFFSETX"] = "Distance X"
L["STRING_OPTIONS_TOOLTIPS_OFFSETX_DESC"] = "How far horizontally the tooltip is placed from its anchor."
L["STRING_OPTIONS_TOOLTIPS_OFFSETY"] = "Distance Y"
L["STRING_OPTIONS_TOOLTIPS_OFFSETY_DESC"] = "How far vertically the tooltip is placed from its anchor."
L["STRING_OPTIONS_TOOLTIPS_SHOWAMT"] = "Show Amount"
L["STRING_OPTIONS_TOOLTIPS_SHOWAMT_DESC"] = "Shows a number indicating how many spells, targets and pets have in the tooltip."
L["STRING_OPTIONS_TOOLTIPS_TITLE"] = "工具提示"
L["STRING_OPTIONS_TOOLTIPS_TITLE_DESC"] = "这些选项用来调整工具提示的外观。"
L["STRING_OPTIONS_TOTALBAR_ANCHOR"] = "Total Bar:"
L["STRING_OPTIONS_TRASH_SUPPRESSION"] = "垃圾回收"
L["STRING_OPTIONS_TRASH_SUPPRESSION_DESC"] = "|cFFFFFF00X|r 秒后，自动切换到显示可回收分段（|cFFFFFF00只在遭遇首领并失败后|r）。"
L["STRING_OPTIONS_WALLPAPER_ALPHA"] = "Alpha:"
L["STRING_OPTIONS_WALLPAPER_ANCHOR"] = "Wallpaper Selection:"
L["STRING_OPTIONS_WALLPAPER_BLUE"] = "Blue:"
L["STRING_OPTIONS_WALLPAPER_CBOTTOM"] = "Crop (|cFFC0C0C0bottom|r):"
L["STRING_OPTIONS_WALLPAPER_CLEFT"] = "Crop (|cFFC0C0C0left|r):"
L["STRING_OPTIONS_WALLPAPER_CRIGHT"] = "Crop (|cFFC0C0C0right|r):"
L["STRING_OPTIONS_WALLPAPER_CTOP"] = "Crop (|cFFC0C0C0top|r):"
L["STRING_OPTIONS_WALLPAPER_FILE"] = "文件:"
L["STRING_OPTIONS_WALLPAPER_GREEN"] = "Green:"
L["STRING_OPTIONS_WALLPAPER_LOAD"] = "加载图片"
L["STRING_OPTIONS_WALLPAPER_LOAD_DESC"] = "Select a image from your hard drive to use as wallpaper."
L["STRING_OPTIONS_WALLPAPER_LOAD_EXCLAMATION"] = [=[The image needs:

- To be in Truevision TGA format (.tga extension).
- Be inside WOW/Interface/ root folder.
- The size must be 256 x 256 pixels.
- The game must be closed before paste the file.]=]
L["STRING_OPTIONS_WALLPAPER_LOAD_FILENAME"] = "文件名称:"
L["STRING_OPTIONS_WALLPAPER_LOAD_FILENAME_DESC"] = "Insert only the name of the file, excluding path and extension."
L["STRING_OPTIONS_WALLPAPER_LOAD_OKEY"] = "加载"
L["STRING_OPTIONS_WALLPAPER_LOAD_TITLE"] = "从电脑:"
L["STRING_OPTIONS_WALLPAPER_LOAD_TROUBLESHOOT"] = "排查"
L["STRING_OPTIONS_WALLPAPER_LOAD_TROUBLESHOOT_TEXT"] = [=[If the wallpaper got full green color:

- Restarted the wow client.
- Make sure the image have 256 width and 256 height.
- Check if the image is in .TGA format and make sure it's saved with 32 bits/pixel.
- Is inside Interface folder, for example: C:/Program Files/World of Warcraft/Interface/]=]
L["STRING_OPTIONS_WALLPAPER_RED"] = "Red:"
L["STRING_OPTIONS_WC_ANCHOR"] = "快速窗口控制 (#%s):"
L["STRING_OPTIONS_WC_BOOKMARK"] = "管理书签"
L["STRING_OPTIONS_WC_BOOKMARK_DESC"] = "打开书签的配置面板。"
L["STRING_OPTIONS_WC_CLOSE"] = "关闭"
L["STRING_OPTIONS_WC_CLOSE_DESC"] = [=[Close the current editing window.

When closed, the window is considered inactive and can be reopened at any time using the Window Control menu.

|cFFFFFF00Important:|r for completely remove a window go to miscellaneous section.]=]
L["STRING_OPTIONS_WC_CREATE"] = "创建窗口"
L["STRING_OPTIONS_WC_CREATE_DESC"] = "创建一个新的窗口。"
L["STRING_OPTIONS_WC_LOCK"] = "锁定"
L["STRING_OPTIONS_WC_LOCK_DESC"] = [=[Lock or Unlock the window.

When locked, the window can not be moved.]=]
L["STRING_OPTIONS_WC_REOPEN"] = "重新打开"
L["STRING_OPTIONS_WC_UNLOCK"] = "解锁"
L["STRING_OPTIONS_WC_UNSNAP"] = "取消组合"
L["STRING_OPTIONS_WC_UNSNAP_DESC"] = "从窗口群组中删除此窗口"
L["STRING_OPTIONS_WHEEL_SPEED"] = "Wheel Speed"
L["STRING_OPTIONS_WHEEL_SPEED_DESC"] = "Changes how fast the scroll goes when rolling the mouse wheel over a window."
L["STRING_OPTIONS_WINDOW"] = "选项面板"
L["STRING_OPTIONS_WINDOW_ANCHOR_ANCHORS"] = "锚点:"
L["STRING_OPTIONS_WINDOW_IGNOREMASSTOGGLE"] = "忽略品质切换"
L["STRING_OPTIONS_WINDOW_IGNOREMASSTOGGLE_DESC"] = "When enabled, this window is not affected when hiding, showing or toggling all windows."
L["STRING_OPTIONS_WINDOW_SCALE"] = "尺度"
L["STRING_OPTIONS_WINDOW_SCALE_DESC"] = [=[Adjust the scale of the window.

|cFFFFFF00Tip|r: right click to type the value.

|cFFFFFF00Current|r: %s]=]
L["STRING_OPTIONS_WINDOW_TITLE"] = "窗口设置"
L["STRING_OPTIONS_WINDOW_TITLE_DESC"] = "这些选项控制选择窗口的窗口外观。"
L["STRING_OPTIONS_WINDOWSPEED"] = "更新间隔"
L["STRING_OPTIONS_WINDOWSPEED_DESC"] = [=[Time interval between each update.

|cFFFFFF000.05|r: real time update.

|cFFFFFF000.3|r: update about 3 times each second.

|cFFFFFF003.0|r: update once every 3 seconds.]=]
L["STRING_OPTIONS_WP"] = "墙纸设置"
L["STRING_OPTIONS_WP_ALIGN"] = "对齐"
L["STRING_OPTIONS_WP_ALIGN_DESC"] = [=[How the wallpaper will align within the window.

- |cFFFFFF00Fill|r: auto resize and align with all corners.

- |cFFFFFF00Center|r: doesn`t resize and align with the center of the window.

-|cFFFFFF00Stretch|r: auto resize on vertical or horizontal and align with left-right or top-bottom sides.

-|cFFFFFF00Four Corners|r: align with specified corner, no auto resize is made.]=]
L["STRING_OPTIONS_WP_DESC"] = "这些选项控制窗口的壁纸。"
L["STRING_OPTIONS_WP_EDIT"] = "编辑图像"
L["STRING_OPTIONS_WP_EDIT_DESC"] = "打开图像编辑器来改变所选图像的某些方面。"
L["STRING_OPTIONS_WP_ENABLE_DESC"] = "显示墙纸。"
L["STRING_OPTIONS_WP_GROUP"] = "类别"
L["STRING_OPTIONS_WP_GROUP_DESC"] = "Select the image group."
L["STRING_OPTIONS_WP_GROUP2"] = "壁纸"
L["STRING_OPTIONS_WP_GROUP2_DESC"] = "这将被用作墙纸的图像。"
L["STRING_OPTIONSMENU_AUTOMATIC"] = "窗口：自动"
L["STRING_OPTIONSMENU_AUTOMATIC_TITLE"] = "窗口自动化设置"
L["STRING_OPTIONSMENU_AUTOMATIC_TITLE_DESC"] = "这些设置用于控制窗口的自动行为，例如自动隐藏和自动开启。"
L["STRING_OPTIONSMENU_COMBAT"] = "战斗"
L["STRING_OPTIONSMENU_DATACHART"] = "图标数据"
L["STRING_OPTIONSMENU_DATACOLLECT"] = "数据采集"
L["STRING_OPTIONSMENU_DATAFEED"] = "数据源"
L["STRING_OPTIONSMENU_DISPLAY"] = "展示"
L["STRING_OPTIONSMENU_DISPLAY_DESC"] = "总体基本调整和快速的窗口控制。"
L["STRING_OPTIONSMENU_LEFTMENU"] = "标题栏：按钮"
L["STRING_OPTIONSMENU_MISC"] = "杂项"
L["STRING_OPTIONSMENU_PERFORMANCE"] = "性能调整"
L["STRING_OPTIONSMENU_PLUGINS"] = "插件管理"
L["STRING_OPTIONSMENU_PROFILES"] = "配置文件"
L["STRING_OPTIONSMENU_RAIDTOOLS"] = "Raid 工具"
L["STRING_OPTIONSMENU_RIGHTMENU"] = "-- x -- x --"
L["STRING_OPTIONSMENU_ROWMODELS"] = "行: 进阶"
L["STRING_OPTIONSMENU_ROWSETTINGS"] = "行: 设置"
L["STRING_OPTIONSMENU_ROWTEXTS"] = "行: 文本"
L["STRING_OPTIONSMENU_SKIN"] = "皮肤选择"
L["STRING_OPTIONSMENU_SPELLS"] = "法术定制"
L["STRING_OPTIONSMENU_SPELLS_CONSOLIDATE"] = "合并拥有相同名称的普通法术"
L["STRING_OPTIONSMENU_TITLETEXT"] = "标题栏：文本"
L["STRING_OPTIONSMENU_TOOLTIP"] = "提示"
L["STRING_OPTIONSMENU_WALLPAPER"] = "壁纸"
L["STRING_OPTIONSMENU_WINDOW"] = "窗口设置"
L["STRING_OVERALL"] = "总体"
L["STRING_OVERHEAL"] = "过量治疗"
L["STRING_OVERHEALED"] = "过量治疗的"
L["STRING_PARRY"] = "招架"
L["STRING_PERCENTAGE"] = "比例"
L["STRING_PET"] = "宠物"
L["STRING_PETS"] = "宠物"
L["STRING_PLAYER_DETAILS"] = "玩家详情"
L["STRING_PLAYERS"] = "玩家"
L["STRING_PLEASE_WAIT"] = "请稍候"
L["STRING_PLUGIN_CLEAN"] = "None"
L["STRING_PLUGIN_CLOCKNAME"] = "遭遇时间"
L["STRING_PLUGIN_CLOCKTYPE"] = "时钟类型"
L["STRING_PLUGIN_DURABILITY"] = "耐久力"
L["STRING_PLUGIN_FPS"] = "帧率"
L["STRING_PLUGIN_GOLD"] = "金币"
L["STRING_PLUGIN_LATENCY"] = "延迟"
L["STRING_PLUGIN_MINSEC"] = "分钟 & 秒"
L["STRING_PLUGIN_NAMEALREADYTAKEN"] = "Details! 无法安装插件，因为名称已被占用"
L["STRING_PLUGIN_PATTRIBUTENAME"] = "属性"
L["STRING_PLUGIN_PDPSNAME"] = "Raid Dps"
L["STRING_PLUGIN_PSEGMENTNAME"] = "片段"
L["STRING_PLUGIN_SECONLY"] = "只需几秒钟"
L["STRING_PLUGIN_SEGMENTTYPE"] = "片段类型"
L["STRING_PLUGIN_SEGMENTTYPE_1"] = "Fight #X"
L["STRING_PLUGIN_SEGMENTTYPE_2"] = "地下城名称"
L["STRING_PLUGIN_SEGMENTTYPE_3"] = "地下城名称加片段"
L["STRING_PLUGIN_THREATNAME"] = "我的威胁"
L["STRING_PLUGIN_TIME"] = "时钟"
L["STRING_PLUGIN_TIMEDIFF"] = "最后的战斗差异"
L["STRING_PLUGIN_TOOLTIP_LEFTBUTTON"] = "配置当前插件"
L["STRING_PLUGIN_TOOLTIP_RIGHTBUTTON"] = "选择另外一个插件"
L["STRING_PLUGINOPTIONS_ABBREVIATE"] = "简略"
L["STRING_PLUGINOPTIONS_COMMA"] = "逗号"
L["STRING_PLUGINOPTIONS_FONTFACE"] = "选字体"
L["STRING_PLUGINOPTIONS_NOFORMAT"] = "None"
L["STRING_PLUGINOPTIONS_TEXTALIGN"] = "文本对齐"
L["STRING_PLUGINOPTIONS_TEXTALIGN_X"] = "Text Align X"
L["STRING_PLUGINOPTIONS_TEXTALIGN_Y"] = "Text Align Y"
L["STRING_PLUGINOPTIONS_TEXTCOLOR"] = "文本颜色"
L["STRING_PLUGINOPTIONS_TEXTSIZE"] = "字体大小"
L["STRING_PLUGINOPTIONS_TEXTSTYLE"] = "文本样式"
L["STRING_QUERY_INSPECT"] = "获取天赋和装备等级。"
L["STRING_QUERY_INSPECT_FAIL1"] = "在战斗中无法查询。"
L["STRING_QUERY_INSPECT_REFRESH"] = "需要刷新"
L["STRING_RAID_WIDE"] = "[*] raid wide cooldown"
L["STRING_RAIDCHECK_PLUGIN_DESC"] = "当在一个团队副本中时，在Details!的标题栏上会出现一个图标显示合剂，食物，药水的使用。"
L["STRING_RAIDCHECK_PLUGIN_NAME"] = "Raid 检查"
L["STRING_REPORT"] = "到"
L["STRING_REPORT_BUTTON_TOOLTIP"] = "点击打开报告对话框"
L["STRING_REPORT_FIGHT"] = "战斗"
L["STRING_REPORT_FIGHTS"] = "战斗"
L["STRING_REPORT_INVALIDTARGET"] = "密语目标未找到"
L["STRING_REPORT_LAST"] = "上一次"
L["STRING_REPORT_LASTFIGHT"] = "上一次战斗"
L["STRING_REPORT_LEFTCLICK"] = "点击打开报告对话框"
L["STRING_REPORT_PREVIOUSFIGHTS"] = "以前的战斗"
L["STRING_REPORT_SINGLE_BUFFUPTIME"] = "BUFF的正常运行时间"
L["STRING_REPORT_SINGLE_COOLDOWN"] = "使用冷却时间"
L["STRING_REPORT_SINGLE_DEATH"] = "死于"
L["STRING_REPORT_SINGLE_DEBUFFUPTIME"] = "DEBUFF的正常运行时间"
L["STRING_REPORT_TOOLTIP"] = "报告结果"
L["STRING_REPORTFRAME_COPY"] = "复制和粘贴"
L["STRING_REPORTFRAME_CURRENT"] = "当前"
L["STRING_REPORTFRAME_CURRENTINFO"] = "只显示当前正在显示（如果支持的话）的数据。"
L["STRING_REPORTFRAME_GUILD"] = "公会"
L["STRING_REPORTFRAME_INSERTNAME"] = "插入玩家名称"
L["STRING_REPORTFRAME_LINES"] = "线条"
L["STRING_REPORTFRAME_OFFICERS"] = "官员频道"
L["STRING_REPORTFRAME_PARTY"] = "小队"
L["STRING_REPORTFRAME_RAID"] = "团队"
L["STRING_REPORTFRAME_REVERT"] = "逆转"
L["STRING_REPORTFRAME_REVERTED"] = "反向的"
L["STRING_REPORTFRAME_REVERTINFO"] = "相反的结果，显示出以升序（如果支持的话）。"
L["STRING_REPORTFRAME_SAY"] = "说"
L["STRING_REPORTFRAME_SEND"] = "发送"
L["STRING_REPORTFRAME_WHISPER"] = "密语"
L["STRING_REPORTFRAME_WHISPERTARGET"] = "密语目标"
L["STRING_REPORTFRAME_WINDOW_TITLE"] = "链接 Details!"
L["STRING_REPORTHISTORY"] = "在报告窗口显示标签"
L["STRING_RESISTED"] = "抵制"
L["STRING_RESIZE_ALL"] = "自由调整所有窗口"
L["STRING_RESIZE_COMMON"] = [=[调整
]=]
L["STRING_RESIZE_HORIZONTAL"] = "调整群组中所有窗口的宽度"
L["STRING_RESIZE_VERTICAL"] = "调整群组中所有窗口的高度"
L["STRING_RIGHT"] = "右"
L["STRING_RIGHT_TO_LEFT"] = "从右往左"
L["STRING_RIGHTCLICK_CLOSE_LARGE"] = "单击鼠标右键可关闭此窗口。"
L["STRING_RIGHTCLICK_CLOSE_MEDIUM"] = "用鼠标右键单击关闭该窗口。"
L["STRING_RIGHTCLICK_CLOSE_SHORT"] = "右键单击关闭。"
L["STRING_RIGHTCLICK_TYPEVALUE"] = "右键单击输入值"
L["STRING_SCORE_BEST"] = "你得到了 |cFFFFFF00%s|r 分，这是你的最佳得分，恭喜！"
L["STRING_SCORE_NOTBEST"] = "你获得了 |cFFFFFF00%s|r，你的最好成绩是 |cFFFFFF00%s|r ，在 %s 装等 %d "
L["STRING_SEE_BELOW"] = "见下文"
L["STRING_SEGMENT"] = "片段"
L["STRING_SEGMENT_EMPTY"] = "片段是空白"
L["STRING_SEGMENT_END"] = "结束"
L["STRING_SEGMENT_ENEMY"] = "敌对"
L["STRING_SEGMENT_LOWER"] = "片段"
L["STRING_SEGMENT_OVERALL"] = "总体数据"
L["STRING_SEGMENT_START"] = "开始"
L["STRING_SEGMENT_TRASH"] = "垃圾清理"
L["STRING_SEGMENTS"] = "段落"
L["STRING_SEGMENTS_LIST_BOSS"] = "首领战斗"
L["STRING_SEGMENTS_LIST_COMBATTIME"] = "战斗时长"
L["STRING_SEGMENTS_LIST_OVERALL"] = "总体"
L["STRING_SEGMENTS_LIST_TIMEINCOMBAT"] = "处于战斗中的时长"
L["STRING_SEGMENTS_LIST_TOTALTIME"] = "总时长"
L["STRING_SEGMENTS_LIST_TRASH"] = "可回收"
L["STRING_SHIELD_HEAL"] = "盾治疗"
L["STRING_SHIELD_OVERHEAL"] = "盾过量治疗"
L["STRING_SHORTCUT_RIGHTCLICK"] = "右键点击关闭"
L["STRING_SLASH_API_DESC"] = "打开 API 面白来创建插件，自定义显示和光环等内容。"
L["STRING_SLASH_CAPTURE_DESC"] = "打开或关闭数据的全部捕获。"
L["STRING_SLASH_CAPTUREOFF"] = "关闭所有数据采集。"
L["STRING_SLASH_CAPTUREON"] = "打开所有数据采集。"
L["STRING_SLASH_CHANGES"] = "更新"
L["STRING_SLASH_CHANGES_ALIAS1"] = "新"
L["STRING_SLASH_CHANGES_ALIAS2"] = "变化"
L["STRING_SLASH_CHANGES_DESC"] = "说明了什么是新的，Details!发生了什么变化！"
L["STRING_SLASH_DISABLE"] = "禁用"
L["STRING_SLASH_ENABLE"] = "启用"
L["STRING_SLASH_HIDE"] = "隐藏"
L["STRING_SLASH_HIDE_ALIAS1"] = "关闭"
L["STRING_SLASH_HISTORY"] = "历史记录"
L["STRING_SLASH_NEW"] = "新"
L["STRING_SLASH_NEW_DESC"] = "创建一个新窗口。"
L["STRING_SLASH_OPTIONS"] = "选项"
L["STRING_SLASH_OPTIONS_DESC"] = "打开选项面板。"
L["STRING_SLASH_RESET"] = "重置"
L["STRING_SLASH_RESET_ALIAS1"] = "清除"
L["STRING_SLASH_RESET_DESC"] = "清除所有片段"
L["STRING_SLASH_SHOW"] = "显示"
L["STRING_SLASH_SHOW_ALIAS1"] = "打开"
L["STRING_SLASH_SHOWHIDETOGGLE_DESC"] = "all windows if <window number> isn't passed."
L["STRING_SLASH_TOGGLE"] = "切换"
L["STRING_SLASH_WIPE"] = "团灭"
L["STRING_SLASH_WIPECONFIG"] = "重新安装"
L["STRING_SLASH_WIPECONFIG_CONFIRM"] = "单击继续安装"
L["STRING_SLASH_WIPECONFIG_DESC"] = "设置所有配置为默认设置，如果Details!不能正常工作。"
L["STRING_SLASH_WORLDBOSS"] = "世界BOSS"
L["STRING_SLASH_WORLDBOSS_DESC"] = "运行一个宏来显示本周你已经击杀过哪些BOSS。"
L["STRING_SPELL_INTERRUPTED"] = "法术打断"
L["STRING_SPELLLIST"] = "法术列表"
L["STRING_SPELLS"] = "法术"
L["STRING_SPIRIT_LINK_TOTEM"] = "血量交换"
L["STRING_SPIRIT_LINK_TOTEM_DESC"] = "在图腾范围内玩家之间血量的交换数额"
L["STRING_STATISTICS"] = "统计"
L["STRING_STATUSBAR_NOOPTIONS"] = "这个插件没有选项。"
L["STRING_SWITCH_CLICKME"] = "添加书签"
L["STRING_SWITCH_SELECTMSG"] = "设置这个展示为书签 #%d."
L["STRING_SWITCH_TO"] = "切换到"
L["STRING_SWITCH_WARNING"] = "角色改变。 开关: |cFFFFAA00%s|r  "
L["STRING_TARGET"] = "目标"
L["STRING_TARGETS"] = "目标"
L["STRING_TARGETS_OTHER1"] = "宠物和其他目标"
L["STRING_TEXTURE"] = "纹理"
L["STRING_TIME_OF_DEATH"] = "死亡"
L["STRING_TOOOLD"] = "不能安装因为你的Details!版本过低。"
L["STRING_TOP"] = "顶"
L["STRING_TOP_TO_BOTTOM"] = "从高到低"
L["STRING_TOTAL"] = "总"
L["STRING_TRANSLATE_LANGUAGE"] = "帮助翻译 Details!"
L["STRING_TUTORIAL_FULLY_DELETE_WINDOW"] = "你关闭了一个窗口，你可以随时重新打开它。完全删除一个窗口请前往 选项 -> 窗口：一般设置 -> 删除。"
L["STRING_TUTORIAL_OVERALL1"] = "调整设置面板的总体数据设置 > PvE/PvP"
L["STRING_UNKNOW"] = "未知"
L["STRING_UNKNOWSPELL"] = "未知法术"
L["STRING_UNLOCK"] = [=[Ungroup windows
 in this button]=]
L["STRING_UNLOCK_WINDOW"] = "解锁"
L["STRING_UPTADING"] = "更新中"
L["STRING_VERSION_AVAILABLE"] = "有新版本可用，请从 Twitch 或 Curse 上下载。"
L["STRING_VERSION_UPDATE"] = "新版本：有什么改变？ 点击这里"
L["STRING_VOIDZONE_TOOLTIP"] = "伤害和时间:"
L["STRING_WAITPLUGIN"] = [=[等待
插件]=]
L["STRING_WAVE"] = "wave"
L["STRING_WELCOME_1"] = [=[|cFFFFFFFFWelcome to Details! 快速安装向导

|r本指南将帮助你一些重要的配置。
您可以在任何时候跳过这只是点击“跳过”按钮。]=]
L["STRING_WELCOME_11"] = "如果你改变主意，你可以随时再通过选项面板中修改"
L["STRING_WELCOME_12"] = "选择更新速度和动画。 此外，如果你的电脑有2GB或更少的内存RAM，它可能要减少和段的数量。"
L["STRING_WELCOME_13"] = ""
L["STRING_WELCOME_14"] = "更新速度"
L["STRING_WELCOME_15"] = [=[窗口中的每个更新之间的延迟长度。
标准值是 |cFFFFFF000.5|r 秒, 建议值(对于raiders) 是 |cFFFFFF001.0|r.]=]
L["STRING_WELCOME_16"] = "启用动画"
L["STRING_WELCOME_17"] = "当启用时，此功能使得计量条在窗口轻轻滑动，而不是“跳”到相应的大小。"
L["STRING_WELCOME_2"] = "如果你改变主意，你可以随时再通过选项面板中修改"
L["STRING_WELCOME_26"] = "使用界面：拉伸"
L["STRING_WELCOME_27"] = [=[高亮显示的按钮是担架。 |cFFFFFF00点击|r 并 |cFFFFFF00拖动!|r.


如果窗口被锁定时，整个标题栏变为拉伸按钮。]=]
L["STRING_WELCOME_28"] = "使用界面：窗口控制"
L["STRING_WELCOME_29"] = [=[窗口控制，基本上做两件事情：

- 打开一个 |cFFFFFF00新窗口|r.
- 显示一个 |cFFFFFF00被关闭窗口|r 的菜单，以便在任何时候都可以重新打开该窗口。]=]
L["STRING_WELCOME_3"] = "选择你的DPS和HPS者优先的方法："
L["STRING_WELCOME_30"] = "使用界面：书签"
L["STRING_WELCOME_31"] = [=[|cFFFFFF00右键点击|r  |cFFFFAA00书签|r 窗口的任何位置打开书签。

|cFFFFFF00再次右键点击|r 关闭面板或选择另一个显示，如果点击一个图标。

|TInterface\AddOns\Details\images\key_shift:14:30:0:0:64:64:0:64:0:40|t + 右键点击代替打开片段。

|TInterface\AddOns\Details\images\key_ctrl:14:30:0:0:64:64:0:64:0:40|t + 右键点击关闭窗口。]=]
L["STRING_WELCOME_32"] = "使用界面：群组窗口"
L["STRING_WELCOME_34"] = "使用接口：扩展工具提示"
L["STRING_WELCOME_36"] = "使用界面：插件"
L["STRING_WELCOME_38"] = "准备好去 Raid!"
L["STRING_WELCOME_39"] = [=[Thank you for choosing Details!

Feel free to always send feedbacks and bug reports to us.]=]
L["STRING_WELCOME_4"] = "活动时间： "
L["STRING_WELCOME_41"] = "接口和存储器性能："
L["STRING_WELCOME_42"] = "快速外观设置"
L["STRING_WELCOME_43"] = "选择您喜欢的皮肤："
L["STRING_WELCOME_44"] = "壁纸"
L["STRING_WELCOME_45"] = "欲了解更多的自定义选项，勾选选项面板。"
L["STRING_WELCOME_46"] = "导入设置"
L["STRING_WELCOME_5"] = "有效时间： "
L["STRING_WELCOME_57"] = "导入基本设置从已安装过的插件。"
L["STRING_WELCOME_58"] = [=[预定义集合的外观配置。

|cFFFFFF00重要|r: 所有设置可以在以后的选项面板上的修改。]=]
L["STRING_WELCOME_59"] = "启用背景墙纸。"
L["STRING_WELCOME_6"] = "每个团队成员的计时器搁置，如果他的活动停止，然后再返回来算恢复时。"
L["STRING_WELCOME_60"] = "昵称和头像"
L["STRING_WELCOME_61"] = "头像显示在工具提示，同样也显示在玩家的详细信息窗口。"
L["STRING_WELCOME_62"] = "都会发送给你公会中使用Details!的其他成员。昵称将代替你的角色名称。"
L["STRING_WELCOME_63"] = "快速的Dps/ HPS更新"
L["STRING_WELCOME_64"] = "当启用时，DPS和HPS显示更新比总伤害或治疗更快。"
L["STRING_WELCOME_65"] = "按下右按钮！"
L["STRING_WELCOME_66"] = [=[拖动一个窗口邻近另一个窗口来创建一个组。

组窗口拉伸和缩放在一起。

就像一个窗口一样。]=]
L["STRING_WELCOME_67"] = [=[按shift扩大玩家的提示来显示使用的所有法术。

Ctrl键是目标，Alt键是宠物。]=]
L["STRING_WELCOME_68"] = [=[Details! is infested by
a plague called 'Plugins'.

They are everywhere and
helps you with many tasks.

Examples are: threat meter, dps analysis, encounter summary, charts creation, and more.]=]
L["STRING_WELCOME_69"] = "跳过"
L["STRING_WELCOME_7"] = "用于排名，这种方法使用经过实战的时间度量的RAID所有成员的DPS和HPS。"
L["STRING_WELCOME_70"] = "标题栏设置"
L["STRING_WELCOME_71"] = "条列设置"
L["STRING_WELCOME_72"] = "视窗设置"
L["STRING_WELCOME_73"] = "选择字母表序或服务器："
L["STRING_WELCOME_74"] = "拉丁字母表序"
L["STRING_WELCOME_75"] = "西里尔字母表序"
L["STRING_WELCOME_76"] = "中国"
L["STRING_WELCOME_77"] = "韩国"
L["STRING_WELCOME_78"] = "台湾"
L["STRING_WELCOME_79"] = "创建第二个窗口"
L["STRING_WINDOW_NOTFOUND"] = "找不到窗口。"
L["STRING_WINDOW_NUMBER"] = "窗口数字"
L["STRING_WINDOW1ATACH_DESC"] = "创建一个群组窗口, 拖动 #2 到 窗口 #1 附近。"
L["STRING_WIPE_ALERT"] = "团长命令：清除数据！"
L["STRING_WIPE_ERROR1"] = "已经发送了一个清除指令。"
L["STRING_WIPE_ERROR2"] = "不在团队中。"
L["STRING_WIPE_ERROR3"] = "无法停止遇敌。"
L["STRING_YES"] = "YES"

