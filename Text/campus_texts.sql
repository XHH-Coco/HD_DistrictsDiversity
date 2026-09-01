-- UC_CMP_Text
-- Author: JNR
--------------------------------------------------------------

-- English
--------------------------------------------------------------
INSERT OR REPLACE INTO EnglishText
        (Tag,                                                       Text)
VALUES  ('LOC_BUILDING_JNR_ACADEMY_NAME',                           'Sishu'),
        ('LOC_BUILDING_JNR_ACADEMY_DESCRIPTION',                    'If you have at least 2 Stationery Resources, +1 [ICON_Culture] Culture for regional yield. After Paper Making is researched, +1 regional range tile.'),
        ('LOC_BUILDING_JNR_SCHOOL_NAME',                            'City School'),
        ('LOC_BUILDING_JNR_SCHOOL_DESCRIPTION',                     '+2 [ICON_Science] Science for each specialty districts in this city. Campus gain standard adjacency bonus from districts.'),
        ('LOC_BUILDING_UNIVERSITY_DESCRIPTION',                     '[ICON_CITIZEN] Citizens in this city provide +0.5 [ICON_SCIENCE] Science.'),
        ('LOC_BUILDING_JNR_ARCHITECTURE_NAME',                      'School of Architecture'),
        ('LOC_BUILDING_JNR_ARCHITECTURE_DESCRIPTION',               '+2 [ICON_Science] Science for all districts in this city; +4 [ICON_Science] Science for all wonders in this city. Extra +100% of this bonus after completing Steel.'),
        ('LOC_BUILDING_JNR_REAL_ACADEMY_NAME',                      'Academy'),
        ('LOC_BUILDING_JNR_REAL_ACADEMY_DESCRIPTION',               'This Campus receives [ICON_Science] Science equal to its adjacency bonus. +100% Adjacency of this Campus after completing Chemistry.'),
        ('LOC_BUILDING_JNR_LABORATORY_NAME',                        'Laboratory'),
        ('LOC_BUILDING_JNR_LABORATORY_DESCRIPTION',                 '[ICON_CITIZEN] Citizens in this city provide +0.5 [ICON_SCIENCE] Science.'),
        ('LOC_BUILDING_JNR_LIBERAL_ARTS_NAME',                      'Liberal Arts College'),
        ('LOC_BUILDING_JNR_LIBERAL_ARTS_DESCRIPTION',               '+2 [ICON_SCIENCE] Science from each Great Work of [ICON_GREATWORK_WRITING] Writing, [ICON_GREATWORK_LANDSCAPE] Art and [ICON_GREATWORK_Music] Music in this city. After Completing Social Science, Theater in this city is granted [ICON_Science] Science equal to its adjacency bonus.'),
        ('LOC_BUILDING_RESEARCH_LAB_NAME_UC_JNR',                   'Institute of Technology'),
        ('LOC_BUILDING_RESEARCH_LAB_DESCRIPTION_UC_JNR',            'When fully [ICON_POWER] Powered: +10% [ICON_Science] Science; extra +10% with at least 6 Specialty Districts; extra +10% after completing Integrated Circuit.'),
        ('LOC_BUILDING_JNR_EDUCATION_NAME',                         'Community College'),
        ('LOC_BUILDING_JNR_EDUCATION_DESCRIPTION',                  '[ICON_Citizen] Citizen provides +1 [ICON_SCIENCE] Science. [NEWLINE]When fully [ICON_POWER] Powered: +10% [ICON_Science] Science; extra +10% with at least 15 [ICON_Citizen] Citizens; extra +10% after completing Integrated Circuit.'),
        ('LOC_BUILDING_MADRASA_DESCRIPTION_UC_JNR',                 '"LOC_BUILDING_MADRASA_DESCRIPTION",                          "A building unique to Arabia. This building can only be built once per civilization. [NEWLINE][NEWLINE]Campus and Theater Square districts within 6 tiles provide [ICON_Faith] Faith equal to the adjacency bonus. [NEWLINE]For each city follows your Religion, Campus district in this city receives +1 adjacency bonus. If at least 20 cities follow your Religion, your cities can purchase buildings in Campus districts with [ICON_FAITH] Faith. [NEWLINE]For each cultural policy slot in your government, Theater Square district in this city receives +2 adjacency bonus. If your governmrnt has at least 6 cultural policy slots, your cities can purchase buildings in Theater Square districts with [ICON_FAITH] Faith.'),
        ('LOC_BUILDING_NAVIGATION_SCHOOL_DESCRIPTION_UC_JNR',       'A building unique to Portugal. Replaces the City School. +25% [ICON_PRODUCTION] Production towards naval units in this city. +1 [ICON_SCIENCE] Science for every two Shallow Sea and Lake tiles in this city. +2 [ICON_GreatAdmiral] Great Admiral points. +2 [ICON_Science] Science for each specialty districts in this city. Campus gain standard adjacency bonus from districts.'), -- +5% [ICON_SCIENCE] Science in this city. 
        -- Techs
    --   ('LOC_TECH_ASTRONOMY_HD_DESCRIPTION',                       '+5% [ICON_Science] Science for cities have University.'),
        -- ('LOC_TECH_SCIENTIFIC_THEORY_HD_DESCRIPTION',               'Plantation improvements receive +1 [ICON_Food] Food.'),
        ('LOC_BOOST_TRIGGER_PRINTING_JNR_UC',                       'Build 2 Universities or City Schools.'),
        ('LOC_BOOST_TRIGGER_NUCLEAR_PROGRAM_JNR_UC',                'Build an Institute of Technology.'),
        -- ('LOC_POLICY_COMPILE_DESCRIPTION',                          '+4 [ICON_GreatScientist] Great Scientist points per turn. +2 [ICON_GreatScientist] Great Scientist points per turn for every Library and Sishu.'),
        -- ('LOC_POLICY_RATIONALISM_DESCRIPTION',                      'Regional effects from Campus district reach 3 tiles farther. Universties and City Schools provide 0.3 [ICON_SCIENCE] Science per [ICON_Citizen] citizen in the city. Academies, Laboratories, Schools of Architecture and Liberal Arts Colleges provide 0.5 [ICON_SCIENCE] Science per [ICON_Citizen] citizen in the city.'),
        -- ('LOC_POLICY_SCIENCE_FOUNDATIONS_DL_DESCRIPTION',           '+4 [ICON_GreatScientist] Great Scientist points per turn for every Academy, Laboratory, School of Architecture and Liberal Arts College; +8 [ICON_GreatScientist] Great Scientist points per turn for every Institute of Technology and Community College. +4 [ICON_GreatEngineer] Great Engineer points per turn for every Factory and +8 [ICON_GreatEngineer] Great Engineer points per turn for every Power Plant.'),
        -- ("LOC_POLICY_TEXTBOOK_DESCRIPTION",                         "+4 [ICON_GreatScientist] Great Scientist points per turn. +4 [ICON_GreatScientist] Great Scientist points per turn for every University and City School."),
        -- 
        -- ('LOC_GREATPERSON_ISAAC_NEWTON_ACTIVE',                     'Instantly builds a University and Library in this district. Universities and City Schools provide +4 [ICON_Science] Science.'),
        -- ('LOC_GREATPERSON_DMITRI_MENDELEEV_ACTIVE',                 'Reveals [ICON_RESOURCE_ALUMINUM] Aluminum without the normal technology requirement. Triggers the [ICON_TechBoosted] Eureka moment for Chemistry. If Chemistry is already boosted, instead complete the tech. Academies, Laboratories, Schools of Architecture and Liberal Arts Colleges provide +6 [ICON_Science] Science.'),
        -- ('LOC_GREATPERSON_ACADEMY_SCIENCE_JNR',                     'Library and Sishu provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_SCHOOL_SCIENCE_JNR',                      'City Schools provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_LIBERAL_ARTS_SCIENCE_JNR',                'Liberal Arts Colleges provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_LABORATORY_SCIENCE_JNR',                  'Laboratories provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_REAL_ACADENY_SCIENCE_JNR',                'Academies provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_ARCHITECTURE_SCIENCE_JNR',                'Schools of Architecture provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_INSTITUTE_SCIENCE_JNR',                   'Institutes of Technology provide +{Amount} [ICON_SCIENCE] Science.'),
        -- ('LOC_GREATPERSON_EDUCATION_SCIENCE_JNR',                   'Community Colleges provide +{Amount} [ICON_SCIENCE] Science.'),

        ("LOC_GREATPERSON_LIBRARY",                                 "Instantly builds a Library in this district.[NEWLINE]Provides +2 [ICON_Science] Science to Tier 1 buildings in Campus district."),
        ("LOC_GREATPERSON_ISAAC_NEWTON_ACTIVE",                     "Instantly builds a University and Library in this district.[NEWLINE]Provides +4 [ICON_Science] Science to Tier 2 buildings in Campus district."),
        ("LOC_GREATPERSON_DMITRI_MENDELEEV_ACTIVE",                 "Reveals [ICON_RESOURCE_ALUMINUM] Aluminum without the normal technology requirement.[NEWLINE]Triggers the [ICON_TechBoosted] Eureka moment for Chemistry. If Chemistry is already boosted, instead complete the tech.[NEWLINE]Provides +6 [ICON_Science] Science to Tier 3 buildings in Campus district."),
        ("LOC_GREATPERSON_2MODERNATOMICTECHBOOST",                  "Triggers the [ICON_TECHBOOSTED] Eureka moment for 2 random technologies from the Modern or Atomic era.[NEWLINE]Provides +10 [ICON_Science] Science to Tier 4 buildings in Campus district."),

        ('LOC_DISTRICT_JNR_UC_Luxury_Science',                      '+{1_num} [ICON_SCIENCE] Science from the adjacent Luxury {1_Num : plural 1?resource; other?resources;}.'),
        --
        ("LOC_GREATPERSON_CHARLES_DARWIN_ACTIVE",                   "Gain +2000 [ICON_Science] Science (on Standard speed) for each Natural Wonder tile here or adjacent."),
        ("LOC_GREATPERSON_GALILEO_GALILEI_ACTIVE",                  "Gain +500 [ICON_Science] Science (on Standard speed) for each adjacent Mountain tile."),
        ("LOC_GREAT_PERSON_GRANT_LOTSO_SCIENCE",                    "Gain +6000 [ICON_SCIENCE] Science and +2000 [ICON_CULTURE] Culture (on Standard speed)."),
        --
        -- ("LOC_TRAIT_LEADER_HWARANG_DESCRIPTION",                    "+5 [Icon_Housing] Housing and +20 Loyalty per turn for your Capital and cities with an assigned Governor. -20 Loyalty per turn and -50% to all yields for cities that are not your Capital and do not have an assigned Governors. +25% [ICON_PRODUCTION] Production towards Districts and Buildings for cities that have a Seowon district. +15% [ICON_Production] Production and +15% [ICON_FOOD] Food for Cities have a Library or Sishu. +100% Districts Adjacency (of corresponding yields) to all Districts for Cities that have a University or City School. Cities with Academy, Laboratory, School of Architecture or Liberal Arts College +1 to all [ICON_CITIZEN] citizen yields. Cities with Institute of Technology or Community College gain +10% to all yields."),
        --("LOC_LEADER_TRAIT_BABYLON_DESCRIPTION",                    "+3 [ICON_SCIENCE] Science from each [ICON_GreatWork_RELIC] Relic and [ICON_GreatWork_Artifact] Artifact. Campus or Theater Districts with Buildings provide +2 [ICON_Science] Science for the city."),
        --("LOC_CIVILIZATION_BABYLON_BONUS",                          "+3 [ICON_SCIENCE] Science from each [ICON_GreatWork_RELIC] Relic and [ICON_GreatWork_Artifact] Artifact. Campus or Theater Districts with Buildings provide +2 [ICON_Science] Science for the city."),
        --
        ("LOC_BELIEF_JESUIT_EDUCATION_DL_DESCRIPTION",              "Campus district buildings are 20% cheaper to purchase. May purchase Campus district buildings with [ICON_Faith] Faith. Shrines +0.3 [ICON_Science] Science for each [ICON_Citizen] citizen in this city. Temples and Worship buildings +0.6 [ICON_Science] Science for each [ICON_Citizen] citizen in this city."), 
        --
        ('LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_FIRST_PLACE_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC',    'Increases the accumulation of resources in cities with a University or City School by 1.'),
        ('LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_TOP_TIER_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC',       'Increases the accumulation of resources in cities with a Academy, Laboratory, School of Architecture or Liberal Arts College by 1.');
--------------------------------------------------------------

-- Change wonder descriptions
--------------------------------------------------------------
UPDATE LocalizedText SET Text=REPLACE(Text, 'Tier 3 building',  'Tier 4 building') WHERE Tag = 'LOC_BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION_DESCRIPTION';
--------------------------------------------------------------

-- --------------------------------------------------------------------------------
-- -- Language: en_US
-- insert or replace into EnglishText
--     (Tag,                                                           Text)
-- values
--     ("",         "");

--------------------------------------------------------------------------------
-- Language: zh_Hans_CN
insert or replace into LocalizedText
    (Language,      Tag,                                                        Text)
values
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ACADEMY_NAME",                            "私塾"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ACADEMY_DESCRIPTION",                     "若你拥有至少2种文具资源，辐射产出+1 [ICON_Culture] 文化值。解锁“造纸术”科技后，+1辐射范围。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_SCHOOL_NAME",                             "城市学校"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_SCHOOL_DESCRIPTION",                      "本城的每个专业化区域+2 [ICON_Science] 科技值。此学院从每个相邻区域获得标准相邻加成。"),
    ("zh_Hans_CN",  "LOC_BUILDING_UNIVERSITY_DESCRIPTION",                      "每位 [ICON_CITIZEN] 公民+0.5 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ARCHITECTURE_NAME",                       "建筑学院"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ARCHITECTURE_DESCRIPTION",                "本城的区域+2 [ICON_Science] 科技值，奇观+4 [ICON_Science] 科技值；解锁“钢铁”科技后收益翻倍。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_REAL_ACADEMY_NAME",                       "研究院"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_REAL_ACADEMY_DESCRIPTION",                "此学院获得等于相邻加成的 [ICON_Science] 科技值加成。解锁“化学”科技后，此学院+100%相邻加成。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LABORATORY_NAME",                         "实验室"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LABORATORY_DESCRIPTION",                  "本城每位 [ICON_CITIZEN] 公民+0.5 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LIBERAL_ARTS_NAME",                       "文艺学院"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_LIBERAL_ARTS_DESCRIPTION",                "本城每个 [ICON_GREATWORK_WRITING] 著作、[ICON_GREATWORK_LANDSCAPE] 艺术和 [ICON_GREATWORK_MUSIC] 音乐巨作+2 [ICON_Science] 科技值。解锁“社会科学”市政后，此城市的剧院广场区域相邻加成也提供 [ICON_Science] 科技值产出。"),
    ("zh_Hans_CN",  "LOC_BUILDING_RESEARCH_LAB_NAME_UC_JNR",                    "理工学院"),
    ("zh_Hans_CN",  "LOC_BUILDING_RESEARCH_LAB_DESCRIPTION_UC_JNR",             "此城 [ICON_POWER] 供电充足时：+10% [ICON_Science] 科技值；若城市中拥有至少6个专业化区域，额外+10% [ICON_Science] 科技值；解锁“集成电路”科技后，额外+10% [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_EDUCATION_NAME",                          "综合大学"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_EDUCATION_DESCRIPTION",                   "城市中每位 [ICON_Citizen] 公民+1 [ICON_SCIENCE] 科技值产出。[NEWLINE]此城 [ICON_POWER] 供电充足时：+10% [ICON_Science] 科技值；若城市中拥有至少15个 [ICON_CITIZEN] 公民，额外+10% [ICON_Science] 科技值；解锁“集成电路”科技后，额外+10% [ICON_Science] 科技值。"),
    -- UD & UB
    ("zh_Hans_CN",  "LOC_BUILDING_MADRASA_DESCRIPTION_UC_JNR",                  "阿拉伯特色建筑，文明中一次仅限建造一座该建筑。[NEWLINE][NEWLINE]6个单元格内的学院和剧院广场的相邻加成也提供 [ICON_FAITH] 信仰值。[NEWLINE][NEWLINE]每座信仰你创立的宗教的城市为本城的学院+1相邻加成；若至少有20座城市信仰你创立的宗教，则你的所有城市可以用 [ICON_FAITH] 信仰值购买学院建筑。[NEWLINE]你的政体中的每个文化政策槽位为本城的剧院广场+2相邻加成；若你的政体至少有6个文化政策槽位，则你的所有城市可以用 [ICON_FAITH] 信仰值购买剧院广场建筑。"),
    ("zh_Hans_CN",  "LOC_BUILDING_NAVIGATION_SCHOOL_DESCRIPTION_UC_JNR",        "葡萄牙特色建筑。在此城中生产海军单位时+25%生产力。此城中每拥有2浅海或湖泊单元格，则+1 [ICON_Science] 科技值。+2 [ICON_GreatAdmiral] 海军统帅点数。此城市每个专业化区域+2 [ICON_Science] 科技值。此学院从每个相邻区域获得标准相邻加成。"),
    -- Techs
--    ("zh_Hans_CN",  "LOC_TECH_ASTRONOMY_HD_DESCRIPTION",                        "拥有大学的城市+5% [ICON_Science] 科技值。"),
    -- ("zh_Hans_CN",  "LOC_TECH_SCIENTIFIC_THEORY_HD_DESCRIPTION",                "种植园改良设施+1 [ICON_Food] 食物。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_PRINTING_JNR_UC",                        "建造2座大学或城市学校。"),
    ("zh_Hans_CN",  "LOC_BOOST_TRIGGER_NUCLEAR_PROGRAM_JNR_UC",                 "建造1座理工学院。"),
    -- ("zh_Hans_CN",  "LOC_POLICY_COMPILE_DESCRIPTION",                           "每回合+4 [ICON_GreatScientist] 大科学家点数。每有一座图书馆或私塾，每回合的 [ICON_GreatScientist] 大科学家点数便+2。"),
    -- ("zh_Hans_CN",  "LOC_POLICY_RATIONALISM_DESCRIPTION",                       "来自学院区域建筑的辐射范围增加3个单元格。拥有大学或城市学校的城市每位 [ICON_Citizen] 公民提供0.3 [ICON_SCIENCE] 科技值。拥有研究院、实验室、建筑学院或文艺学院的城市每位 [ICON_Citizen] 公民提供0.5 [ICON_SCIENCE] 科技值。"),
    -- ("zh_Hans_CN",  "LOC_POLICY_SCIENCE_FOUNDATIONS_DL_DESCRIPTION",            "每有一所研究院、实验室、建筑学院或文艺学院，每回合的 [ICON_GreatScientist] 大科学家点数便+4；每有一所理工学院或综合大学，每回合的 [ICON_GreatScientist] 大科学家点数便+8。每有一座工厂，每回合的 [ICON_GreatEngineer] 大工程师点数便+4；每有一座发电厂，每回合的 [ICON_GreatEngineer] 大工程师点数便+8。"),
    -- ("zh_Hans_CN",  "LOC_POLICY_TEXTBOOK_DESCRIPTION",                          "每回合+4 [ICON_GreatScientist] 大科学家点数。每有一座大学或城市学校，每回合的 [ICON_GreatScientist] 大科学家点数便+4。"),
    -- 
    ("zh_Hans_CN",  "LOC_DISTRICT_JNR_UC_Luxury_Science",                       "+{1_num} [ICON_SCIENCE] 科技值来自相邻奢侈资源。"),
        -- 
    ("zh_Hans_CN",  "LOC_GREATPERSON_LIBRARY",                                  "立即在该区域建造图书馆。[NEWLINE]学院一级建筑+2 [ICON_SCIENCE] 科技值。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_ISAAC_NEWTON_ACTIVE",                      "立即在该区域建造大学和图书馆。[NEWLINE]学院二级建筑+4 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_DMITRI_MENDELEEV_ACTIVE",                  "忽略普通科技要求，显示 [ICON_RESOURCE_ALUMINUM] 铝资源。[NEWLINE]为化学科技启动 [ICON_TechBoosted] 尤里卡时刻。若化学尤里卡已被触发，则完成该科技。[NEWLINE]学院三级建筑+6 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_2MODERNATOMICTECHBOOST",                   "为随机的2个现代或原子能时代科技启动 [ICON_TECHBOOSTED] 尤里卡时刻。[NEWLINE]学院四级建筑+10 [ICON_SCIENCE] 科技值。"),
    --
    ("zh_Hans_CN",  "LOC_GREATPERSON_CHARLES_DARWIN_ACTIVE",                    "在标准速度下，从此处或相邻的每个自然奇观单元格获得2000 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_GREATPERSON_GALILEO_GALILEI_ACTIVE",                   "在标准速度下，所在单元格每相邻一个山脉单元格获得500 [ICON_Science] 科技值。"),
    ("zh_Hans_CN",  "LOC_GREAT_PERSON_GRANT_LOTSO_SCIENCE",                     "获得6000点 [ICON_SCIENCE] 科技值与2000点 [ICON_CULTURE] 文化值（标准速度下）。"),
    --
    -- ("zh_Hans_CN",  "LOC_TRAIT_LEADER_HWARANG_DESCRIPTION",                     "首都或派遣了总督的城市获得+5 [Icon_Housing] 住房和+20忠诚度。非首都且未派遣总督的城市-8忠诚度和-50%全部产出。 有书院的城市建造区域和建筑+25% [Icon_Production] 生产力；有图书馆或私塾的城市+15% [ICON_Food] 食物和 [Icon_production] 生产力；有大学或城市学校的城市，所有区域对应产出类型的相邻加成+100%；有研究院、实验室、建筑学院或文艺学院的城市每个人口额外1点全部产出；有理工大学或综合大学的城市所有产出+10%。"),
    --("zh_Hans_CN",  "LOC_LEADER_TRAIT_BABYLON_DESCRIPTION",                     "所有的 [ICON_GreatWork_RELIC] 遗物和 [ICON_GreatWork_Artifact] 文物+3 [ICON_SCIENCE] 科技值。拥有建筑的学院或剧院广场为城市+2 [ICON_Science] 科技值。"),
    --("zh_Hans_CN",  "LOC_CIVILIZATION_BABYLON_BONUS",                           "所有的 [ICON_GreatWork_RELIC] 遗物和 [ICON_GreatWork_Artifact] 文物+3 [ICON_SCIENCE] 科技值。拥有建筑的学院或剧院广场为城市+2 [ICON_Science] 科技值。"),
    -- 
    ("zh_Hans_CN",  "LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_FIRST_PLACE_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC",     "拥有大学或城市学院的城市的资源积累+1。"),
    ("zh_Hans_CN",  "LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_TOP_TIER_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC",        "拥有研究院、实验室、建筑学院或文艺学院的城市的资源积累+1。");

-- Change wonder descriptions
--------------------------------------------------------------
UPDATE LocalizedText SET Text=REPLACE(Text, '三级建筑', '四级建筑') WHERE Tag = 'LOC_BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION_DESCRIPTION';
-- --------------------------------------------------------------

-- Policy
--------------------------------------------------------------
-- UPDATE LocalizedText SET Text=REPLACE(Text, 'Research Lab',         'Institute of Technology or Community College')         WHERE Tag = 'LOC_POLICY_SUPERPOWER_DESCRIPTION';
-- UPDATE LocalizedText SET Text=REPLACE(Text, '研究实验室',            '理工学院或综合大学')                                     WHERE Tag = 'LOC_POLICY_SUPERPOWER_DESCRIPTION';
--------------------------------------------------------------