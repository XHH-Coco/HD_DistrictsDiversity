-- English
--------------------------------------------------------------
INSERT OR REPLACE INTO EnglishText
        (Tag,                                                           Text)
VALUES  ('LOC_BUILDING_JNR_DUMMY_IZ_RIVER_NAME',                        'river-adjacent Industrial Zone'),
        ('LOC_BUILDING_JNR_MILL_RACE_NAME',                             'Mill Race'),
        ('LOC_BUILDING_JNR_MILL_RACE_DESCRIPTION',                      'Automatically created in every city with an Industrial Zone built adjacent to a river.'),
        ('LOC_BUILDING_JNR_WIND_MILL_NAME',                             'Wind Mill'),
        ('LOC_BUILDING_JNR_MANUFACTURY_NAME',                           'Manufactury'),
        ('LOC_BUILDING_JNR_CHEMICAL_NAME',                              'Chemical Plant'),
        ('LOC_BUILDING_JNR_FREIGHT_YARD_NAME',                          'Logistics Center'),
        ('LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION',                   'Strategic Resource Stockpiles increased +20 (on Standard Speed).[NEWLINE][NEWLINE]Domestic [ICON_TradeRoute] Trade Routes to this city gain +1 [ICON_Production] Production.'),
        ('LOC_BUILDING_JNR_RENEWABLE_DISTRIBUTION_DESCRIPTION_UC_JNR',  'Automatically converts any amount of [ICON_RESOURCE_JNR_BATTERY_CHARGE] Renewable Battery Charges into [ICON_Power] Power for cities within 6 tiles that need it each turn, at the rate of:[NEWLINE][ICON_Bullet]1 [ICON_RESOURCE_JNR_BATTERY_CHARGE] Renewable Battery Charges [ICON_PowerRight] 1 [ICON_Power] Power[NEWLINE][ICON_Bullet]No CO2 into the atmosphere[NEWLINE]Its [ICON_Production] Production bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Power Plant building.[NEWLINE][NEWLINE]Domestic [ICON_TradeRoute] Trade Routes to this city gain +1 [ICON_Production] Production.'),
        ('LOC_POLICY_THIRD_ALTERNATIVE_DESCRIPTION_JNR_UC_PRD',         '+1 [ICON_Culture] Culture and +2 [ICON_Gold] Gold from each Encampment building, Aerodrome building, Power Plant, and Logistics Center.'),
        ('LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_NAME',             'Convert to Logistics Center'),
        ('LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_SHORT_NAME',       'Convert to Logistics Center'),
        ('LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_DESCRIPTION',      'Decommissions the current Power Plant in this city, and replaces it with the {LOC_BUILDING_JNR_FREIGHT_YARD_NAME}.[NEWLINE][NEWLINE]{LOC_BUILDING_JNR_FREIGHT_YARD_NAME}:[NEWLINE]{LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION}'),
        ('LOC_GREAT_PERSON_INDIVIDUAL_JNR_ARCHIMEDES_NAME',             'Archimedes'),
        ('LOC_GREAT_PERSON_INDIVIDUAL_JNR_LI_BING_NAME',                'Li Bing'),
        ('LOC_GREAT_PERSON_INDIVIDUAL_JNR_MA_JUN_NAME',                 'Ma Jun'),
        ('LOC_GREAT_PERSON_INDIVIDUAL_JNR_MARTINE_DE_BERTEREAU_NAME',   'Martine de Bertereau');
--------------------------------------------------------------

--------------------------------------------------------------------------------
-- Language: en_US
insert or replace into EnglishText
    (Tag,                                               Text)
values
    ("LOC_BUILDING_JNR_MILL_RACE_NAME",                 "Industrial Zone Adjacen to River"),
    ("LOC_BUILDING_IZ_WATER_MILL_NAME",                 "Hydraulic Artisans"), -- Water-powered Workshop
    ("LOC_BUILDING_IZ_WATER_MILL_DESCRIPTION",          "Can only be built when the Industrial Zone is adjacent to River. +1 [ICON_Production] Production for Districts adjacent to river in this city."),
    ("LOC_BUILDING_JNR_WIND_MILL_DESCRIPTION",          "+1 [ICON_Production] Production for Districts on or adjacent to Shallow Sea and Lake. +1 [ICON_Production] Production for Districts on Hills or adjacent to Mountains."), -- improved tiles adjacent to sea or lakes.
    ("LOC_BUILDING_JNR_MANUFACTURY_DESCRIPTION",        "Each [ICON_Citizen] Citizen in the city provides +0.5 [ICON_PRODUCTION] Production."), -- Farms, Plantations, Camps and Pastures over resources in this city gain +1 [ICON_Production] Production.
    ("LOC_BUILDING_JNR_CHEMICAL_DESCRIPTION",           "+2 [ICON_Production] Production and [ICON_SCIENCE] Science from every type of Chemistry Resource you controlled. +7% [ICON_Production] Production from every type of improved Chemistry Resource in this city."),
    ("LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION",       "[ICON_Citizen] Citizens in this city provide +1 [ICON_Production] Production and +2 [ICON_Gold] Gold."),
    -- ("LOC_BUILDING_ELECTRONICS_FACTORY_DESCRIPTION_UC_JNR",  "A building unique to Japan that replace Logistics Center. Provides regional [ICON_Science] Science and [ICON_Culture] Culture yields. [ICON_Citizen] Citizens in this city provide +1 [ICON_Production] Production and +2 [ICON_Gold] Gold."),
    -- Boosts
    ("LOC_BOOST_TRIGGER_MASS_PRODUCTION_JNR_UC",        "Build 1 Manufactury."),
    ("LOC_BOOST_TRIGGER_LONGDESC_MASS_PRODUCTION_JNR_UC", "Handicraft workshops are growing in size, and more efficient production methods are being bred."),
    ("LOC_BOOST_TRIGGER_CHEMISTRY_JNR_UC",              "Build 1 Chemical Plant."),
    ("LOC_BOOST_TRIGGER_LONGDESC_CHEMISTRY_JNR_UC",     "The booming chemical industry has also driven research in theoretical aspects of chemistry."),
    ("LOC_BOOST_TRIGGER_CLASS_STRUGGLE_HD",             "Build 3 Tier 3 buildings of Industrial Zone."),
    -- Great Person
    ("LOC_GREATPERSON_WORKSHOP_CULTURE",                "Provides +1 [ICON_Culture] Culture to Tier 2 buildings in Industrial Zone district."),
    ("LOC_HD_GREATPERSON_GRANT_IZ_TIER1_BUILDING",      "Instantly builds a Hydraulic Artisans in this district if it is adjacent to River. [NEWLINE]Provides +1 [ICON_PRODUCTION] Production to Tier 1 buildings in Industrial Zone district."),
    ("LOC_GREATPERSON_JAMES_WATT_ACTIVE",     			"Instantly builds a Smithy, a Workshop and a Factory in this district. [NEWLINE]Provides +3 [ICON_PRODUCTION] Production to Tier 3 buildings in Industrial Zone district."),
    -- Wonder
    -- ("LOC_BUILDING_RUHR_VALLEY_DESCRIPTION",                  "+20% [ICON_Production] Production in this city, and Mines and Quarries in this City provide +2 [ICON_Production] Production. International [ICON_TradeRoute] Trade Route to this city provides +3 [ICON_Production] Production for both sides. Domestic [ICON_TradeRoute] Trade Route to this City provides +5 [ICON_Production] Production. Must be built adjacent to an Industrial Zone district with a Factory, Electronics Factory or Chemical Plant, and next to a River."),
    -- Policies
    -- ("LOC_POLICY_INVENTION_DESCRIPTION_XP2",            "+4 [ICON_GreatEngineer] Great Engineer points per turn. +4 [ICON_GreatEngineer] Great Engineer points per turn for every Workshop and Manufactury."),
    -- ("LOC_POLICY_SCIENCE_FOUNDATIONS_DL_DESCRIPTION",   "+4 [ICON_GreatScientist] Great Scientist points per turn for every University and +8 [ICON_GreatScientist] Great Scientist points per turn for every Research Lab. +4 [ICON_GreatEngineer] Great Engineer points per turn for every Factory, Electronics Factory and Chemical Plant, and +8 [ICON_GreatEngineer] Great Engineer points per turn for every Power Plant and Logistics Center."),
    -- 尤里卡
    ("LOC_BOOST_TRIGGER_BIG_DATA_HD_JNR",                        "Build 2 Logistics Centers."),
    ("LOC_BOOST_TRIGGER_LONGDESC_BIG_DATA_HD_JNR",               "Busy logistics centers need more efficient and intelligent management models. It is time to develop big data and IoT technologies.");

--------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                        Text)
values
    -- Resume
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MILL_RACE_NAME",                          "工业区相邻河流"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MILL_RACE_DESCRIPTION",                   "该城的工业区相邻河流。"),
    ("zh_Hans_CN",  "LOC_BUILDING_IZ_WATER_MILL_NAME",                          "水力作坊"),
    ("zh_Hans_CN",  "LOC_BUILDING_IZ_WATER_MILL_DESCRIPTION",                   "只有工业区相邻河流时才能建造。与河流相邻的区域+1 [ICON_Production] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_WIND_MILL_NAME",                          "风车"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_WIND_MILL_DESCRIPTION",                   "相邻或位于水域的区域+1 [ICON_Production] 生产力。相邻山脉或位于丘陵的区域+1 [ICON_Production] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MANUFACTURY_NAME",                        "手工工场"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MANUFACTURY_DESCRIPTION",                 "城市中每位 [ICON_Citizen] 公民提供+0.5 [ICON_PRODUCTION] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHEMICAL_NAME",                           "化工厂"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_CHEMICAL_DESCRIPTION",                    "你每拥有一种化学资源，+2 [ICON_Production] 生产力和 [ICON_Science] 科技值。本城每拥有一种改良的化学资源，+7% [ICON_Production] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FREIGHT_YARD_NAME",                       "物流中心"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION",                "本城每个 [ICON_Citizen] 公民额外产出+1 [ICON_Production] 生产力和+2 [ICON_Gold] 金币。"),
    -- Boosts
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_MASS_PRODUCTION_JNR_UC",                 "建造1座手工工场。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_MASS_PRODUCTION_JNR_UC",        "手工工场规模日益增大，更为高效的生产方式也孕育而生。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_CHEMISTRY_JNR_UC",                       "建造1座化工厂。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_CHEMISTRY_JNR_UC",              "化学工业的蓬勃发展也推动了化学理论方面的研究。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_CLASS_STRUGGLE_HD",                      "建造3座工业区三级建筑。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_WORKSHOP_CULTURE",                         "工业区二级建筑+1 [ICON_Culture] 文化值。"),
    ("zh_Hans_CN",  "LOC_HD_GREATPERSON_GRANT_IZ_TIER1_BUILDING",               "若相邻河流，立即在该区域建造水力作坊。[NEWLINE]工业区一级建筑+1 [ICON_PRODUCTION] 生产力。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_JAMES_WATT_ACTIVE",  						"立即在该区域建造风车、建造工坊和工厂。[NEWLINE]工业区三级建筑+3 [ICON_PRODUCTION] 生产力。"),
    -- 奇观
    ("zh_Hans_CN",  "LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_NAME",          "转换为物流中心"),
    ("zh_Hans_CN",  "LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_SHORT_NAME",    "转换为物流中心"),
    ("zh_Hans_CN",  "LOC_PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT_DESCRIPTION",   "将城市中的发电站变更为{LOC_BUILDING_JNR_FREIGHT_YARD_NAME}.[NEWLINE][NEWLINE]{LOC_BUILDING_JNR_FREIGHT_YARD_NAME}:[NEWLINE]{LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION}"),
    -- 尤里卡
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_BIG_DATA_HD_JNR",                        "建造2座物流中心。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_LONGDESC_BIG_DATA_HD_JNR",               "繁忙的物流中心需要更高效和智能的管理模式，是时候发展大数据和物联网技术了。");

UPDATE LocalizedText SET Text=REPLACE(Text, 'Workshop','Tier 2 building of Industrial Zone') WHERE Tag in (
    'LOC_TRAIT_LEADER_VICTORIA_ALT_DESCRIPTION',
    'LOC_POLICY_INVENTION_DESCRIPTION_XP2'
);
UPDATE LocalizedText SET Text=REPLACE(Text, '建造工坊','工业区二级建筑') WHERE Tag in (
    'LOC_TRAIT_LEADER_VICTORIA_ALT_DESCRIPTION',
    'LOC_POLICY_INVENTION_DESCRIPTION_XP2'
);

UPDATE LocalizedText SET Text=REPLACE(Text, 'Tier 3','Tier 4') WHERE Tag in (
    'LOC_POLICY_HD_UNMANNED_FACTORY_DESCRIPTION'
);
UPDATE LocalizedText SET Text=REPLACE(Text, '三级建筑','四级建筑') WHERE Tag in (
    'LOC_POLICY_HD_UNMANNED_FACTORY_DESCRIPTION'
);

UPDATE LocalizedText SET Text=REPLACE(Text, 'Tier 2','Tier 3') WHERE Tag in (
    'LOC_BUILDING_RUHR_VALLEY_DESCRIPTION',
    'LOC_POLICY_HD_UNMANNED_FACTORY_DESCRIPTION'
);
UPDATE LocalizedText SET Text=REPLACE(Text, '二级建筑','三级建筑') WHERE Tag in (
    'LOC_BUILDING_RUHR_VALLEY_DESCRIPTION',
    'LOC_POLICY_HD_UNMANNED_FACTORY_DESCRIPTION'
);
