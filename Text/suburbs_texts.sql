-- --------------------------------------------------------------------------------
-- Language: en_US
insert or replace into EnglishText
    (Tag,                                                           Text)
values
    ("LOC_BUILDING_JNR_TRANSIT_HUB_NAME",                           "Passenger Transportation Center"),
    ("LOC_BUILDING_JNR_TRANSIT_HUB_DESCRIPTION",                    "+2 [ICON_MOVEMENT] Movement to Civilian units trained in this city. +50% adjacency bonus to districts adjacent to any Transportation. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_HOSPITAL_NAME",                              "Central Hospital"),
    ("LOC_BUILDING_JNR_HOSPITAL_DESCRIPTION",                       "Your units on or adjacent this tile heals +20 HP per turn. +10% accumulation rate for [ICON_GREATSCIENTIST] Great Scientist Points; this bonus is doubled after Medical Science is researched. [NEWLINE][NEWLINE]Your city has a chance to avoid [ICON_CITIZEN] lost; when grants a [ICON_CITIZEN] citizen, there is a probability of obtaining an additional [ICON_CITIZEN] citizen. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_HOSPITAL_PREVENT_POP_LOST_VIEWTEXT",         "Central Hospital has prevented the loss of [ICON_CITIZEN] citizens"),
    ("LOC_BUILDING_JNR_HOSPITAL_EXTRA_POP_BOOST_VIEWTEXT",          "Central Hospital has led to an additional [ICON_CITIZEN] citizen increase"),
    ("LOC_BUILDING_JNR_RECYCLING_PLANT_NAME",                       "Recycling Plant"),
    ("LOC_BUILDING_JNR_RECYCLING_PLANT_DESCRIPTION",                "+1 Appealing to tiles in this city. +10% accumulation rate for [ICON_GREATENGINEER] Great Engineer Points; this bonus is respectively doubled after Industrial Automation is researched. [NEWLINE][NEWLINE]Undamaged military units can be recycled in this city: land units on Neighborhood district; naval units on Harbor district; air units on Aerodrome district. [NEWLINE]Weapon Recycling {LOC_HD_RECYCLE_FORMULA} [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_UNITCOMMAND_RECYCLE_NAME",                                "Weapon Recycling"),
    ("LOC_UNITCOMMAND_RECYCLE_DESCRIPTION",                         "Refunded {1_Amount} [ICON_GOLD] Gold."),
    ("LOC_UNITCOMMAND_RECYCLE_DISABLED_TT",                         "Must be undamaged."),
    ("LOC_HD_RECYCLE_FORMULA",                                      "Refunded [ICON_GOLD] Gold = 2 * base [ICON_PRODUCTION] Production cost + Strategic Coefficient * quantity of Strategic Resource(s)[NEWLINE]Strategic Coefficient: [NEWLINE][ICON_RESOURCE_HORSES] 10, [ICON_RESOURCE_IRON] 15, [ICON_RESOURCE_NITER] 20, [ICON_RESOURCE_COAL] 50, [ICON_RESOURCE_OIL] 100, [ICON_RESOURCE_ALUMINUM] 200, [ICON_RESOURCE_URANIUM] 500"),
    ("LOC_BUILDING_JNR_ART_GALLERY_NAME",                           "Art Street"),
    ("LOC_BUILDING_JNR_ART_GALLERY_DESCRIPTION",                    "+10% accumulation rate for [ICON_GREATWRITER] Great Writer, [ICON_GREATARTIST] Geart Artist [ICON_GREATMUSICIAN] Great Musician Points. +20% [ICON_CULTURE] Culture and +200% [ICON_TOURISM] Tourism to [ICON_GreatWork_Writing] Great Work of Writing, [ICON_GreatWork_Landscape] Great Work of Art and [ICON_GreatWork_Music] Great Work of Music if the city is [ICON_POWER] powered. [NEWLINE][NEWLINE]Can only be built once in a civilization."),
    ("LOC_BUILDING_JNR_MEDITATION_NAME",                            "RV Park"),
    ("LOC_BUILDING_JNR_MEDITATION_DESCRIPTION",                     "+1 [ICON_CULTURE] Culture to Wonders. +3 [ICON_GOLD] Gold to improvements on Charming tiles. +1 [ICON_CULTURE] Culture to improvements on Charming tiles. When the city is [ICON_POWER] powered, +200% [ICON_TOURISM] Tourism to Wonders, National Park and Improvements. [NEWLINE][NEWLINE]Can only be built once in a civilization."),

    ("LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_DESCRIPTION",       "Passenger Transportation Center: +2 [ICON_MOVEMENT] Movement."),
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
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITAL_DESCRIPTION",                    "您位于或相邻中心医院的单位每回合额外回复20生命值。玩家的 [ICON_GREATSCIENTIST] 大科学家点数积累速度+10%；解锁“医药学”科技后翻倍。[NEWLINE][NEWLINE]你的城市有概率避免损失 [ICON_CITIZEN] 市民；当 [ICON_CITIZEN] 市民增长时，有概率额外获得一个 [ICON_CITIZEN] 市民。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITAL_PREVENT_POP_LOST_VIEWTEXT",      "中心医院避免了以下城市的 [ICON_CITIZEN] 市民损失"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITAL_EXTRA_POP_BOOST_VIEWTEXT",       "中心医院使以下城市的 [ICON_CITIZEN] 市民额外增长"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_RECYCLING_PLANT_NAME",                    "回收中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_RECYCLING_PLANT_DESCRIPTION",             "此城单元格+1魅力。玩家的 [ICON_GREATENGINEER] 大工程师点数积累速度+10%；解锁“工业自动化”科技后翻倍。[NEWLINE][NEWLINE]未受伤的军事单位可以在本城“回收装备”：陆军需要位于社区，海军需要位于港口，空军需要位于航空港。[NEWLINE]“回收装备”{LOC_HD_RECYCLE_FORMULA}[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_NAME",                             "装备回收"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_DESCRIPTION",                      "返还{1_Amount} [ICON_GOLD] 金币。"),
    ("zh_Hans_CN",  "LOC_UNITCOMMAND_RECYCLE_DISABLED_TT",                      "必须未受伤。"),
    ("zh_Hans_CN",  "LOC_HD_RECYCLE_FORMULA",                                   "返还 [ICON_GOLD] 金币 = 2 × [ICON_PRODUCTION] 基础造价 + 战略系数 × 战略资源消耗数量[NEWLINE]战略系数：[NEWLINE][ICON_RESOURCE_HORSES] 10，[ICON_RESOURCE_IRON] 15，[ICON_RESOURCE_NITER] 20，[ICON_RESOURCE_COAL] 50，[ICON_RESOURCE_OIL] 100，[ICON_RESOURCE_ALUMINUM] 200，[ICON_RESOURCE_URANIUM] 500"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ART_GALLERY_NAME",                        "艺术街区"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ART_GALLERY_DESCRIPTION",                 "玩家的 [ICON_GREATWRITER] 大作家、 [ICON_GREATARTIST] 大艺术家和 [ICON_GREATMUSICIAN] 大音乐家的点数积累速度+10%。若此城 [ICON_POWER] 供电充足，全国 [ICON_GreatWork_Writing] 著作、 [ICON_GreatWork_Landscape] 艺术和 [ICON_GreatWork_Music] 音乐巨作提供1.2倍的 [ICON_CULTURE] 文化产出，且 [ICON_TOURISM] 旅游业绩+200%。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDITATION_NAME",                         "房车营地"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDITATION_DESCRIPTION",                  "境内的奇观+1 [ICON_CULTURE] 文化值，位于迷人单元格的改良+3 [ICON_GOLD] 金币，位于惊艳单元格的改良+1 [ICON_CULTURE] 文化值。若此城 [ICON_POWER] 供电充足，全国来自国家公园、奇观和改良设施的 [ICON_TOURISM] 旅游业绩+200%。[NEWLINE][NEWLINE]文明中一次仅限建造一座该建筑。"),

    ("zh_Hans_CN",  "LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_DESCRIPTION",    "客运中心：城市交通便利，永久+2 [ICON_MOVEMENT] 移动力。"),
    -- 尤里卡 鼓舞
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_MEDICAL_SCIENCE_HD_JNR",                 "建造1座中心医院。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_MEDICAL_SCIENCE_HD_JNR",        "科学家们开始研制各种抗生素和现代化医疗设备以供医院使用。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_VIRTUAL_REALITY_HD_JNR",                 "建造1座房车营地。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_VIRTUAL_REALITY_HD_JNR",        "随着现代化旅游业的蓬勃发展，人们渐渐不满足于现实中的际遇——要是足不出户便能身临其境该有多好！"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_INDUSTRIAL_AUTOMATION_HD_JNR",           "建造1座回收中心。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_INDUSTRIAL_AUTOMATION_HD_JNR",  "随着城市化的稳定快速发展，社区中的回收中心越来越忙碌，人们需要一些自动化器械来提高效率。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_MODERNISM_HD_JNR",                       "建造1座艺术街区。");
