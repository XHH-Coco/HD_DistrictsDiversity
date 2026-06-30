-- UC_COM_Text
-- Author: JNR
--------------------------------------------------------------

-- English
--------------------------------------------------------------
insert or replace into EnglishText
    (Tag,                                                           Text)
values
    -- 货栈
    ("LOC_BUILDING_JNR_WAYSTATION_NAME",                            "Waystation"),
    ("LOC_BUILDING_JNR_WAYSTATION_DESCRIPTION",                     "If city has improved Transit Resources, +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production."),
    -- 市场
    ("LOC_BUILDING_MARKET_NAME",                                    "Market"),
    ("LOC_BUILDING_MARKET_DESCRIPTION_UC_JNR",                      "+1 [ICON_TradeRoute] Trade Route capacity. [ICON_CITIZEN] Citizens in the City provide +1 [ICON_GOLD] Gold."),
    -- 铸币厂
    ("LOC_BUILDING_JNR_MINT_NAME",                                  "Mint"),
    ("LOC_BUILDING_JNR_MINT_DESCRIPTION",                           "+1 [ICON_TradeRoute] Trade Route capacity. For each Minting Resource you controlled, +2 [ICON_Gold] Gold for regional yield. If you have at least 2 Minting Resources, +1 regional range tile."),
    -- 纺织会馆
    ("LOC_BUILDING_SUKIENNICE_NAME",                                "Krakow Sukiennice"),
    ("LOC_BUILDING_SUKIENNICE_DESCRIPTION_UC_JNR",                  "A building unique to Poland. This building can only be built once per civilization. [NEWLINE][NEWLINE]Culture Bomb adjacent tiles when completing a Commercial Hub district. [NEWLINE]For each +8 adjacency bonus of Commercial Hub district in this city, provides +1 [ICON_TradeRoute] Trade Route capacity. Provides [ICON_PRODUCTION] Production equal to 25% adjacency of Commercial Hub district in this city to Domestic [ICON_TRADEROUTE] Trade Routes to this city. Provides [ICON_GOLD] Gold equal to 75% adjacency of Commercial Hub district in this city to International [ICON_TRADEROUTE] Trade Routes starting from this city. [NEWLINE][NEWLINE] When you build International [ICON_TradeRoute] Trade Routes, receive a random luxury resource and its yields improved by the destination city. This effect can only be obtained once from each destination city."),
    -- 银行
    ("LOC_BUILDING_BANK_NAME",                                      "Bank"),
    ("LOC_BUILDING_BANK_DESCRIPTION_UC_JNR",                        "[ICON_CITIZEN] Citizens in this city provide +3 [ICON_GOLD] Gold. If Commercial Hub district in this city has at least +6 basic adjacency bonus, +10% accumulation rate for [ICON_GREATMERCHANT] Great Merchant Points."),
    -- 会馆
    ("LOC_BUILDING_JNR_GUILDHALL_NAME",                             "Guildhall"),
    ("LOC_BUILDING_JNR_GUILDHALL_DESCRIPTION",                      "If Industrial Zone district in this city has at least +6 basic adjacency bonus, +10% accumulation rate for [ICON_GREATENGINEER] Great Engineer Points."),
    -- 商人中心
    ("LOC_BUILDING_JNR_MERCHANT_QUARTER_NAME",                      "Merchant Quarter"),
    ("LOC_BUILDING_JNR_MERCHANT_QUARTER_DESCRIPTION",               "+9 [ICON_GOLD] Gold to Domestic [ICON_TRADEROUTE] Trade Routes to this city and International [ICON_TRADEROUTE] Trade Routes starting from this city. If Harbor district in this city has at least +6 basic adjacency bonus, +10% accumulation rate for [ICON_GREATADMIRAL] Great Admiral Points."),
    -- 大巴扎
    ("LOC_BUILDING_GRAND_BAZAAR_NAME",                              "Grand Bazaar"),
    ("LOC_BUILDING_GRAND_BAZAAR_DESCRIPTION_UC_JNR",                "A building unique to the Ottomans. [ICON_CITIZEN] Citizens in this city provide +3 [ICON_GOLD] Gold."),
    -- 证券交易所
    ("LOC_BUILDING_STOCK_EXCHANGE_NAME",                            "Stock Exchange"),
    ("LOC_BUILDING_STOCK_EXCHANGE_DESCRIPTION_UC_JNR",              "+10% [ICON_gold] Gold and +10% accumulation rate for [ICON_GREATMERCHANT] Great Merchant Points from all cities within 6 tiles that do not already have a bonus from another Stock Exchange. These bonuses are doubled if the city is fully powered."),
    -- 商务写字楼
    ("LOC_BUILDING_JNR_COMMODITY_EXCHANGE_NAME",                    "Commercial Office Building"),
    ("LOC_BUILDING_JNR_COMMODITY_EXCHANGE_DESCRIPTION",             "Bonus [ICON_Gold] Gold equal to the adjacency bonus of the Commercial Hub district. +1 [ICON_Production] Production and +3 [ICON_GOLD] Gold per [ICON_Citizen] Citizen in this city."),
    -- 市场部
    ("LOC_BUILDING_JNR_MARKETING_AGENCY_NAME",                      "Marketing Agency"),
    ("LOC_BUILDING_JNR_MARKETING_AGENCY_DESCRIPTION",               "+5% [ICON_Tourism] Tourism output (at most 25%) to civilizations to which you have a [ICON_TradeRoute] Trade Route, double when city is powered. +10% accumulation rate for [ICON_GREATMERCHANT] Great Merchant Points. Commercial Hub district's adjacency bonus provides [ICON_TOURISM] Tourism as well."),
    ("LOC_BUILDING_JNR_MARKETING_AGENCY_MONOPOLY_DESCRIPTION",      "+50% [ICON_Tourism] Tourism to [ICON_Greatwork_Product] Products in this City, doubled when this City is fully [ICON_POWER] Powered. +10% [ICON_GREATMERCHANT] Great Merchant points you generate. Commercial Hub district's adjacency bonus provides [ICON_TOURISM] Tourism as well."),
    -- 贸易码头
    ("LOC_BUILDING_LIGHTHOUSE_NAME",                                "Trade Port"),
    ("LOC_BUILDING_LIGHTHOUSE_DESCRIPTION_UC_JNR",                  "+25% combat experience for all naval units trained in this city. Fishing Boats provide +1 [ICON_Production] Production in this city. +1 [ICON_TradeRoute] Trade Route capacity. +2 [ICON_Gold] Gold for International [ICON_TradeRoute] Trade Route starting from this city."),
    -- 渔业码头
    ("LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_NAME",                    "Fishing Port"),
    ("LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_DESCRIPTION",             "+25% combat experience for all naval units trained in this city. +1 [ICON_Food] Food on all Coast tiles for this city. +1 [ICON_TradeRoute] Trade Route capacity."),
    -- 造船厂
    ("LOC_BUILDING_SHIPYARD_NAME",                                  "Shipyard"),
    ("LOC_BUILDING_SHIPYARD_DESCRIPTION_UC_JNR",                    "Bonus [ICON_Production] Production equal to the adjacency bonus of the Harbor district. +1 [ICON_PRODUCTION] Production on all Shallow Sea and Lake tiles for this city."),
    -- 避风港
    ("LOC_BUILDING_JNR_ENTREPOT_NAME",                              "Haven"),
    ("LOC_BUILDING_JNR_ENTREPOT_DESCRIPTION",                       "Each [ICON_Citizen] Citizen in the city provides +1 [ICON_PRODUCTION] Production. +25% combat experience for all naval units trained in this city. +50% production speed for Naval Units. Naval units trained in this city start with a free promotion. Provides you with 1 of each Strategic resource per turn that you have revealed."),
    -- 商港
    ("LOC_BUILDING_JNR_FISH_MARKET_NAME",                           "Entrepot"),
    ("LOC_BUILDING_JNR_FISH_MARKET_DESCRIPTION",                    "Bonus [ICON_GOLD] Gold equal to the adjacency bonus of the Harbor district. +9 [ICON_GOLD] Gold to Domestic [ICON_TRADEROUTE] Trade Routes to this city and International [ICON_TRADEROUTE] Trade Routes starting from this city."),
    -- 海港
    ("LOC_BUILDING_SEAPORT_NAME",                                   "Seaport"),
    ("LOC_BUILDING_SEAPORT_DESCRIPTION_UC_JNR",                     "Bonus [ICON_Food] Food equal to the adjacency bonus of the Harbor district. Improvements on water area provide +1 [ICON_FOOD] Food and [ICON_Production] Production in this city. Allows Fleets and Armadas to be trained directly. Fleet and Armada training costs reduced by 10%."),
    -- 游轮码头
    ("LOC_BUILDING_JNR_OFFSHORE_TERMINAL_NAME",                     "Cruise Terminal"),
    ("LOC_BUILDING_JNR_OFFSHORE_TERMINAL_DESCRIPTION",              "Improvements on water area provide +1 [ICON_CULTURE] and +3 [ICON_GOLD] Gold in this city. Harbor district's adjacency bonus provides [ICON_TOURISM] Tourism as well, doubled when adjacent to Entertainment Complex or Water Park. +1 Appeal in this City. Seaside Resorts in this City provide +50% [ICON_Tourism] Tourism."),
    ("LOC_BUILDING_JNR_OFFSHORE_TERMINAL_MONOPOLY_DESCRIPTION",     "Improvements on water area provide +1 [ICON_CULTURE] and +3 [ICON_GOLD] Gold in this city. Harbor district's adjacency bonus provides [ICON_TOURISM] Tourism as well. +50% [ICON_Tourism] Tourism for [ICON_Greatwork_Product] Product in this city, doubled when adjacent to Entertainment Complex or Water Park. +1 Appeal in this city. +50% [ICON_Tourism] Tourism for Seaside Resort."),
    -- 海军基地
    ("LOC_BUILDING_JNR_NAVAL_BASE_NAME",                            "Naval Base"),
    ("LOC_BUILDING_JNR_NAVAL_BASE_DESCRIPTION",                     "+25% combat experience for all naval units trained in this city. +75% production speed for Naval Units. Allows Fleets and Armadas to be trained directly. Fleet and Armada training costs reduced by 25%. [NEWLINE]+10% accumulation rate for [ICON_GREATADMIRAL] Great Admiral Points. +3 [ICON_STRENGTH] Combat Strength for all navy units trained in this city."),
    -- 大本钟
    ("LOC_BUILDING_BIG_BEN_EXPANSION2_DESCRIPTION",                 "+1 Economic policy slot[NEWLINE][NEWLINE]Immediately after construction [ICON_GOLD] Gold in treasury is increased by 50%. Must be built next to a River adjacent to a Commercial Hub district with a Bank, a Guildhall or a Merchant Quarter."),
    -- 鼓舞/尤里卡
    ("LOC_BOOST_TRIGGER_CAPITALISM_HD",                             "Build 1 Stock Exchanges."),
    ("LOC_BOOST_TRIGGER_GUILDS_HD",                                 "Build 2 Commercial Hubs."),
    ("LOC_BOOST_TRIGGER_ECONOMICS_HD",                              "Build 2 Banks, Guildhalls or Merchant Quarters."),
    ("LOC_BOOST_TRIGGER_LONGDESC_ECONOMICS_HD",                     "The influence of new business organizations continues to grow. It's time to formally examine the driving forces that are shaping your country's economy."),
    ("LOC_BOOST_TRIGGER_STEAM_POWER_HD",                            "Build 2 Shipyards, Havens or Entrepots."),
    ("LOC_BOOST_TRIGGER_LONGDESC_STEAM_POWER_HD",                   "Better port facilities offered the possibility of mass production of steam ships."),
    -- 伟人
    ("LOC_ARTEMISIA_LIGHTHOUSE",                                    "Instantly builds a Fishing Port in this district."),
    ("LOC_ARTEMISIA_FISHING_PORT_FOOD",                             "Fishing Ports provide +{Amount} [ICON_Food] Food."),
    ("LOC_ARTEMISIA_TRADE_PORT_GOLD",                               "Trade Ports provide +{Amount} [ICON_Gold] Gold."),
    ("LOC_GREATPERSON_HORATIO_NELSON_JNR_ACTIVE",                   "Instantly builds a Fishing Port and Shipyard in this district. +50% flanking bonus for all naval units."),
    ("LOC_HORATIO_NELSON_TIER2_PRODUCTION",                         "Shipyards, Havens and Entrepots provide +{Amount} [ICON_Production] Production."),
    ("LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_NAVAL_BASE",           "Instantly builds a Fishing Port, Haven, and Naval Base in this district."),
    ("LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_TIER3_HOUSING",        "Seaports, Cruise Terminals and Naval Bases provide +{Amount} [ICON_Housing] Housing."),
    ("LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_TIER3_PRODUCTION",     "Seaports, Cruise Terminals and Naval Bases provide +{Amount} [ICON_Production] Production."),
    -- 其他说明
    ("LOC_TRAIT_RADIO_ORANJE_DESCRIPTION",                          "Shipyard, Entrepot or Haven provides +1 [ICON_TradeRoute] Trade Route capacity. Each international [ICON_TradeRoute] Trade Route to or from your city provide +2 [ICON_SCIENCE] Science for you, doubled if you are in Dark Ages."),
    ("LOC_ABILITY_LIGHTHOUSE_TRAINED_UNIT_XP_DESCRIPTION",          "+25% Earned experience from training in Tier 1 Harbor Buildings"),
    ("LOC_ABILITY_SHIPYARD_TRAINED_UNIT_XP_DESCRIPTION",            "+25% Earned experience from training in Haven"),
    ("LOC_ABILITY_SEAPORT_TRAINED_UNIT_XP_DESCRIPTION",             "+25% Earned experience from training in Naval Base"),
    ("LOC_ABILITY_SEAPORT_TRAINED_UNIT_STRENGTH_DESCRIPTION",       "+3 [ICON_Strength] Combat Strength from training in Naval Base"),
    ("LOC_UNIT_LEU_TYCOON_JNR_DESCRIPTION",                         "Pricey Civilian unit that may only be purchased with [ICON_GOLD] Gold. Requires a Market, or a Mint, or a Emporium, or a Trade Port to be purchased.[NEWLINE][NEWLINE]Tycoons can create Industries on Luxury Resource tiles, and after the discovery of Steam Power they can create Railroads and Stations to improve yields, commerce and [ICON_PRODUCTION] Production in your territory."),
    ("LOC_UNIT_LEU_INVESTOR_JNR_DESCRIPTION",                       "Pricey Civilian unit that may only be purchased with [ICON_GOLD] Gold. Requires a Bank, or a Guildhall, or a Merchant Quarter, or a Entrepot, or a Shipyard to be purchased.[NEWLINE][NEWLINE]Investors can found Corporations that allow your civilization to create [ICON_GREATWORK_PRODUCT] Products for additional [ICON_GOLD] Gold and [ICON_TOURISM] Tourism, or create Warehouses and Container Ports in other civilizations to further strengthen commerce and your Corporations."),
    ("LOC_POLICY_ROBBER_BARONS_DESCRIPTION",                        "+50% [ICON_Gold] Gold in cities with a Stock Exchange, a Commercial Office Building or a Marketing Agency. +25% [ICON_Production] Production in cities with a Factory or a Chemical Plant.[NEWLINE]BUT: -2 [ICON_Amenities] Amenities in all cities.");
--------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                           Text)
values
    -- 货栈
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_WAYSTATION_NAME",                            "货栈"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_WAYSTATION_DESCRIPTION",                     "本城若拥有改良的运载资源，+2 [ICON_FOOD] 食物和+1 [ICON_PRODUCTION] 生产力。"),
    -- 市场
    ("zh_Hans_CN",  "LOC_BUILDING_MARKET_NAME",                                    "市场"),
    ("zh_Hans_CN",  "LOC_BUILDING_MARKET_DESCRIPTION_UC_JNR",                      "+1 [ICON_TradeRoute] 贸易路线容量。所在城市每位 [ICON_Citizen] 公民+1 [ICON_GOLD] 金币。"),
    -- 铸币厂
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MINT_NAME",                                  "铸币厂"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MINT_DESCRIPTION",                           "+1 [ICON_TradeRoute] 贸易路线容量。你每拥有一种货币资源，辐射产出+2 [ICON_Gold] 金币。若你拥有至少2种货币资源，辐射范围+1单元格。"),
    -- 纺织会馆
    ("zh_Hans_CN",  "LOC_BUILDING_SUKIENNICE_NAME",                                "克拉科夫纺织会馆"),
    ("zh_Hans_CN",  "LOC_BUILDING_SUKIENNICE_DESCRIPTION_UC_JNR",                  "波兰特色建筑，文明中一次仅限建造一座该建筑。[NEWLINE][NEWLINE]建成商业中心后对相邻单元格释放文化炸弹。[NEWLINE]本城的商业中心每拥有+8相邻加成，提供+1 [ICON_TradeRoute] 贸易路线容量。以本城为目的地的国内 [ICON_TRADEROUTE] 贸易路线获得25%本城商业中心相邻加成的 [ICON_PRODUCTION] 生产力；本城出发的国际 [ICON_TRADEROUTE] 贸易路线获得75%本城商业中心相邻加成的 [ICON_GOLD] 金币。[NEWLINE][NEWLINE]本城建立国际 [ICON_TRADEROUTE] 贸易路线时，随机获得一份目的地城市开发的奢侈资源以及其产出，仅能从每座目的地城市获得一次该效果。"),
    -- 银行
    ("zh_Hans_CN",  "LOC_BUILDING_BANK_NAME",                                      "银行"),
    ("zh_Hans_CN",  "LOC_BUILDING_BANK_DESCRIPTION_UC_JNR",                        "城市中每位 [ICON_CITIZEN] 公民+3 [ICON_GOLD] 金币。若此城的商业中心基础相邻加成至少+6，则玩家的 [ICON_GREATMERCHANT] 大商人点数积累速度+10%。"),
    -- 会馆
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GUILDHALL_NAME",                             "工商会馆"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GUILDHALL_DESCRIPTION",                      "若此城的工业区基础相邻加成至少+6，则玩家的 [ICON_GREATENGINEER] 大工程师点数积累速度+10%。"),
    -- 商人中心
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MERCHANT_QUARTER_NAME",                      "商人中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MERCHANT_QUARTER_DESCRIPTION",               "以本城为目的地的国内 [ICON_TRADEROUTE] 贸易路线和本城出发的国际 [ICON_TRADEROUTE] 贸易路线+9 [ICON_GOLD] 金币。若此城的港口基础相邻加成至少+6，则玩家的 [ICON_GREATADMIRAL] 海军统帅点数积累速度+10%。"),
    -- 大巴扎
    ("zh_Hans_CN",  "LOC_BUILDING_GRAND_BAZAAR_NAME",                              "大巴扎"),
    ("zh_Hans_CN",  "LOC_BUILDING_GRAND_BAZAAR_DESCRIPTION_UC_JNR",                "奥斯曼特色建筑。城市中每位 [ICON_CITIZEN] 公民+3 [ICON_GOLD] 金币。玩家的 [ICON_GREATMERCHANT] 大商人点数积累速度+10%。"),
    -- 证券交易所
    ("zh_Hans_CN",  "LOC_BUILDING_STOCK_EXCHANGE_NAME",                            "证券交易所"),
    ("zh_Hans_CN",  "LOC_BUILDING_STOCK_EXCHANGE_DESCRIPTION_UC_JNR",              "6个单元格内的城市+10% [ICON_GOLD] 金币，并使玩家的 [ICON_GREATMERCHANT] 大商人点数积累速度+10%（前提是其尚未从其他的“证券交易所”建筑获得加成）；此城 [ICON_POWER] 供电充足时效果翻倍。"),
    -- 商务写字楼
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_COMMODITY_EXCHANGE_NAME",                    "商务写字楼"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_COMMODITY_EXCHANGE_DESCRIPTION",             "[ICON_Gold] 金币加成等于商业中心区域的相邻加成。城市中每位 [ICON_Citizen] 公民+1 [ICON_Production] 生产力和+3 [ICON_GOLD] 金币。"),
    -- 市场部
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MARKETING_AGENCY_NAME",                      "市场部"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MARKETING_AGENCY_DESCRIPTION",               "您向有 [ICON_TradeRoute] 贸易路线连接的文明输出的 [ICON_Tourism] 旅游业绩+5%；此城 [ICON_POWER] 供电充足时，该效果翻倍。最多只能有5个市场部生效。玩家的 [ICON_GREATMERCHANT] 大商人点数积累速度+10%。商业中心的相邻加成也产生等量 [ICON_Tourism] 旅游业绩。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MARKETING_AGENCY_MONOPOLY_DESCRIPTION",      "此城市的 [ICON_GreatWork_Product] 产品提供的 [ICON_Tourism] 旅游业绩+50%；此城 [ICON_POWER] 供电充足时，该效果翻倍。玩家的 [ICON_GREATMERCHANT] 大商人点数积累速度+10%。商业中心的相邻加成也产生等量 [ICON_Tourism] 旅游业绩。"),
    -- 贸易码头
    ("zh_Hans_CN",  "LOC_BUILDING_LIGHTHOUSE_NAME",                                "贸易码头"),
    ("zh_Hans_CN",  "LOC_BUILDING_LIGHTHOUSE_DESCRIPTION_UC_JNR",                  "+1 [ICON_TradeRoute] 贸易路线容量。此城生产的所有海军单位+25%战斗经验值。为本城的渔船+1 [ICON_Production] 生产力。此城出发的 [ICON_TradeRoute] 国际贸易路线+2 [ICON_Gold] 金币。"),
    -- 渔业码头
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_NAME",                    "渔业码头"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_DESCRIPTION",             "+1 [ICON_TradeRoute] 贸易路线容量。此城生产的所有海军单位+25%战斗经验值。此城的所有近海和湖泊单元格+1 [ICON_Food] 食物。"),
    -- 造船厂
    ("zh_Hans_CN",  "LOC_BUILDING_SHIPYARD_NAME",                                  "造船厂"),
    ("zh_Hans_CN",  "LOC_BUILDING_SHIPYARD_DESCRIPTION_UC_JNR",                    "[ICON_Production] 生产力加成等于港口区域的相邻加成。此城所有浅海和湖泊单元格+1 [ICON_PRODUCTION] 生产力。"),
    -- 避风港
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ENTREPOT_NAME",                              "军港"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ENTREPOT_DESCRIPTION",                       "城市中每位 [ICON_Citizen] 公民提供+1 [ICON_PRODUCTION] 生产力。此城中生产的所有海军单位+25%战斗经验值。对所有海军单位+50% [ICON_PRODUCTION] 生产力。此城中生产的海军单位若初始未拥有免费晋升，则其初始可获得免费晋升。每回合提供1份文明已解锁战略资源。"),
    -- 商港
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FISH_MARKET_NAME",                           "商港"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FISH_MARKET_DESCRIPTION",                    "[ICON_Gold] 金币加成等于港口区域的相邻加成。以本城为目的地的国内 [ICON_TRADEROUTE] 贸易路线和本城出发的国际 [ICON_TRADEROUTE] 贸易路线+9 [ICON_GOLD] 金币。"),
    -- 海港
    ("zh_Hans_CN",  "LOC_BUILDING_SEAPORT_NAME",                                   "海港"),
    ("zh_Hans_CN",  "LOC_BUILDING_SEAPORT_DESCRIPTION_UC_JNR",                     "[ICON_FOOD] 食物加成等于港口区域的相邻加成。本城建造在水域上的改良+1 [ICON_FOOD] 食物和 [ICON_Production] 生产力。可直接生产舰队和无敌舰队。舰队和无敌舰队的生产费用降低10%。"),
    -- 游轮码头
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OFFSHORE_TERMINAL_NAME",                     "游轮码头"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OFFSHORE_TERMINAL_DESCRIPTION",              "本城建造在水域上的改良+1 [ICON_CULTURE] 和+3 [ICON_GOLD] 金币。港口的相邻加成也产生等量 [ICON_Tourism] 旅游业绩，相邻娱乐中心或水上乐园时该业绩翻倍。此城市单元格+1魅力，海滨度假区的 [ICON_Tourism] 旅游业绩+50%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OFFSHORE_TERMINAL_MONOPOLY_DESCRIPTION",     "本城建造在水域上的改良+1 [ICON_CULTURE] 和+3 [ICON_GOLD] 金币。港口的相邻加成也产生等量 [ICON_Tourism] 旅游业绩。此城市的 [ICON_GreatWork_Product] 产品提供的 [ICON_Tourism] 旅游业绩+50%；相邻娱乐中心或水上乐园时该效果翻倍。此城市单元格+1魅力，海滨度假区的 [ICON_Tourism] 旅游业绩+50%。"),
    -- 海军基地
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_NAVAL_BASE_NAME",                            "海军基地"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_NAVAL_BASE_DESCRIPTION",                     "此城中生产的所有海军单位+25%经验值。可直接生产舰队和无敌舰队。舰队和无敌舰队的生产费用降低25%。生产海军单位加速+75%。所有训练的海军单位+3 [ICON_STRENGTH] 战斗力。玩家的 [ICON_GREATADMIRAL] 海军统帅点数积累速度+10%。"),
    -- 大本钟
    ("zh_Hans_CN",  "LOC_BUILDING_BIG_BEN_EXPANSION2_DESCRIPTION",                 "经济政策槽位+1。+50% [ICON_Gold] 金币。[NEWLINE][NEWLINE]必须建在邻近带有银行、行会会馆或商人中心的商业中心的河流旁边。"),
    -- 鼓舞/尤里卡
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_CAPITALISM_HD",                             "建造1座证券交易所。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_GUILDS_HD",                                 "建造2座商业中心。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_ECONOMICS_HD",                              "建造2座银行、会馆或商人中心。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_ECONOMICS_HD",                     "新的商业机构影响力不断增加。是时候正式研究那些塑造您国家经济的驱动力了。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_STEAM_POWER_HD",                            "建造2座造船厂、军港或商港。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_STEAM_POWER_HD",                   "更完善的港口设施为批量生产蒸汽舰艇提供了可能。"),
    -- 伟人
    ("zh_Hans_CN",  "LOC_ARTEMISIA_LIGHTHOUSE",                                    "立即在该区域建造渔业码头。"),
    ("zh_Hans_CN",  "LOC_ARTEMISIA_FISHING_PORT_FOOD",                             "所有渔业码头+{Amount} [ICON_Food] 食物。"),
    ("zh_Hans_CN",  "LOC_ARTEMISIA_TRADE_PORT_GOLD",                               "所有贸易码头+{Amount} [ICON_Gold] 金币。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_HORATIO_NELSON_JNR_ACTIVE",                   "立即在此区域中修建1座渔业码头和造船厂。所有海军单位+50%夹击加成。"),
    ("zh_Hans_CN",  "LOC_HORATIO_NELSON_TIER2_PRODUCTION",                         "所有港口二级建筑+{Amount} [ICON_Production] 生产力。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_NAVAL_BASE",           "立即在该区域建造渔业码头、军港和海军基地。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_TIER3_HOUSING",        "港口三级建筑+{Amount} [ICON_Housing] 住房。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_JOAQUIM_MARQUES_LISBOA_TIER3_PRODUCTION",     "港口三级建筑+{Amount} [ICON_Production] 生产力。"),
    -- 其他说明
    ("zh_Hans_CN",  "LOC_TRAIT_RADIO_ORANJE_DESCRIPTION",                          "造船厂、商港和军港提供+1 [ICON_TradeRoute] 贸易路线容量。您通往其他文明的 [ICON_TRADEROUTE] 贸易路线为荷兰+2 [ICON_SCIENCE] 科技值。其他文明通往荷兰的 [ICON_TRADEROUTE] 贸易路线能为荷兰+2 [ICON_SCIENCE] 科技值。如您处于黑暗时代，则这些数值将乘以2倍。"),
    ("zh_Hans_CN",  "LOC_ABILITY_LIGHTHOUSE_TRAINED_UNIT_XP_DESCRIPTION",          "在港口一级建筑中训练获得的经验值+25%"),
    ("zh_Hans_CN",  "LOC_ABILITY_SHIPYARD_TRAINED_UNIT_XP_DESCRIPTION",            "在军港中训练获得的经验值+25%"),
    ("zh_Hans_CN",  "LOC_ABILITY_SEAPORT_TRAINED_UNIT_XP_DESCRIPTION",             "在海军基地中训练获得的经验值+25%"),
    ("zh_Hans_CN",  "LOC_ABILITY_SEAPORT_TRAINED_UNIT_STRENGTH_DESCRIPTION",       "在海军基地中训练获得的+3 [ICON_Strength] 战斗力"),
    ("zh_Hans_CN",  "LOC_UNIT_LEU_TYCOON_JNR_DESCRIPTION",                         "需要商业中心中的一级建筑或港口中的“贸易码头”方可建造或购买的高价平民单位。[NEWLINE][NEWLINE]可以在奢侈资源上创建行业，在研究“蒸汽动力”后，他们也可创建铁路和火车站来改善你的领土上的区域产出、贸易和 [ICON_PRODUCTION] 生产力。"),
    ("zh_Hans_CN",  "LOC_UNIT_LEU_INVESTOR_JNR_DESCRIPTION",                       "需要商业中心中的二级建筑或港口中的“商港”或“造船厂”方可建造或购买的高价平民单位。[NEWLINE][NEWLINE]投资人可以创建公司，让你的文明创造 [ICON_GREATWORK_PRODUCT] 产品以获得额外的 [ICON_GOLD] 金币和 [ICON_TOURISM] 旅游业绩。此外，他们可以用来在其他文明中创建仓库和集装箱港口，进一步强化贸易和你的公司。"),
    ("zh_Hans_CN",  "LOC_POLICY_ROBBER_BARONS_DESCRIPTION",                        "拥有证券交易所、商务写字楼或市场部的城市+50% [ICON_Gold] 金币。拥有工厂或化工厂的城市+25% [ICON_Production] 生产力。[NEWLINE]但所有城市-2 [ICON_Amenities] 宜居度。");

UPDATE LocalizedText SET Text=REPLACE(Text, 'with a Stock Exchange','with a Stock Exchange, Commercial Office Building or Marketing Agency') WHERE Tag LIKE 'LOC_NAT_WON_CL_FINANCE%';
UPDATE LocalizedText SET Text=REPLACE(Text, '有证券交易所','有证券交易所、商务写字楼或市场部') WHERE Tag LIKE 'LOC_NAT_WON_CL_FINANCE%';
UPDATE LocalizedText SET Text=REPLACE(Text, 'with a Bank','with a Bank, Guildhall or Merchant Quarter') WHERE Tag LIKE 'LOC_NAT_WON_CL_FINANCE%';
UPDATE LocalizedText SET Text=REPLACE(Text, '有银行','有银行、行会会馆或商人中心') WHERE Tag LIKE 'LOC_NAT_WON_CL_FINANCE%';
UPDATE LocalizedText SET Text=REPLACE(Text, 'Shipyard and Seaport','Entrepot, Haven, Shipyard, Seaport, Cruise Terminal and Naval Base') WHERE Tag = 'LOC_CIVILIZATION_CARDIFF_BONUS' or Tag = 'LOC_LEADER_TRAIT_CARDIFF_DESCRIPTION';
UPDATE LocalizedText SET Text=REPLACE(Text, '造船厂和码头','商港、军港、造船厂、海港、游轮码头和海军基地') WHERE Tag = 'LOC_CIVILIZATION_CARDIFF_BONUS' or Tag = 'LOC_LEADER_TRAIT_CARDIFF_DESCRIPTION';