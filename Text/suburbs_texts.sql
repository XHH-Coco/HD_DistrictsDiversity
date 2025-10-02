-- --------------------------------------------------------------------------------
-- Language: en_US
insert or replace into EnglishText
    (Tag,                                                           Text)
values
    ("LOC_BUILDING_JNR_TRANSIT_HUB_NAME",                           "Passenger Transportation Center"),
    ("LOC_BUILDING_JNR_TRANSIT_HUB_DESCRIPTION",                    "+2 [ICON_MOVEMENT] Movement to Civilian units trained in this city. +50% adjacency bonus to districts adjacent to any transportation facilities. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_HOSPITAL_NAME",                              "Central Hospital"),
    ("LOC_BUILDING_JNR_HOSPITAL_DESCRIPTION",                       "Your units on or adjacent this tile heals +20 HP per turn. [NEWLINE]+10% accumulation rate for [ICON_GREATSCIENTIST] Great Scientist Points from all cities within 6 tiles. This bonus is respectively doubled when the following conditions are met: Campus in this city has at least +9 adjacency bonus; Medical Science is researched. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_RECYCLING_PLANT_NAME",                       "Recycling Plant"),
    ("LOC_BUILDING_JNR_RECYCLING_PLANT_DESCRIPTION",                "+1 Appealing to tiles in this city. [NEWLINE]+1 [ICON_GOLD] Gold per [ICON_CITIZEN] Citizen to all Cities within 6 tiles. This bonus is respectively doubled when the following conditions are met: Industrial Zone in this city has at least +9 adjacency bonus; Industrial Automation is researched. [NEWLINE][NEWLINE]Undamaged combat units can be recycled on this tile, which provides [ICON_GOLD] Gold equal to 2 times its base [ICON_PRODUCTION] Production cost. If the unit costs Strategic Resource, extra [ICON_GOLD] Gold is refunded based on the type and quantity of Strategic Resource. Undamaged naval units can be recycled in the Harbor district in this city. [NEWLINE][NEWLINE]Can only be built once in a civilization.{LOC_HD_RECYCLE_FORMULA}"),
    ("LOC_UNITCOMMAND_RECYCLE_NAME",                                "Weapon Recycling"),
    ("LOC_UNITCOMMAND_RECYCLE_DESCRIPTION",                         "Recycle weapon of this unit. Returns Gold equals to 200% the unit’s base Production cost. If the unit costs Strategic Resources, extra Gold is refunded based on the type and quantity of Strategic Resource(s)."),
    ("LOC_UNITCOMMAND_RECYCLE_DISABLED_TT",                         "Must be undamaged."),
    ("LOC_HD_RECYCLE_FORMULA",                                      "[NEWLINE][NEWLINE][ICON_GOLD] Gold Formula: [NEWLINE]Refunded [ICON_GOLD] Gold = 2 * base [ICON_PRODUCTION] Production cost + Strategic Coefficient * quantity of Strategic Resource(s)[NEWLINE][ICON_RESOURCE_IRON] Strategic Coefficient: [NEWLINE][ICON_RESOURCE_HORSES]  10  [ICON_PRODUCTION], [ICON_RESOURCE_IRON]  15  [ICON_PRODUCTION], [ICON_RESOURCE_NITER]  20  [ICON_PRODUCTION], [ICON_RESOURCE_COAL]  50  [ICON_PRODUCTION][NEWLINE][ICON_RESOURCE_OIL] 100 [ICON_PRODUCTION], [ICON_RESOURCE_ALUMINUM] 200 [ICON_PRODUCTION], [ICON_RESOURCE_URANIUM] 500 [ICON_PRODUCTION]"),
    ("LOC_BUILDING_JNR_ART_GALLERY_NAME",                           "Art Street"),
    ("LOC_BUILDING_JNR_ART_GALLERY_DESCRIPTION",                    "+100% adjacency bonus to Theatre in this city. [ICON_CITIZEN] Citizens in this City provide +1 [ICON_CULTURE] Culture. +10% accumulation rate for [ICON_GREATWRITER] Great Writer, [ICON_GREATARTIST] Geart Artist [ICON_GREATMUSICIAN] Great Musician Points. +200% [ICON_TOURISM] Tourism to [ICON_GreatWork_Writing] Great Work of Writing, [ICON_GreatWork_Landscape] Great Work of Art and [ICON_GreatWork_Music] Great Work of Music if the city is [ICON_POWER] powered. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_MEDITATION_NAME",                            "RV Park"),
    ("LOC_BUILDING_JNR_MEDITATION_DESCRIPTION",                     "+1 [ICON_CULTURE] Culture and +3 [ICON_GOLD] Gold to improvements on Charming tiles, this bonus doubled if on Breathtaking tiles. When the city is [ICON_POWER] powered, +200% [ICON_TOURISM] Tourism to Wonders, National Park and Improvements. [NEWLINE][NEWLINE]Can only be built once in a civilization."),

    ("LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_DESCRIPTION",       "Passenger Transportation Center: +2 [ICON_MOVEMENT] Movement."),

    ("LOC_DISTRICT_MBANZA_HD_DESCRIPTION",                          "A district unique to the Congo that can only be constructed in Rainforest or Woods. Replaces the Neighborhood district but is available earlier. Provides +3 [ICON_HOUSING] Housing, +2 [ICON_FOOD] Food, and +2 [ICON_GOLD] Gold, regardless of Appeal. +1 [ICON_FOOD] Food and +1 Appeal to all adjacent tiles. Receives +1 [Icon_Production] Production from every Bonus Resource, +2 [Icon_Gold] Gold from every Luxury Resource and +1 [Icon_Science] Science from every Strategic Resource. Allows the purchasing of Settlers and Builders using [ICON_FAITH] Faith."),
    -- 尤里卡 鼓舞
    ("LOC_BOOST_TRIGGER_MEDICAL_SCIENCE_HD_JNR",                    "Build a Central Hospital."),
    ("LOC_BOOST_TRIGGER_LONGDESC_MEDICAL_SCIENCE_HD_JNR",           "Scientists began to develop various antibiotics and modern medical equipment for use in hospitals."),
    ("LOC_BOOST_TRIGGER_VIRTUAL_REALITY_HD_JNR",                    "Build 1 RV Parks."),
    ("LOC_BOOST_TRIGGER_LONGDESC_VIRTUAL_REALITY_HD_JNR",           "With the vigorous development of modern tourism, people are gradually not satisfied with the reality of the encounter. How wonderful it would be to be there without leaving home!"),
    ("LOC_BOOST_TRIGGER_INDUSTRIAL_AUTOMATION_HD_JNR",              "Build a Recycling Plant."),
    ("LOC_BOOST_TRIGGER_LONGDESC_INDUSTRIAL_AUTOMATION_HD_JNR",     "With the development of urbanization, recycling plants are becoming more and more busy. People need some automatic equipment to improve efficiency."),
    ("LOC_BOOST_TRIGGER_MODERNISM_HD_JNR",                          "Build an Art Street.");

-- --------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                        Text)
values
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_TRANSIT_HUB_NAME",                        "客运中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_TRANSIT_HUB_DESCRIPTION",                 "城市中生产的平民单位+2 [ICON_MOVEMENT] 移动力。相邻交通设施的区域+50%相邻加成，解锁“现代化交通”科技后该加成翻倍。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITAL_NAME",                           "中心医院"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITAL_DESCRIPTION",                    "您位于或相邻中心医院的单位每回合额外回复20生命值。[NEWLINE]6个单元格内的每个城市为玩家的 [ICON_GREATSCIENTIST] 大科学家点数积累速度+10%。该效果会在满足以下条件时分别翻倍：此城的学院基础相邻加成至少+9；玩家解锁“医药学”科技。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_RECYCLING_PLANT_NAME",                    "垃圾回收中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_RECYCLING_PLANT_DESCRIPTION",             "此城单元格+1魅力。[NEWLINE]6个单元格内的城市每位 [ICON_CITIZEN] 市民 +1 [ICON_GOLD] 金币。该效果会在满足以下条件时分别翻倍：此城的工业区基础相邻加成至少+9；玩家解锁“工业自动化”科技。[NEWLINE][NEWLINE]未受伤的陆军或空军单位可以被在该单元格上回收装备，返还等同于 [ICON_PRODUCTION] 生产力消耗 200%的 [ICON_GOLD] 金币；如果该单位消耗战略资源，则会根据消耗的战略资源类型和数量，返还 [ICON_GOLD] 额外的金币；未受伤的海军单位则可以在本城的港口回收装备。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。{LOC_HD_RECYCLE_FORMULA}"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_NAME",                             "装备回收"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_DESCRIPTION",                      "回收武器和装备，返还等同于 [ICON_PRODUCTION] 生产力消耗 200%的 [ICON_GOLD] 金币；如果该单位消耗战略资源，则会根据消耗的战略资源类型和数量，返还 [ICON_GOLD] 额外的金币。"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_DISABLED_TT",                      "必须未受伤。"),
    ("zh_Hans_CN",  "LOC_HD_RECYCLE_FORMULA",                                   "[NEWLINE][NEWLINE][ICON_GOLD] 金币回收公式：[NEWLINE]返还 [ICON_GOLD] 金币 = 200% × [ICON_PRODUCTION] 基础造价 + 战略系数 × 战略资源消耗数量[NEWLINE][ICON_RESOURCE_IRON] 战略系数：[NEWLINE][ICON_RESOURCE_HORSES] 10 [ICON_PRODUCTION]，[ICON_RESOURCE_IRON] 15 [ICON_PRODUCTION]，[ICON_RESOURCE_NITER] 20 [ICON_PRODUCTION]，[ICON_RESOURCE_COAL] 50 [ICON_PRODUCTION]，[NEWLINE][ICON_RESOURCE_OIL] 100 [ICON_PRODUCTION]，[ICON_RESOURCE_ALUMINUM] 200 [ICON_PRODUCTION]，[ICON_RESOURCE_URANIUM] 500 [ICON_PRODUCTION]"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ART_GALLERY_NAME",                        "艺术街区"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ART_GALLERY_DESCRIPTION",                 "此城+100%剧院广场相邻加成。每位 [ICON_CITIZEN] 市民+1 [ICON_CULTURE] 文化值。玩家的 [ICON_GREATWRITER] 大作家、 [ICON_GREATARTIST] 大艺术家和 [ICON_GREATMUSICIAN] 大音乐家的点数积累速度+10%。若此城 [ICON_POWER] 供电充足，全国来自 [ICON_GreatWork_Writing] 著作、 [ICON_GreatWork_Landscape] 艺术和 [ICON_GreatWork_Music] 音乐巨作的 [ICON_TOURISM] 旅游业绩+200%。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDITATION_NAME",                         "房车营地"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDITATION_DESCRIPTION",                  "位于迷人单元格的改良+1 [ICON_CULTURE] 文化值、+3 [ICON_GOLD] 金币；若位于惊艳单元格，则该效果翻倍。若此城 [ICON_POWER] 供电充足，全国来自国家公园、奇观和改良设施的 [ICON_TOURISM] 旅游业绩+200%。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),

    ("zh_Hans_CN",  "LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_DESCRIPTION",    "客运中心：城市交通便利，永久+2 [ICON_MOVEMENT] 移动力。"),

    ("zh_Hans_CN",  "LOC_DISTRICT_MBANZA_HD_DESCRIPTION",                       "刚果特色区域，替代“社区”，可更早建造。只能建在雨林或树林里。无视魅力值，固定提供+3 [ICON_Housing] 住房、+2 [ICON_Food] 食物和+2 [ICON_Gold] 金币。为相邻的单元格提供 +1 [ICON_FOOD] 食物和+1魅力。从每个相邻的加成资源获得+1 [ICON_Production] 生产力；从每个相邻的奢侈品资源获得+2 [ICON_Gold] 金币；从每个相邻的战略资源获得+1 [ICON_Science] 科技值。允许使用 [ICON_Faith] 信仰值购买开拓者和建造者。"),
    -- 尤里卡 鼓舞
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_MEDICAL_SCIENCE_HD_JNR",                 "建造1座中心医院。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_MEDICAL_SCIENCE_HD_JNR",        "科学家们开始研制各种抗生素和现代化医疗设备以供医院使用。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_VIRTUAL_REALITY_HD_JNR",                 "建造1座房车营地。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_VIRTUAL_REALITY_HD_JNR",        "随着现代化旅游业的蓬勃发展，人们渐渐不满足于现实中的际遇——要是足不出户便能身临其境该有多好！"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_INDUSTRIAL_AUTOMATION_HD_JNR",           "建造1座垃圾回收中心。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_INDUSTRIAL_AUTOMATION_HD_JNR",  "随着城市化的稳定快速发展，社区中的垃圾回收中心越来越忙碌，人们需要一些自动化器械来提高效率。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_MODERNISM_HD_JNR",                       "建造1座艺术街区。");
