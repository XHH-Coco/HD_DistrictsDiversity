-- --------------------------------------------------------------------------------
-- Language: en_US
insert or replace into EnglishText
    (Tag,                                                        Text)
values
    -- 娱乐中心
    ("LOC_BUILDING_JNR_TOURNEY_DESCRIPTION",                     "+1 [ICON_Amenities] Amenity if built in tiles with Breathtaking Appeal. +1 [ICON_CULTURE] Culture to Buildings in City Center."),
    ("LOC_BUILDING_JNR_TOURNEY_NAME",                            "Goulan"),
    ("LOC_BUILDING_ARENA_DESCRIPTION_UC_JNR",                    "Provides +1 [ICON_CULTURE] Culture and +1 [ICON_Amenities] Amenity if this city owns Pastures or Camps over resources."),
    ("LOC_BUILDING_TLACHTLI_DESCRIPTION_UC_JNR",                 "A building unique to the Aztecs. [ICON_CITIZEN] Citizens in this city provide +0.5 [ICON_CULTURE] Culture if this city owns properly improved luxury resources. +1 [ICON_MOVEMENT] Movement to Civilian units trained in this city."),
    ("LOC_ABILITY_TLACHTLI_CIVILIAN_MOVE_DESCRIPTION",           "Tlachtli Tradition: +1 [ICON_MOVEMENT] Movement."),
    ("LOC_BUILDING_JNR_BOTANICAL_GARDEN_NAME",                   "Botanical Garden"),
    ("LOC_BUILDING_JNR_BOTANICAL_GARDEN_DESCRIPTION",            "+1 [ICON_SCIENCE] Science and +3 [ICON_Gold] Gold from every type of Plantation, Farm or Lumber Mill Resource you controlled."),
    ("LOC_BUILDING_STADIUM_DESCRIPTION_UC_JNR",                  "If this City is [ICON_POWER] powered, specialty districts provide corresponding yield to each [ICON_CITIZEN] Citizens in the city. This bonus extends to all specialty districts within 6 tiles that do not already have a bonus from another Stadium."),
    ("LOC_BUILDING_JNR_THEME_PARK_NAME",                         "Exposition"),
    ("LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION",                  "+3 [ICON_CULTURE] Culture and +3 [ICON_Gold] Gold to each Wonders in this city. double these yields if city is [ICON_POWER] powered."),
    ("LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION_PRODUCT",          "[ICON_Greatwork_Product] Products in this City provide +4 [ICON_CULTURE] Culture. [NEWLINE]+25% [ICON_TOURISM] Tourism to [ICON_Greatwork_Product] Products in this City, doubled if the City is fully [ICON_POWER] Powered."),
    -- 水上乐园
    ("LOC_BUILDING_JNR_MARINA_NAME",                             "Music Marina"),
    ("LOC_BUILDING_JNR_MARINA_DESCRIPTION",                      "Districts, Wonders on or adjacent to Lake/Coast tiles in this city provide +2 [ICON_GREATMUSICIAN] Great Musician points per turn. +50% [ICON_TOURISM] Tourism to [ICON_GreatWork_Music] Great Work of Music in this city."),
    ("LOC_BUILDING_FERRIS_WHEEL_DESCRIPTION_UC_JNR",             "Districts, Wonders and Improvements on or adjacent to Lake/Coast tiles in this city provide +3 [ICON_Gold] Gold. +50% [ICON_TOURISM] Tourism to Seaside Resort in this city."),
    ("LOC_BUILDING_JNR_CASINO_NAME",                             "Visitor Center"),
    ("LOC_BUILDING_JNR_CASINO_DESCRIPTION",                      "Wonders in this City provide +1 [ICON_CULTURE] Culture and +3 [ICON_Gold] Gold. Transportation facilities provide +50% [ICON_TOURISM] Tourism to Wonders in this City."),
    ("LOC_BUILDING_AQUATICS_CENTER_DESCRIPTION_UC_JNR",          "If this City is fully [ICON_POWER] Powered, each specialty district in this city provide 4 copies of corresponding yield to all District on or adjacent to Lake/Coast tiles."),
    ("LOC_BUILDING_JNR_FOOD_COURT_NAME",                         "Souvenir Store"),
    ("LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION",                  "+1 [ICON_Amenities] Amenity for every Luxury resource this city has improved. Cities receive +5 [ICON_Gold] Gold for every improved resource type. Double these yields if city is [ICON_POWER] powered."),
    ("LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION_PRODUCT",          "[ICON_GreatWork_Product] Products in this City provide +8 [ICON_Gold] Gold. [NEWLINE]+25% [ICON_TOURISM] Tourism to [ICON_GreatWork_Product] Products in this city, doubled if city is fully [ICON_POWER] Powered."),
    -- 尤里卡
    ("LOC_BOOST_TRIGGER_BIOLOGY_HD_JNR",                         "Build a Zoo or Botanical Garden."),
    ("LOC_BOOST_TRIGGER_LONGDESC_BIOLOGY_HD_JNR",                "The collection of flora and fauna from around the world was not only for human consumption, but scientists began to classify these creatures into categories and to study the evolutionary processes and development of species."),
    ("LOC_POLICY_HD_BIOSYSTEMATICS_ENTERTAINMENT",               "Zoo, Botanical Garden, Aquarium");

-- --------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                        Text)
values
    -- 娱乐中心
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_TOURNEY_DESCRIPTION",                     "若位于惊艳的单元格则额外+1 [ICON_Amenities] 宜居度。本城市中心建筑+1 [ICON_CULTURE] 文化值。"), 
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_TOURNEY_NAME",                            "勾栏瓦舍"),
    ("zh_Hans_CN",  "LOC_BUILDING_ARENA_DESCRIPTION_UC_JNR",                    "如果城市拥有改良资源的营地或牧场，则额外+1 [ICON_CULTURE] 文化值，+1 [ICON_Amenities] 宜居度。"),
    ("zh_Hans_CN",  "LOC_BUILDING_TLACHTLI_DESCRIPTION_UC_JNR",                 "阿兹特克特色建筑。如果城市拥有改良的奢侈资源，则每位 [ICON_CITIZEN] 市民+0.5 [ICON_CULTURE] 文化值，且城市中生产的平民单位+1 [ICON_MOVEMENT] 移动力。"),
    ("zh_Hans_CN",  "LOC_ABILITY_TLACHTLI_CIVILIAN_MOVE_DESCRIPTION",           "蹴球传统：该单位身强体健，永久+1 [ICON_MOVEMENT] 移动力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_BOTANICAL_GARDEN_NAME",                   "植物园"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_BOTANICAL_GARDEN_DESCRIPTION",            "你每拥有一种农场、种植园或伐木场资源，额外+1 [ICON_SCIENCE] 科技值，+3 [ICON_GOLD] 金币。"),
    ("zh_Hans_CN",  "LOC_BUILDING_STADIUM_DESCRIPTION_UC_JNR",                  "若此城 [ICON_POWER] 供电充足，则6个单元格内的专业化区域为其所在城市的每位 [ICON_CITIZEN] 市民提供对应产出（前提是其尚未从其他的“体育场”建筑获得加成）。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_THEME_PARK_NAME",                         "博览会"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION",                  "城市中每座奇观+3 [ICON_CULTURE] 文化值和+3 [ICON_GOLD] 金币；此城 [ICON_POWER] 供电充足时，该效果翻倍。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION_PRODUCT",          "此城市的 [ICON_GreatWork_Product] 产品+4 [ICON_CULTURE] 文化值。[NEWLINE]此城市的 [ICON_GreatWork_Product] 产品提供的 [ICON_TOURISM] 旅游业绩+25%；此城 [ICON_POWER] 供电充足时，该效果翻倍。"),
    -- 水上乐园
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MARINA_NAME",                             "音乐游船"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MARINA_DESCRIPTION",                      "城市中相邻或建在海岸或湖泊单元格之上或周围的每座区域、奇观每回合+2 [ICON_GREATMUSICIAN] 大音乐家点数。本城来自 [ICON_GreatWork_Music] 音乐巨作的 [ICON_TOURISM] 旅游业绩+50%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_FERRIS_WHEEL_DESCRIPTION_UC_JNR",             "城市中相邻或建在海岸或湖泊单元格之上或周围的每座区域、奇观和改良+3 [ICON_Gold] 金币。此城中海滨度假区的 [ICON_Tourism] 旅游业绩+50%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CASINO_NAME",                             "游客接待中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CASINO_DESCRIPTION",                      "城市中每座奇观+1 [ICON_CULTURE] 文化值和+3 [ICON_GOLD] 金币。城市中的每个交通设施为本城奇观的 [ICON_Tourism] 旅游业绩+50%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_AQUATICS_CENTER_DESCRIPTION_UC_JNR",          "若此城 [ICON_POWER] 供电充足，则城市中每建有一种专业化区域，本城所有位于或与海岸湖泊单元格相邻的区域获得4份该专业化区域的对应产出。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FOOD_COURT_NAME",                         "纪念品商店"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION",                  "本城每种改良的奢侈品为城市提供+1 [ICON_Amenities] 宜居度，每种改良的资源为城市提供+5 [ICON_Gold] 金币；此城 [ICON_POWER] 供电充足时，该效果翻倍。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION_PRODUCT",          "此城市的 [ICON_GreatWork_Product] 产品+8 [ICON_Gold] 金币。[NEWLINE]此城市的 [ICON_GreatWork_Product] 产品提供的 [ICON_TOURISM] 旅游业绩+25%；此城 [ICON_POWER] 供电充足时，该效果翻倍。"),
    -- 尤里卡
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_BIOLOGY_HD_JNR",                         "建造1座动物园或植物园。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_BIOLOGY_HD_JNR",                "搜集世界各地的动植物不仅是为了供人观赏，科学家们开始为这些生物分门别类，研究物种的进化过程和基因的奥秘。"),
    ("zh_Hans_CN", "LOC_POLICY_HD_BIOSYSTEMATICS_ENTERTAINMENT",                "动物园、植物园、水族馆");

UPDATE LocalizedText SET Text=REPLACE(Text, 'Zoo','Zoo or Botanical Garden') WHERE Tag in (
    'LOC_NAT_WONDER_CL_THEMEPARK_DESCRIPTION',
    'LOC_NAT_WONDER_CL_THEMEPARK_DESCRIPTION_INTERNAL'
);
UPDATE LocalizedText SET Text=REPLACE(Text, '动物园','动物园或植物园') WHERE Tag in (
    'LOC_NAT_WONDER_CL_THEMEPARK_DESCRIPTION',
    'LOC_NAT_WONDER_CL_THEMEPARK_DESCRIPTION_INTERNAL'
);