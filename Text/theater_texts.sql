-- UC_THR_Text
-- Author: JNR
--------------------------------------------------------------

-- English
--------------------------------------------------------------
insert or replace into EnglishText
    (Tag,                                                       Text)
values
    -- 公民大会
    ("LOC_BUILDING_JNR_ASSEMBLY_NAME",                          "Assembly"),
    ("LOC_BUILDING_JNR_ASSEMBLY_DESCRIPTION",                   "[ICON_CITIZEN] Citizens in this city provide +0.5 [ICON_CULTURE] Culture."),
    -- 古罗马剧场
    ("LOC_BUILDING_AMPHITHEATER_NAME_UC_JNR",                   "Amphitheater"),
    ("LOC_BUILDING_AMPHITHEATER_DESCRIPTION_UC_JNR",            "+2 [ICON_CULTURE] Culture and +50% [ICON_TOURISM] Tourism for [ICON_GreatWork_Writing] Great Works of Writing in this city."),
    -- 毛利会堂
    ("LOC_BUILDING_MARAE_NAME_UC_JNR",                          "Marae"),
    ("LOC_BUILDING_MARAE_DESCRIPTION_UC_JNR",                   "A building unique to the Māori. Replaces Assembly. +2 [ICON_CULTURE] Culture and +2 [ICON_FAITH] Faith to all of this city's tiles with a passable feature or natural wonder. +1 [ICON_CULTURE] Culture for every three coast or lake tiles in this city. After Flight is researched, receive +1 [ICON_TOURISM] Tourism to all of this city's tiles with a feature or natural wonder. Has no Great Work slots."),
    -- 陈列室
    ("LOC_BUILDING_JNR_CABINET_NAME",                           "Cabinet"),
    ("LOC_BUILDING_JNR_CABINET_DESCRIPTION",                    "+2 [ICON_CULTURE] Culture for all Speciality District. +50% [ICON_TOURISM] Tourism for Great Works in this city."),
    -- 官学
    ("LOC_BUILDING_JNR_MANSION_NAME",                           "Guanxue"),
    ("LOC_BUILDING_JNR_MANSION_DESCRIPTION",                    "Guanxue, or literally official school, refers to the school system directly organized and administered by either central or local governments of Imperial China."),
    -- 艺术博物馆
    ("LOC_BUILDING_MUSEUM_ART_NAME_UC_JNR",                     "Art Museum"),
    ("LOC_BUILDING_MUSEUM_ART_DESCRIPTION_JNR",                 "Holds [ICON_GreatWork_Landscape] Great Works of Art. May not be built in a Theater Square district that already has an Archaeological Museum."),
    -- 考古博物馆
    ("LOC_BUILDING_MUSEUM_ARTIFACT_NAME_UC_JNR",                "Archaeological Museum"),
    ("LOC_BUILDING_MUSEUM_ARTIFACT_DESCRIPTION_JNR",            "Holds [ICON_GreatWork_Artifact] Artifacts. May not be built in a Theater Square district that already has an Art Museum."),
    -- 歌剧院
    ("LOC_BUILDING_JNR_OPERA_NAME",                             "Opera House"),
    ("LOC_BUILDING_JNR_OPERA_DESCRIPTION",                      "{LOC_BUILDING_JNR_OPERA_THEMINGBONUS}+3 [ICON_CULTURE] Culture for [ICON_GreatWork_Music] Great Works of Music in this city. +10% accumulation rate for [ICON_GREATMUSICIAN] Great Musician Points."),
    ("LOC_BUILDING_JNR_OPERA_THEMINGBONUS",                     "+100% Theming bonus when displaying objects from different musicians of same era. "),
    -- 大酒店
    ("LOC_BUILDING_JNR_GRAND_HOTEL_NAME",                       "Grand Hotel"),
    ("LOC_BUILDING_JNR_GRAND_HOTEL_DESCRIPTION",                "Bonus [ICON_CULTURE] Culture equal to the adjacency bonus of the Theater district. Provided [ICON_TOURISM] Tourism equal to the adjacency bonus of the Theater District. +50% [ICON_TOURISM] Tourism from improvements in this city."),
    -- 艺术刊社
    ("LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_NAME",               "Art Publishing House"),
    ("LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_DESCRIPTION",        "[ICON_CITIZEN] Citizens in this City provide +1 [ICON_CULTURE] Culture. +2 [ICON_CULTURE] Culture for [ICON_GreatWork_LANDSCAPE] Great Works of Art in this city. +10% accumulation rate for [ICON_GREATARTIST] Great Artist Points."),
    -- ("LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_THEMINGBONUS",       "+100% Theming bonus when displaying objects from different artists of same era."),
    -- 电影院
    ("LOC_BUILDING_HD_CINEMA_NAME",                             "Cinema"),
    ("LOC_BUILDING_HD_CINEMA_DESCRIPTION",                      "+10% [ICON_CULTURE] Culture in this City. Additional +10% [ICON_CULTURE] Culture if this City is fully [ICON_POWER] Powered. +3 [ICON_CULTURE] Culture for all districts in this city. [ICON_GreatWork_Writing] Great Works of Writing and [ICON_GreatWork_LANDSCAPE] Great Works of Art provide +100% [ICON_TOURISM] Tourism in this City."),
    -- 广播中心
    ("LOC_BUILDING_BROADCAST_CENTER_NAME_UC_JNR",               "Broadcast Center"),
    ("LOC_BUILDING_BROADCAST_CENTER_DESCRIPTION_UC_JNR",        "+10% [ICON_CULTURE] Culture in this City. Additional +10% [ICON_CULTURE] Culture if this City is fully [ICON_POWER] Powered. [ICON_GreatWork_Music] Great Works of Music provide +100% [ICON_TOURISM] Tourism in this City."),
    -- 媒体中心
    ("LOC_BUILDING_JNR_MEDIA_CENTER_NAME",                      "Media Center"),
    ("LOC_BUILDING_JNR_MEDIA_CENTER_DESCRIPTION",               "+10% [ICON_CULTURE] Culture in this City. Additional +10% [ICON_CULTURE] Culture if this City is fully [ICON_POWER] Powered. [ICON_CITIZEN] Citizens in this City provide +1 [ICON_CULTURE] Culture and +3 [ICON_GOLD] Gold. [NEWLINE]Wonders and National Parks across your empire have +25% [ICON_Tourism] Tourism, double if this City is fully [ICON_POWER] Powered."),
    -- 电影厂
    ("LOC_BUILDING_FILM_STUDIO_CENTER_NAME_UC_JNR",             "Film Studio"),
    ("LOC_BUILDING_FILM_STUDIO_DESCRIPTION_UC_JNR",             "A building unique to America. {LOC_BUILDING_HD_FILM_STUDIO_THEMINGBONUS}+10% [ICON_CULTURE] Culture in this city. +10% [ICON_CULTURE] Culture if this city is fully powered. +50% [ICON_Tourism] Tourism pressure from this city. +100% [ICON_TOURISM] Tourism for [ICON_GreatWork_Writing] Great Works of Writing, [ICON_GreatWork_LANDSCAPE] Great Works of Art and [ICON_GreatWork_Music] Great Works of Music in this city."),
    ("LOC_BUILDING_HD_FILM_STUDIO_THEMINGBONUS",                "+100% Theming bonus when displaying objects of same era. "),
    -- 尤里卡 鼓舞
    ("LOC_BOOST_TECH_TELECOMMUNICATIONS_HD_LONG",               "People want to listen to the radio or watch movies on portable communication devices."),
    ("LOC_BOOST_TRIGGER_HUMANISM",                              "Build 1 Amphitheater."),
    ("LOC_BOOST_TRIGGER_LONGDESC_HUMANISM",                     "Frequent theatrical performances led to a new wave of thinking among the people."),
    ("LOC_BOOST_TRIGGER_LAW_HD",                                "Build 2 Assemblies."),
    ("LOC_BOOST_TRIGGER_LONGDESC_LAW_HD",                       "The continuous exploration of social system by generations of politicians and thinkers inspired the construction of modern legal system."),
    ("LOC_BOOST_TRIGGER_FINANCE_HD",                            "Build a Shopping Mall and a Grand Hotel."),
    -- 政策卡 士大夫文化
    -- ("LOC_POLICY_SCHOLAR_BUREAUCRAT_DESCRIPTION",               "+4 [ICON_GreatWriter] Great Writer points per turn. +2 [ICON_GreatWriter] Great Writer points per turn for every Amphitheater or Assembly."),
    -- 政策卡 壁画
    -- ("LOC_POLICY_FRESCOES_DESCRIPTION_XP2",                     "+4 [ICON_GreatArtist] Great Artist points per turn. +4 [ICON_GreatArtist] Great Artist points per turn for every Cabinet, Guanxue and Art Museum."),
    -- 政策卡 交响乐
    -- ("LOC_POLICY_SYMPHONIES_DESCRIPTION_XP2",                   "+8 [ICON_GreatMusician] Great Musician points per turn. +8 [ICON_GreatMusician] Great Musician points per turn for every Broadcast Center and Opera House."),
    -- 政策卡 教育学
    -- ("LOC_POLICY_GRAND_OPERA_DESCRIPTION",                      "Regional effects from Theater districts reach 3 tiles farther. Cabinet, Guanxue or Museums generate 0.3 [ICON_Culture] Culture; Grand Hotel, Media Center, Broadcast Center and Opera House Generate 0.5 [ICON_Culture] Culture per [ICON_Citizen] citizen in the city."),
    -- 奇观 加拿大国家电视塔
    ("LOC_CL_BUILDING_CN_TOWER_DESCRIPTION",                    "{LOC_BUILDING_THEMINGBONUS_CN_TOWER} Grants a Broadcast Center building in Cities with an Opera House or a Grand Hotel or an Art Publishing House. +2 [ICON_Citizen] Population in all cities when built. +2 [ICON_Housing] Housing to all cities. +200% [ICON_Tourism] Tourism for [ICON_Greatwork_Music] Music Great Works in fully [ICON_Power] Powered Cities having Broadcast Centers. [NEWLINE][NEWLINE]Must be built adjacent to an Entertainment Complex district owned by this city."),
    ("LOC_CL_BUILDING_CN_TOWER_DESCRIPTION_CORP",               "{LOC_BUILDING_THEMINGBONUS_CN_TOWER} Grants a Broadcast Center building in Cities with an Opera House or a Grand Hotel or an Art Publishing House. +2 [ICON_Citizen] Population in all cities when built. +2 [ICON_Housing] Housing to all cities. +200% [ICON_Tourism] Tourism for [ICON_Greatwork_Music] Music Great Works and [ICON_GreatWork_Product] Products in fully [ICON_Power] Powered Cities having Broadcast Centers. [NEWLINE][NEWLINE]Must be built adjacent to an Entertainment Complex district owned by this City.");

--------------------------------------------------------------

--------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                       Text)
values
    -- 公民大会
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ASSEMBLY_NAME",                          "公民大会"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ASSEMBLY_DESCRIPTION",                   "每位 [ICON_CITIZEN] 市民+0.5 [ICON_CULTURE] 文化值。"),
    -- 古罗马剧场
    ("zh_Hans_CN",  "LOC_BUILDING_AMPHITHEATER_NAME_UC_JNR",                   "古罗马剧场"),
    ("zh_Hans_CN",  "LOC_BUILDING_AMPHITHEATER_DESCRIPTION_UC_JNR",            "本城所有 [ICON_GreatWork_Writing] 著作+2 [ICON_CULTURE] 文化值和+50% [ICON_TOURISM] 旅游业绩。"),
    -- 毛利会堂
    ("zh_Hans_CN",  "LOC_BUILDING_MARAE_NAME_UC_JNR",                          "毛利会堂"),
    ("zh_Hans_CN",  "LOC_BUILDING_MARAE_DESCRIPTION_UC_JNR",                   "毛利特色建筑。取代公民大会。城市中所有包含可通行地貌或自然奇观的单元格+2 [ICON_CULTURE] 文化值与 [ICON_FAITH] 信仰值。此城中每拥有3个海岸或湖泊单元格，则+1 [ICON_CULTURE] 文化值。研究“飞行”科技后，城市中所有包含地貌或自然奇观的单元格+1 [ICON_TOURISM] 旅游业绩。无巨作槽位。"),
    -- 陈列室
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CABINET_NAME",                           "陈列室"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CABINET_DESCRIPTION",                    "此城市每个专业化区域+2 [ICON_CULTURE] 文化值。所在城市所有巨作+50% [ICON_TOURISM] 旅游业绩。"),
    -- 官学
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MANSION_NAME",                           "官学"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MANSION_DESCRIPTION",                    "官学是指中国封建朝廷直接举办和管辖，以及历代官府按照行政区划在地方所办的学校系统。官学包括中央官学和地方官学，共同构成了中国古代最主要的官学教育制度。"),
    -- 艺术博物馆
    ("zh_Hans_CN",  "LOC_BUILDING_MUSEUM_ART_NAME_UC_JNR",                     "艺术博物馆"),
    ("zh_Hans_CN",  "LOC_BUILDING_MUSEUM_ART_DESCRIPTION_JNR",                 "可存放 [ICON_GreatWork_Landscape] 艺术巨作。如果在剧院广场已经有一座考古博物馆则无法修建。"),
    -- 考古博物馆
    ("zh_Hans_CN",  "LOC_BUILDING_MUSEUM_ARTIFACT_NAME_UC_JNR",                "考古博物馆"),
    ("zh_Hans_CN",  "LOC_BUILDING_MUSEUM_ARTIFACT_DESCRIPTION_JNR",            "可存放 [ICON_GreatWork_Artifact] 文物。如果在剧院广场已经有一座艺术博物馆则无法修建。"),
    -- 歌剧院
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OPERA_NAME",                             "歌剧院"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OPERA_DESCRIPTION",                      "{LOC_BUILDING_JNR_OPERA_THEMINGBONUS}本城所有 [ICON_GreatWork_Music] 音乐巨作+3 [ICON_CULTURE] 文化值。玩家的 [ICON_GREATMUSICIAN] 大音乐家点数积累速度+10%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_OPERA_THEMINGBONUS",                     "当展示来自相同时代不同音乐家的作品时，+100%主题化加成。"),
    -- 大酒店
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GRAND_HOTEL_NAME",                       "大酒店"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GRAND_HOTEL_DESCRIPTION",                "[ICON_Culture] 文化值加成等于剧院广场区域的相邻加成。剧院广场的相邻加成也提供相等的 [ICON_TOURISM] 旅游业绩。所在城市中提供 [ICON_TOURISM] 旅游业绩的改良设施产出的 [ICON_TOURISM] 旅游业绩+50%。"),
    -- 艺术刊社
    ("zh_Hans_CN",  "LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_NAME",               "艺术刊社"),
    ("zh_Hans_CN",  "LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_DESCRIPTION",        "每位 [ICON_CITIZEN] 市民+1 [ICON_CULTURE] 文化值。本城所有 [ICON_GreatWork_LANDSCAPE] 艺术巨作+2 [ICON_CULTURE] 文化值。玩家的 [ICON_GREATARTIST] 大艺术家点数积累速度+10%。"),
    -- ("zh_Hans_CN",  "LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_THEMINGBONUS",       "当展示来自相同时代不同艺术家的作品时，+100%主题化加成。"),
    -- 电影院
    ("zh_Hans_CN",  "LOC_BUILDING_HD_CINEMA_NAME",                             "电影院"),
    ("zh_Hans_CN",  "LOC_BUILDING_HD_CINEMA_DESCRIPTION",                      "本城+10% [ICON_CULTURE] 文化值，[ICON_POWER] 供电充足时额外+10% [ICON_CULTURE] 文化值。此城市的区域+3 [ICON_CULTURE] 文化值。本城所有 [ICON_GreatWork_Writing] 著作和 [ICON_GreatWork_LANDSCAPE] 艺术巨作产出的 [ICON_TOURISM] 旅游业绩+100%。"),
    -- 广播中心
    ("zh_Hans_CN",  "LOC_BUILDING_BROADCAST_CENTER_NAME_UC_JNR",               "广播中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_BROADCAST_CENTER_DESCRIPTION_UC_JNR",        "本城+10% [ICON_CULTURE] 文化值，[ICON_POWER] 供电充足时额外+10% [ICON_CULTURE] 文化值。所在城市中的 [ICON_GreatWork_Music] 音乐巨作产出的 [ICON_TOURISM] 旅游业绩+100%。"),
    -- 媒体中心
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDIA_CENTER_NAME",                      "媒体中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MEDIA_CENTER_DESCRIPTION",               "本城+10% [ICON_CULTURE] 文化值，[ICON_POWER] 供电充足时额外+10% [ICON_CULTURE] 文化值。所在城市每位 [ICON_CITIZEN] 市民+1 [ICON_CULTURE] 文化值和+3 [ICON_GOLD] 金币。全国来自国家公园和奇观的 [ICON_Tourism] 旅游业绩+25%；此城 [ICON_POWER] 供电充足时，该效果翻倍。"),
    -- 电影厂
    ("zh_Hans_CN",  "LOC_BUILDING_FILM_STUDIO_CENTER_NAME_UC_JNR",             "电影制片厂"),
    ("zh_Hans_CN",  "LOC_BUILDING_FILM_STUDIO_DESCRIPTION_UC_JNR",             "美国特色建筑。{LOC_BUILDING_HD_FILM_STUDIO_THEMINGBONUS}本城+10% [ICON_CULTURE] 文化值，[ICON_POWER] 供电充足时额外+10% [ICON_CULTURE] 文化值。本城+50% [ICON_TOURISM] 旅游业绩。本城中的 [ICON_GreatWork_Writing] 著作、[ICON_GreatWork_LANDSCAPE] 艺术和 [ICON_GreatWork_Music] 音乐巨作产出的 [ICON_TOURISM] 旅游业绩+100%。"),
    ("zh_Hans_CN",  "LOC_BUILDING_HD_FILM_STUDIO_THEMINGBONUS",                "当展示来自相同时代的作品时，+100%主题化加成。"),
    -- 尤里卡 鼓舞
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_TELECOMMUNICATIONS_HD",        "人们开始希望在便携通讯设备上收听广播或看电影了。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_HUMANISM",                              "建造1座古罗马剧场。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_HUMANISM",                     "频繁戏剧的演出引领了人民的新思潮。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LAW_HD",                                "建造2座公民大会。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_LAW_HD",                       "一代代政治家和思想家对社会制度的不断探索启发了近现代法律体系的构建。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_FINANCE_HD",                            "建造1座购物商场和1座大酒店。"),
    -- 政策卡 士大夫文化
    -- ("zh_Hans_CN",  "LOC_POLICY_SCHOLAR_BUREAUCRAT_DESCRIPTION",               "每回合+4 [ICON_GreatWriter] 大作家点数。每有一座公民大会或古罗马剧场，每回合的 [ICON_GreatWriter] 大作家点数便+2。"),
    -- 政策卡 壁画
    -- ("zh_Hans_CN",  "LOC_POLICY_FRESCOES_DESCRIPTION_XP2",                     "每回合的 [ICON_GreatArtist] 大艺术家点数+4。每有一座陈列室、官学或艺术博物馆，每回合的 [ICON_GreatArtist] 大艺术家点数便+4。"),
    -- 政策卡 交响乐
    -- ("zh_Hans_CN",  "LOC_POLICY_SYMPHONIES_DESCRIPTION_XP2",                   "每回合的 [ICON_GreatMusician] 大音乐家点数+8。每有一座歌剧院或广播中心，每回合的 [ICON_GreatMusician] 大音乐家点数便+8。"),
    -- 政策卡 教育学
    -- ("zh_Hans_CN",  "LOC_POLICY_GRAND_OPERA_DESCRIPTION",                      "来自剧院广场区域建筑的辐射范围增加3个单元格。拥有陈列室、官学或博物馆的城市每位 [ICON_Citizen] 公民提供0.3 [ICON_CULTURE] 文化值。拥有歌剧院、大酒店、广播中心或媒体中心的城市每位 [ICON_Citizen] 公民提供0.5 [ICON_CULTURE] 文化值。"),
    -- 奇观 加拿大国家电视塔
    ("zh_Hans_CN",  "LOC_CL_BUILDING_CN_TOWER_DESCRIPTION",                    "{LOC_BUILDING_THEMINGBONUS_CN_TOWER}为每座拥有歌剧院、大酒店或艺术刊社建筑的城市提供广播中心。建成时所有城市获得2 [ICON_Citizen] 人口，所有城市+2 [ICON_Housing] 住房。拥有广播中心且 [ICON_POWER] 电力供应充足的城市来自 [ICON_GreatWork_Music] 音乐巨作的 [ICON_Tourism] 旅游业绩+200%。[NEWLINE][NEWLINE]必须建在与本城的娱乐中心相邻的单元格上。"),
    ("zh_Hans_CN",  "LOC_CL_BUILDING_CN_TOWER_DESCRIPTION_CORP",               "{LOC_BUILDING_THEMINGBONUS_CN_TOWER}为每座拥有歌剧院、大酒店或艺术刊社建筑的城市提供广播中心。建成时所有城市获得2 [ICON_Citizen] 人口，所有城市+2 [ICON_Housing] 住房。拥有广播中心且 [ICON_POWER] 电力供应充足的城市来自 [ICON_GreatWork_Music] 音乐巨作和 [ICON_GreatWork_Product] 产品的 [ICON_Tourism] 旅游业绩+200%。[NEWLINE][NEWLINE]必须建在与本城的娱乐中心相邻的单元格上。");

-- Policy
--------------------------------------------------------------
-- UPDATE LocalizedText SET Text=REPLACE(Text, 'Broadcast Center', 'Tier 4 building of Theater Square') WHERE Tag in (
--     'LOC_POLICY_SUPERPOWER_DESCRIPTION'
-- );
UPDATE LocalizedText SET Text=REPLACE(Text, 'Broadcast Centers', 'Tier 4 buildings of Theater Square') WHERE Tag in (
    'LOC_BOOST_TRIGGER_TELECOMMUNICATIONS_HD'
);
UPDATE LocalizedText SET Text=REPLACE(Text, '广播中心', '剧院广场四级建筑') WHERE Tag in (
    -- 'LOC_POLICY_SUPERPOWER_DESCRIPTION',
    'LOC_BOOST_TRIGGER_TELECOMMUNICATIONS_HD'
);
--------------------------------------------------------------