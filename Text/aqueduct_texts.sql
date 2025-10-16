--------------------------------------------------------------------------------
-- Language: en_US
insert or replace into EnglishText
    (Tag,                                                       Text)
values
    ("LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION",              "The ground in this area, probably located near a boundary between two continents, has been ruptured by subterranean geothermal activity. Heated water and steam escape from the ground here, making it ideal to place structures such as Bathhouse, and Hungarian Thermal Baths nearby."),
    ("LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1",      "Geothermal Fissures are a non-removable terrain feature which add +1 [ICON_Science] Science to the tile. The Geothermal Power Plant improvement must be constructed over a Geothermal Fissure."),
    -- 
    ("LOC_PROJECT_REMOVE_DISTRICT_AQUEDUCT_NAME_JNR_UC",        "Remove Cistern"),
    ("LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC",                       "Cistern"),
    ("LOC_DISTRICT_AQUEDUCT_DESCRIPTION_JNR_UC",                "A district providing fresh water from an adjacent River, Lake, Oasis, or Mountain in your city. [NEWLINE]+1 [ICON_FOOD] Food. +1 [ICON_PRODUCTION] Production if adjacent to Mountain tiles. +1 [ICON_SCIENCE] Science if on or adjacent to Geothermal Fissure tiles. [NEWLINE]Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. Prevents [ICON_Food] Food loss during Drought. [NEWLINE]Must be built adjacent to the City Center. [NEWLINE]Military Engineers can spend a charge to complete 30% of an Cistern's production."),
    ("LOC_DISTRICT_BATH_NAME_JNR_UC",                           "Aqueduct"),
    ("LOC_DISTRICT_BATH_DESCRIPTION_JNR_UC",                    "A district unique to Rome, replacing the Cistern district. [NEWLINE]+1 [ICON_FOOD] Food, +2 [ICON_Housing] Housing and +1 [ICON_Amenities] Amenity. +1 [ICON_PRODUCTION] Production if adjacent to Mountain tiles. +1 [ICON_SCIENCE] Science if on or adjacent to Geothermal Fissure tiles. [NEWLINE]It provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. Prevents [ICON_Food] Food loss during Drought. [NEWLINE]Must be built adjacent to the City Center. [NEWLINE]Military Engineers can spend a charge to complete 30% of an Aqueduct's production."),
    -- 
    ("LOC_BUILDING_JNR_ORCHARD_NAME",                           "Orchard"),
    ("LOC_BUILDING_JNR_ORCHARD_DESCRIPTION",                    "+1 [ICON_Food] Food to Farms and Lumber Mills in this city."),
    ("LOC_BUILDING_JNR_HAMMER_WORKS_NAME",                      "Hammer Works"), -- Water-powered Foundry
    ("LOC_BUILDING_JNR_HAMMER_WORKS_DESCRIPTION",               "+1 [ICON_PRODUCTION] Production to Mines and Quarries in this city."),
    ("LOC_BUILDING_JNR_BATHHOUSE_NAME",                         "Bathhouse"),
    ("LOC_BUILDING_JNR_BATHHOUSE_DESCRIPTION",                  "+4 corresponding [ICON_GREATPERSON] Great People points from each type of adjacent district which providing [ICON_GREATPERSON] Great People points."),
    ("LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_NAME",           "Hydraulic Spinning Wheel"),
    ("LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_DESCRIPTION",    "+1 [ICON_PRODUCTION] Production to Camps, Pastures and Plantations in this city."),
    ("LOC_BUILDING_SEWER_DESCRIPTION",                          "+20% Growth rate in this city."),
    ("LOC_BUILDING_THERMAL_BATH_DESCRIPTION_UC_JNR",            "Building unique to Hungary. [ICON_CITIZEN] Citizens in this city provide +0.5 [ICON_CULTURE] Culture and +0.5 [ICON_GOLD] Gold.");
    
--------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                        Text)
values
    ("zh_Hans_CN",  "LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION",               "通常位于两块大陆板块之间的地区，地表由于地热活动而被破坏。温泉与蒸汽会从此处奔腾而出，使其周围十分合适修建浴场和匈牙利温泉浴场。"),
    ("zh_Hans_CN",  "LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1",       "地热裂缝是一种无法清除的地貌特征，其为单元格+1 [ICON_Science] 科技值。地热发电厂改良设施必须建造在地热裂缝上。"),
    -- 
    ("zh_Hans_CN",  "LOC_PROJECT_REMOVE_DISTRICT_AQUEDUCT_NAME_JNR_UC",         "移除 蓄水池"),
    ("zh_Hans_CN",  "LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC",                        "蓄水池"),
    ("zh_Hans_CN",  "LOC_DISTRICT_AQUEDUCT_DESCRIPTION_JNR_UC",                 "从相邻河流、湖泊、绿洲或山脉引水，为城市提供淡水资源的区域。[NEWLINE]+1 [ICON_FOOD] 食物。若相邻山脉单元格，则+1 [ICON_PRODUCTION] 生产力。若相邻或位于地热裂缝单元格，则+1 [ICON_Science] 科技值。[NEWLINE]没有淡水资源的城市最多获得6个 [ICON_Housing] 住房。相反，已有淡水资源的城市 [ICON_Housing] 住房数量+2。干旱时可防止 [ICON_Food] 食物损失。[NEWLINE]必须修建在与市中心相邻的单元格中。[NEWLINE]军事工程师可消耗1次使用次数来完成蓄水池30%的修建进度。"),
    ("zh_Hans_CN",  "LOC_DISTRICT_BATH_NAME_JNR_UC",                            "水渠"),
    ("zh_Hans_CN",  "LOC_DISTRICT_BATH_DESCRIPTION_JNR_UC",                     "罗马特色区域，取代“蓄水池“。[NEWLINE]提供+1 [ICON_FOOD] 食物、+2 [ICON_Housing] 住房和+1 [ICON_Amenities] 宜居度。若相邻山脉单元格，则+1 [ICON_PRODUCTION] 生产力。若相邻或位于地热裂缝单元格，则+1 [ICON_Science] 科技值。[NEWLINE]从相邻河流、湖泊、绿洲或山脉引水，为该城市提供淡水资源。尚未拥有淡水资源的城市最多获得6个 [ICON_Housing] 住房。已有淡水资源的城市则+2 [ICON_Housing] 住房。干旱时可防止 [ICON_Food] 食物损失。[NEWLINE]必须修建在与市中心相邻的单元格中。[NEWLINE]军事工程师可消耗1次使用次数来完成水渠30%的修建进度。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ORCHARD_NAME",                            "果园"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ORCHARD_DESCRIPTION",                     "本城的农场和伐木场+1 [ICON_Food] 食物。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HAMMER_WORKS_NAME",                       "水力锻锤"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HAMMER_WORKS_DESCRIPTION",                "本城的矿山和采石场+1 [ICON_PRODUCTION] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_BATHHOUSE_NAME",                          "浴场"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_BATHHOUSE_DESCRIPTION",                   "每相邻一种提供 [ICON_GREATPERSON] 伟人点数的区域，提供+4对应 [ICON_GREATPERSON] 伟人点数。"),
    ("zh_Hans_CN",  "LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_NAME",            "水力纺车"),
    ("zh_Hans_CN",  "LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_DESCRIPTION",     "本城的牧场、营地和种植园+1 [ICON_PRODUCTION] 生产力。"),
    ("zh_Hans_CN",  "LOC_BUILDING_SEWER_DESCRIPTION",                           "本城+20%余粮。"),
    ("zh_Hans_CN",  "LOC_BUILDING_THERMAL_BATH_DESCRIPTION_UC_JNR",             "匈牙利特色建筑。城市中每位 [ICON_CITIZEN] 公民+0.5 [ICON_CULTURE] 文化值和+0.5 [ICON_GOLD] 金币。");

UPDATE  LocalizedText
SET     Text = REPLACE(Text, '水渠', '蓄水池')
WHERE   Language = 'zh_Hans_CN' and (Tag IN (
        'LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_EXPANSION2_DESCRIPTION',
        'LOC_RANDOM_EVENT_DROUGHT_DAMAGE',
        'LOC_UNIT_MILITARY_ENGINEER_ALT_DESCRIPTION',
        'LOC_CACAPULCOTE_DROUGHT_EVENT_DESCRIPTION_TOOLTIP',
        'LOC_DISTRICT_AQUEDUCT_PRODUCTION',
        'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_10_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_LEADERS_PAGE_LEADER_JAYAVARMAN_CHAPTER_DETAILED_BODY',
        'LOC_BUILDING_ANGKOR_WAT_DESCRIPTION',
        'LOC_BOOST_TRIGGER_MILITARY_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_MILITARY_ENGINEERING',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_15_CHAPTER_CONTENT_PARA_2',
        'LOC_IMPROVEMENT_PLANTATION_HD_DESCRIPTION',
        'LOC_IMPROVEMENT_FARM_HD_DESCRIPTION',
        'LOC_TECH_CALENDAR_HD_DESCRIPTION',
        'LOC_TECH_IRRIGATION_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4',
        'LOC_CITY_POLICY_REVISION_ALMANAC_EFFECT',
        'LOC_IMPROVEMENT_LEU_STATION_DESCRIPTION',
        'LOC_BUILDING_JNR_TRANSIT_HUB_DESCRIPTION',
        'LOC_TECH_CALENDAR_HD_DESCRIPTION',
        'LOC_BUILDING_PANAMA_CANAL_DESCRIPTION',
        'LOC_POLICY_HD_CHANNEL_ADMINISTRATOR_DESCRIPTION',
        'LOC_MOMENT_CATEGORY_SCIENTIFIC_BONUS_GOLDEN_AGE',
        'LOC_POLICY_HD_WATERSIDE_PAVILIONS_DESCRIPTION',
        'LOC_POLICY_HD_DA_SI_TU_DESCRIPTION',
        'LOC_IMPROVEMENT_JNR_OASIS_FARM_DESCRIPTION',
        'LOC_IMPROVEMENT_JNR_REED_HOME_DESCRIPTION'
)) and (exists (select Tag from EnglishText where Tag = 'LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC'));

UPDATE  LocalizedText
SET     Text = REPLACE(Text, '浴场', '水渠')
WHERE   Language = 'zh_Hans_CN' and (Tag IN (
        'LOC_PEDIA_LEADERS_PAGE_LEADER_TRAJAN_CHAPTER_DETAILED_BODY',
        'LOC_TRAIT_CIVILIZATION_DISTRICT_BATH_NAME',
        'LOC_DISTRICT_BATH_PRODUCTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4'
)) and (exists (select Tag from EnglishText where Tag = 'LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC'));

-- English renaming
UPDATE  LocalizedText
SET     Text = REPLACE(Text, 'Aqueducts', 'Cisterns')
WHERE   Tag IN (
        'LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_DESCRIPTION',
        'LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION',
        'LOC_RANDOM_EVENT_DROUGHT_DAMAGE',
        'LOC_UNIT_MILITARY_ENGINEER_ALT_DESCRIPTION',
        'LOC_CACAPULCOTE_DROUGHT_EVENT_DESCRIPTION_TOOLTIP',
        'LOC_DISTRICT_AQUEDUCT_PRODUCTION',
        'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_10_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_LEADERS_PAGE_LEADER_JAYAVARMAN_CHAPTER_DETAILED_BODY',
        'LOC_BUILDING_ANGKOR_WAT_DESCRIPTION',
        'LOC_BOOST_TRIGGER_MILITARY_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_MILITARY_ENGINEERING',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_15_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4',
        'LOC_TECH_CALENDAR_HD_DESCRIPTION',
        'LOC_MOMENT_CATEGORY_SCIENTIFIC_BONUS_GOLDEN_AGE'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, 'an Aqueduct', 'a Cistern')
WHERE   Tag IN (
        'LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_DESCRIPTION',
        'LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION',
        'LOC_RANDOM_EVENT_DROUGHT_DAMAGE',
        'LOC_UNIT_MILITARY_ENGINEER_ALT_DESCRIPTION',
        'LOC_CACAPULCOTE_DROUGHT_EVENT_DESCRIPTION_TOOLTIP',
        'LOC_DISTRICT_AQUEDUCT_PRODUCTION',
        'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_10_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_LEADERS_PAGE_LEADER_JAYAVARMAN_CHAPTER_DETAILED_BODY',
        'LOC_BUILDING_ANGKOR_WAT_DESCRIPTION',
        'LOC_BOOST_TRIGGER_MILITARY_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_MILITARY_ENGINEERING',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_15_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4',
        'LOC_IMPROVEMENT_JNR_OASIS_FARM_DESCRIPTION',
        'LOC_IMPROVEMENT_JNR_REED_HOME_DESCRIPTION'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, 'Aqueduct', 'Cistern')
WHERE   Tag IN (
        'LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_DESCRIPTION',
        'LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION',
        'LOC_RANDOM_EVENT_DROUGHT_DAMAGE',
        'LOC_UNIT_MILITARY_ENGINEER_ALT_DESCRIPTION',
        'LOC_CACAPULCOTE_DROUGHT_EVENT_DESCRIPTION_TOOLTIP',
        'LOC_DISTRICT_AQUEDUCT_PRODUCTION',
        'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_10_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_LEADERS_PAGE_LEADER_JAYAVARMAN_CHAPTER_DETAILED_BODY',
        'LOC_BUILDING_ANGKOR_WAT_DESCRIPTION',
        'LOC_BOOST_TRIGGER_MILITARY_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_ENGINEERING',
        'LOC_BOOST_TRIGGER_LONGDESC_MILITARY_ENGINEERING',
        'LOC_TECH_IRRIGATION_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_CITIES_15_CHAPTER_CONTENT_PARA_2',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4',
        'LOC_IMPROVEMENT_LEU_STATION_DESCRIPTION',
        'LOC_BUILDING_JNR_TRANSIT_HUB_DESCRIPTION',
        'LOC_BUILDING_PANAMA_CANAL_DESCRIPTION',
        'LOC_POLICY_HD_CHANNEL_ADMINISTRATOR_DESCRIPTION',
        'LOC_POLICY_HD_WATERSIDE_PAVILIONS_DESCRIPTION',
        'LOC_POLICY_HD_DA_SI_TU_DESCRIPTION'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, ' a Roman Bath', ' an Aqueduct')
WHERE   Tag IN (
        'LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, 'Roman Bath', 'Aqueduct')
WHERE   Tag IN (
        'LOC_FEATURE_GEOTHERMAL_FISSURE_DESCRIPTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_GEOTHERMAL_FISSURES_PARA_1'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, ' a Bath', ' an Aqueduct')
WHERE   Tag IN (
        'LOC_PEDIA_LEADERS_PAGE_LEADER_TRAJAN_CHAPTER_DETAILED_BODY',
        'LOC_TRAIT_CIVILIZATION_DISTRICT_BATH_NAME',
        'LOC_DISTRICT_BATH_PRODUCTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4'
        );

UPDATE  LocalizedText
SET     Text = REPLACE(Text, 'Bath', 'Aqueduct')
WHERE   Tag IN (
        'LOC_PEDIA_LEADERS_PAGE_LEADER_TRAJAN_CHAPTER_DETAILED_BODY',
        'LOC_TRAIT_CIVILIZATION_DISTRICT_BATH_NAME',
        'LOC_DISTRICT_BATH_PRODUCTION',
        'LOC_PEDIA_CONCEPTS_PAGE_ENVIRONMENTAL_EFFECTS_CHAPTER_DROUGHTS_PARA_4'
        );
--------------------------------------------------------------

CREATE TRIGGER HD_JNR_UC_AQD_LocalizedText_Districts_zh_Hans
AFTER INSERT ON LocalizedText
WHEN NEW.Text LIKE "%水渠%"
BEGIN
    UPDATE LocalizedText SET Text = REPLACE(Text, '水渠', '蓄水池')   WHERE Tag = NEW.Tag and Language = NEW.Language and Tag != 'LOC_DISTRICT_BATH_NAME_JNR_UC';
END;

CREATE TRIGGER HD_JNR_UC_AQD_LocalizedText_Districts_en
AFTER INSERT ON LocalizedText
WHEN NEW.Text LIKE "%an Aqueduct%" OR NEW.Text LIKE "%Aqueducts%" OR NEW.Text LIKE "%Aqueduct%"
BEGIN
    UPDATE LocalizedText SET Text = REPLACE(Text, 'an Aqueduct', 'a Cistern')   WHERE Tag = NEW.Tag and Language = NEW.Language;
    UPDATE LocalizedText SET Text = REPLACE(Text, 'Aqueducts', 'Cisterns')   WHERE Tag = NEW.Tag and Language = NEW.Language;
    UPDATE LocalizedText SET Text = REPLACE(Text, 'Aqueduct', 'Cistern')   WHERE Tag = NEW.Tag and Language = NEW.Language and Tag != 'LOC_DISTRICT_BATH_NAME_JNR_UC';
END;