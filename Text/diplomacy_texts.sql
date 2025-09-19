insert or replace into EnglishText
	(Tag,													        Text)
values
    ("LOC_PLAYER_YIELD_SCIENCE_DELEGATIONS",			            "+{1_Num} from Delegations"),
    ("LOC_PLAYER_YIELD_SCIENCE_EMBASSIES",			                "+{1_Num} from Embassies"),
    ("LOC_BUILDING_CONSULATE_NAME",			                        "Consulate"),
    ("LOC_BUILDING_CONSULATE_DESCRIPTION",			                "+2 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]Alliance Points with all allies increase by an additional .5 per turn. For your current highest alliance lever, each level provides +3 [ICON_Gold] Gold to international [ICON_TRADEROUTE] Trade Routes. [NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_CHANCERY_DESCRIPTION",			                "+3 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]+100% [ICON_Favor] Favor per turn from Alliance Level. every Cultural Policy in your government provide +1 [ICON_Science] Science and +1 [ICON_Culture] Culture for the [ICON_TRADEROUTE] Trade Routes to an Ally's city. [NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_CONSULATE_CITYSTATES_NAME",			        "Foreign Ministry"),
    ("LOC_BUILDING_JNR_CONSULATE_CITYSTATES_DESCRIPTION",			"+2 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]Leveraging City States costs half [ICON_Gold] Gold. City State units gain +4 [ICON_Strength] Combat Strength if you are the City State's Suzerain (including Leveraged Units).[NEWLINE]Alliances grant half their [ICON_TradeRoute] Trade Route yield bonuses to all your [ICON_TradeRoute] Trade Route to city states. [NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_CONSULATE_SPIES_NAME",			            "Intelligence Agency"),
    ("LOC_BUILDING_JNR_CONSULATE_SPIES_DESCRIPTION",			    "+2 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]+1 Spy and Spy capacity.All Spy Operations have a higher chance of success. [NEWLINE]Your Spy units gain +2 sight range, Spy mission time reduces by 15% and have a free promotion and can choose from any possible promotion. [NEWLINE]All units gain +3 [ICON_STRENGTH] Combat Bonus from each level of [ICON_VISLIMITED] Diplomatic Visibility. [NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_CHANCERY_SPIES_NAME",			            "Security Service"),
    ("LOC_BUILDING_JNR_CHANCERY_SPIES_DESCRIPTION",			        "+3 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]Your spies provide +2 Adjacency bonus to districts within 1 tiles. Enemy Spy''s level is reduced by 1 when targeting this city or cities with Encampments. When this civilization captures or kills an enemy Spy, receive 100 [ICON_Science] Science for every level of the enemy Spy. [NEWLINE]Can only be built once in a civilization."),
    ("LOC_ABILITY_CHANCERY_SPY_ADJACENCY_DESCRIPTION",              "+2 Adjacency bonus to districts within 1 tiles."),
    ("LOC_BUILDING_JNR_CHANCERY_CITY_STATES_NAME",			        "Foreign Exchange"),
    ("LOC_BUILDING_JNR_CHANCERY_CITYSTATES_DESCRIPTION",			"+3 Influence Points per turn. Gain +1 [ICON_ENVOY] Envoy.[NEWLINE]+1 [ICON_Gold] Gold from each of your [ICON_Envoy] Envoys at city-states. +6 [ICON_Gold] Gold from each Delegations and Embassies. [NEWLINE]Can only be built once in a civilization."),
    -- 外交区
	("LOC_DISTRICT_DIPLOMATIC_QUARTER_HD_DESCRIPTION",				"Your civilization receives +1 [ICON_FAVOR] Diplomatic Favor for each Delegation or Embassy from a foreign civilization through diplomacy. Awards 1 [ICON_Envoy] Envoy when completed. Enemy Spies operate at 2 levels below normal when targeting this District and adjacent Districts. Grants the ability to construct an additional Spy. Districts recieve +1 adjacency bonuses from being adjacent to Diplomatic Quater. Each building in it can only be built once in your empire.");

insert or replace into LocalizedText
    (Language,      Tag,                                                            Text)
values
    --国际汇兑处
    ("zh_Hans_CN", "LOC_PLAYER_YIELD_SCIENCE_DELEGATIONS",                          "+{1_Num} 来自代表团"),
    ("zh_Hans_CN", "LOC_PLAYER_YIELD_SCIENCE_EMBASSIES",                            "+{1_Num} 来自大使馆"),
    -- 领事馆
    ("zh_Hans_CN",  "LOC_BUILDING_CONSULATE_DESCRIPTION",                           "每回合影响力点数+2。获得1名 [ICON_ENVOY] 使者。[NEWLINE]所有类型的同盟点数每回合+0.5。您最高级的同盟，每一级为国际 [ICON_TRADEROUTE] 贸易路线+3 [ICON_Gold] 金币。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    -- 大使馆
    ("zh_Hans_CN",  "LOC_BUILDING_CHANCERY_NAME",                                   "总领馆"),
    ("zh_Hans_CN",  "LOC_BUILDING_CHANCERY_DESCRIPTION",                            "每回合影响力点数+3。获得1名 [ICON_ENVOY] 使者。[NEWLINE]来自同盟等级的 [ICON_Favor] 外交支持+100%。政体中每个生效中的文化政策卡使通往同盟城市的 [ICON_TradeRoute] 贸易路线获得+1 [ICON_Science] 科技值与+1 [ICON_Culture] 文化值。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    -- 外交部
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CONSULATE_CITYSTATES_NAME",                   "外交部"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CONSULATE_CITYSTATES_DESCRIPTION",            "每回合影响力点数+2。获得1名 [ICON_ENVOY] 使者。[NEWLINE]征募城邦单位征兵花费的 [ICON_GOLD] 金币减少50%。宗主城邦单位获得+4 [ICON_Strength] 战斗力（包括征兵时）。[NEWLINE]通往城邦的 [ICON_TradeRoute] 贸易路线获得您所拥有的所有同盟赋予 [ICON_TradeRoute] 贸易路线产出的一半产出。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    -- 情报局
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CONSULATE_SPIES_NAME",                        "情报局"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CONSULATE_SPIES_DESCRIPTION",                 "每回合影响力点数+2。获得1名 [ICON_ENVOY] 使者。[NEWLINE]获得一个间谍并+1间谍容量，所有间谍活动的成功率上升。[NEWLINE]所有间谍单位获得+2视野范围，减少15%任务时间并且初始便拥有1次免费晋升。[NEWLINE]每级 [ICON_VISLIMITED] 外交能见度提供额外+3 [ICON_STRENGTH] 战斗力。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    -- 国家安全局
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHANCERY_SPIES_NAME",                         "国家安全局"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHANCERY_SPIES_DESCRIPTION",                  "每回合影响力点数+3。获得1名 [ICON_ENVOY] 使者。[NEWLINE]间谍为1个单元格内的区域+2相邻加成。敌方间谍在本城或者任何拥有军营的城市执行任务时成功率下降一级。当俘虏或击杀敌方间谍时，从该间谍每个晋升获得100点 [ICON_Science] 科技值。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_ABILITY_CHANCERY_SPY_ADJACENCY_DESCRIPTION",               "为1个单元格内的区域+2相邻加成。"),
    -- 国际汇兑处
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHANCERY_CITY_STATES_NAME",                   "国际汇兑处"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHANCERY_CITYSTATES_DESCRIPTION",             "每回合影响力点数+3。获得1名 [ICON_ENVOY] 使者。[NEWLINE]每个已派遣的使者提供+1 [ICON_Gold] 金币。从其他文明处获得的每个代表团和大使馆提供+6 [ICON_Gold] 金币。[NEWLINE]文明中一次仅限建造一座该建筑。"),
    -- 外交区
	("zh_Hans_CN",	"LOC_DISTRICT_DIPLOMATIC_QUARTER_HD_DESCRIPTION",				"所有盟友的同盟点数每回合额外增加0.25点。通过外交，外国文明的每个代表团或大使馆将为您的文明提供+1 [ICON_FAVOR] 外交支持。获得1名 [ICON_ENVOY] 使者。+1间谍容量，允许招募间谍（如果您尚未解锁）。将此区域和相邻区域当做目标的敌方间谍降低2级。使相邻区域获得的相邻加成+1。其中的每个建筑文明中一次仅限建造一座。");