--圣地建筑基本信息
update Buildings set	PrereqCivic = NULL,				        PrereqTech = 'TECH_ASTROLOGY',		Housing = 0,	Entertainment = 0,	Maintenance = 1,    RegionalRange = 0,	PurchaseYield = 'YIELD_GOLD',	Cost = 70,	CitizenSlots = 1,	Name = 'LOC_BUILDING_SHRINE_NAME',                           Description = 'LOC_BUILDING_SHRINE_DESCRIPTION'			        where BuildingType = 'BUILDING_SHRINE';
update Buildings set	PrereqCivic = 'CIVIC_THEOLOGY',		    PrereqTech = NULL,					Housing = 0,	Entertainment = 0,  Maintenance = 2,	RegionalRange = 0,  PurchaseYield = 'YIELD_GOLD',	Cost = 140,	CitizenSlots = 1,	Name = 'LOC_BUILDING_TEMPLE_NAME',                           Description = 'LOC_BUILDING_TEMPLE_DESCRIPTION'			        where BuildingType = 'BUILDING_TEMPLE';
update Buildings set    PrereqCivic = 'CIVIC_THEOLOGY',         PrereqTech = NULL,                  Housing = 0,	Entertainment = 0,  Maintenance = 2,	RegionalRange = 0,  PurchaseYield = 'YIELD_GOLD',	Cost = 420, CitizenSlots = 1,   Name = 'LOC_BUILDING_STAVE_CHURCH_NAME',                     Description = 'LOC_BUILDING_STAVE_CHURCH_DESCRIPTION_UC_JNR', MaxPlayerInstances = 1 where BuildingType = 'BUILDING_STAVE_CHURCH';
update Buildings set    PrereqCivic = 'CIVIC_THEOLOGY',         PrereqTech = NULL,                  Housing = 0,	Entertainment = 0,  Maintenance = 2,	RegionalRange = 0,  PurchaseYield = 'YIELD_GOLD',	Cost = 140, CitizenSlots = 1,   Name = 'LOC_BUILDING_PRASAT_NAME',                           Description = 'LOC_BUILDING_PRASAT_DESCRIPTION_UC_JNR'             where BuildingType = 'BUILDING_PRASAT';

--本体产出
update Building_YieldChanges set YieldChange = 7 where YieldType = 'YIELD_FAITH' and BuildingType = 'BUILDING_SHRINE';
--update Building_YieldChanges set YieldChange = 4 where YieldType = 'YIELD_FAITH' and BuildingType in ('BUILDING_TEMPLE','BUILDING_PRASAT');
update Building_YieldChanges set YieldChange = 2 where YieldType = 'YIELD_FAITH' and BuildingType = 'BUILDING_STAVE_CHURCH';
insert or replace into Building_YieldChanges
	(BuildingType,						YieldType,				YieldChange)
values
    ('BUILDING_JNR_ALTAR',              'YIELD_FAITH',          2),
    ('BUILDING_JNR_MONASTERY',          'YIELD_FAITH',          5),
    ('BUILDING_STAVE_CHURCH',           'YIELD_CULTURE',        2),
    ('BUILDING_JNR_HOSPITIUM',          'YIELD_FAITH',          10),
    ('BUILDING_JNR_HOSPITIUM',          'YIELD_CULTURE',        4),
    ('BUILDING_JNR_GARDEN',             'YIELD_FAITH',          10),
    ('BUILDING_JNR_GARDEN',             'YIELD_FOOD',           4);

-- insert or replace into Building_YieldDistrictCopies
-- 	(BuildingType,					OldYieldType,				NewYieldType)
-- values
-- 	('BUILDING_JNR_HOSPITIUM',	    'YIELD_FAITH',			    'YIELD_CULTURE'),
--     ('BUILDING_JNR_GARDEN',	        'YIELD_FAITH',			    'YIELD_FOOD');

--建筑购买平民单位调整
-- delete from BuildingModifiers where BuildingType = 'BUILDING_TEMPLE' and ModifierId = 'TEMPLE_SETTLER_PURCHASE';
-- delete from BuildingModifiers where BuildingType = 'BUILDING_PRASAT' and ModifierId = 'TEMPLE_SETTLER_PURCHASE';
-- delete from Unit_BuildingPrereqs where PrereqBuilding = 'BUILDING_STAVE_CHURCH';
insert or replace into Unit_BuildingPrereqs
    (Unit,                  PrereqBuilding)
values
	('UNIT_MISSIONARY',		'BUILDING_JNR_ALTAR'),
    ('UNIT_APOSTLE',        'BUILDING_JNR_MONASTERY'),
    ('UNIT_GURU',           'BUILDING_JNR_MONASTERY'),
    ('UNIT_INQUISITOR',     'BUILDING_JNR_MONASTERY'),
    ('UNIT_WARRIOR_MONK',   'BUILDING_JNR_MONASTERY');
--效果删除
insert or replace into Building_GreatWorks
	(BuildingType,				GreatWorkSlotType,			NumSlots)
values
	('BUILDING_JNR_MONASTERY',	'GREATWORKSLOT_ART',		1),
	('BUILDING_JNR_HOSPITIUM',	'GREATWORKSLOT_MUSIC',		1),
	('BUILDING_JNR_GARDEN',	    'GREATWORKSLOT_ART',		2);
--新增条件
insert or ignore into RequirementSets
    (RequirementSetId,                                          RequirementSetType)
values
    ('BUILDING_IS_HOSPITIUM_OR_GARDEN',                         'REQUIREMENTSET_TEST_ANY'),
    ('BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',         'REQUIREMENTSET_TEST_ANY'),
    ('HD_HOLY_SITE_HAS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',     'REQUIREMENTSET_TEST_ALL'),
    ('HD_HOLY_SITE_HAS_HOSPITIUM_OR_GARDEN',                    'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_10_POP',                                      'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_NO_10_POP',                                   'REQUIREMENTSET_TEST_ALL');
insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    ('BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',         'REQUIRES_CITY_HAS_BUILDING_JNR_MONASTERY'),
    ('BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',         'REQUIRES_CITY_HAS_BUILDING_TEMPLE'),
    ('BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',         'REQUIRES_CITY_HAS_BUILDING_STAVE_CHURCH'),
    ('BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',         'REQUIRES_CITY_HAS_BUILDING_HD_ALCHEMY_ROOM'),
    ('BUILDING_IS_HOSPITIUM_OR_GARDEN',                         'REQUIRES_CITY_HAS_BUILDING_JNR_HOSPITIUM'),
    ('BUILDING_IS_HOSPITIUM_OR_GARDEN',                         'REQUIRES_CITY_HAS_BUILDING_JNR_GARDEN'),
    ('HD_HOLY_SITE_HAS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',    'REQUIRES_DISTRICT_IS_HOLY_SITE'),
    ('HD_HOLY_SITE_HAS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM',    'REQUIRES_BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM'),
    ('HD_HOLY_SITE_HAS_HOSPITIUM_OR_GARDEN',                    'REQUIRES_DISTRICT_IS_HOLY_SITE'),
    ('HD_HOLY_SITE_HAS_HOSPITIUM_OR_GARDEN',                    'REQUIRES_BUILDING_IS_HOSPITIUM_OR_GARDEN'),
    ('HD_CITY_HAS_10_POP',                                      'REQUIRES_CITY_HAS_10_POPULATION'),
    ('HD_CITY_HAS_NO_10_POP',                                   'REQUIRES_CITY_HAS_NO_10_POPULATION');

insert or ignore into Requirements
    (RequirementId,                                             RequirementType)
values
    ('REQUIRES_BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM','REQUIREMENT_REQUIREMENTSET_IS_MET'),
    ('REQUIRES_BUILDING_IS_HOSPITIUM_OR_GARDEN',                'REQUIREMENT_REQUIREMENTSET_IS_MET');

insert or ignore into Requirements
    (RequirementId,                                             RequirementType,                        Inverse)
values
    ('REQUIRES_CITY_HAS_NO_10_POPULATION',                      'REQUIREMENT_CITY_HAS_X_POPULATION',    1);

insert or ignore into RequirementArguments
    (RequirementId,                                             Name,               Value)
values
    ('REQUIRES_BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM','RequirementSetId', 'BUILDING_IS_TEMPLE_OR_MONASTERY_OR_ALCHEMY_ROOM'),
    ('REQUIRES_BUILDING_IS_HOSPITIUM_OR_GARDEN',                'RequirementSetId', 'BUILDING_IS_HOSPITIUM_OR_GARDEN'),
    ('REQUIRES_CITY_HAS_NO_10_POPULATION',                      'Amount',           10);
--建筑特效
insert or replace into HD_Building_Base_On_ResourceClassification (BuildingType, ResourceClassificationType, DetectRange, PropertyKey) values
	('BUILDING_JNR_ALTAR', 'RESOURCE_CLASSIFICATION_HD_MEDICINE', 'PLAYER', 'HD_PLOT_BINARY_COMPRESS_ALTAR_SCIENCE'),
	('BUILDING_JNR_ALTAR', 'RESOURCE_CLASSIFICATION_HD_CELEBRATION', 'PLAYER', 'HD_PLOT_BINARY_COMPRESS_ALTAR_RANGE');

insert or replace into HD_Binary_Compress_AtLeast (Key, AtLeast) values
	('HD_PLOT_BINARY_COMPRESS_ALTAR_SCIENCE',   2),
	('HD_PLOT_BINARY_COMPRESS_ALTAR_RANGE',     2);

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
values
--祭坛
    ('HD_ALTAR_REGIONAL_SCIENCE',             'MODIFIER_SINGLE_CITY_ADJUST_PROPERTY',             'HD_PLOT_BINARY_COMPRESS_ALTAR_SCIENCE_AT_LEAST_2_REQUIREMENTS'),
    ('HD_ALTAR_REGIONAL_RANGE',           'MODIFIER_SINGLE_CITY_ADJUST_PROPERTY',             'HD_PLOT_BINARY_COMPRESS_ALTAR_RANGE_AT_LEAST_2_REQUIREMENTS'),
--教堂
    ('JNR_MONASTERY_HOLYSITE_ADJACENT',             'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',                  Null),
    ('JNR_MONASTERY_HOLYSITE_ADJACENT_LATE',        'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',                  'PLAYER_HAS_CIVIC_REFORMED_CHURCH_REQUIREMENTS'),
    ('TEMPLE_FAITH_PERCENTAGE_BOOST_LATE',          'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',                      'PLAYER_HAS_CIVIC_REFORMED_CHURCH_REQUIREMENTS'),
--救济院    
 --   ('HOSPITIUM_RELIGOUS_TOURISM',                  'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',                                  NULL),
    ('HOSPITIUM_RELIGOUS_TOURISM_1',                'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',                                  NULL),
    ('HOSPITIUM_RELIGOUS_TOURISM_2',                'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',                                  NULL),
    ('HOSPITIUM_RELIGOUS_TOURISM_3',                'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',                                  NULL),
    ('HOSPITIUM_POP_FAITH',                         'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',                NULL),
    ('HOSPITIUM_POP_CULTURE',                       'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',                NULL),
--花园
    -- ('GARDEN_GREATGENERALPOINTS',                   'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_ENCAMPMENT'),
    -- ('GARDEN_GREATADMIRALPOINTS',                   'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_HARBOR'),
    -- ('GARDEN_GREATENGINEERPOINTS',                  'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_INDUSTRIAL_ZONE'),
    -- ('GARDEN_GREATMERCHANTPOINTS',                  'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_COMMERCIAL_HUB'),
    -- ('GARDEN_GREATPROPHETPOINTS',                   'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_HOLY_SITE'),
    -- ('GARDEN_GREATSCIENTISTPOINTS',                 'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_CAMPUS'),
    -- ('GARDEN_GREATWRITERPOINTS',                    'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_THEATER'),
    -- ('GARDEN_GREATARTISTPOINTS',                    'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_THEATER'),
    -- ('GARDEN_GREATMUSICIANPOINTS',                  'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',            'DISTRICT_IS_THEATER'),
    ('GARDEN_ADJUST_GREAT_PERSON_POINT_BONUS',      'MODIFIER_CITY_INCREASE_GREAT_PERSON_POINT_BONUS',                      'HD_CITY_HAS_10_POP'),
    ('GARDEN_ADJUST_GROWTH_RATE',                   'MODIFIER_SINGLE_CITY_ADJUST_CITY_GROWTH',                              'HD_CITY_HAS_NO_10_POP'),
    ('GARDEN_GREATWORKOBJECT_SCULPTURE_TOURISM_BONUS',                   'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',             NULL),
    ('GARDEN_GREATWORKOBJECT_PORTRAIT_TOURISM_BONUS',                   'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',              NULL),
    ('GARDEN_GREATWORKOBJECT_LANDSCAPE_TOURISM_BONUS',                   'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',             NULL);
--上师庙
    -- ('MEENAKSHI_GARDEN_FOOD',						'MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',			                'HD_HOLY_SITE_HAS_HOSPITIUM_OR_GARDEN'),
	-- ('MEENAKSHI_GARDEN_FOOD_MODIFIER',  			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',                                    'REQUIRE_PLOT_ADJACENT_TO_OWNER');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
values
--祭坛
    ('HD_ALTAR_REGIONAL_SCIENCE',				    'Key',		    'HD_SINGLE_BUILDING_PROVIDE_REGIONAL_YIELD_BONUS_BUILDING_JNR_ALTAR_YIELD_SCIENCE'),
	('HD_ALTAR_REGIONAL_SCIENCE',					'Amount',	    1),
	('HD_ALTAR_REGIONAL_RANGE',				    'Key',		    'HD_SINGLE_BUILDING_EXTRA_REGIONAL_RANGE_BUILDING_JNR_ALTAR'),
	('HD_ALTAR_REGIONAL_RANGE',					'Amount',	    1),
--教堂
    ('JNR_MONASTERY_HOLYSITE_ADJACENT',             'YieldType',                'YIELD_FAITH'),
    ('JNR_MONASTERY_HOLYSITE_ADJACENT',             'Amount',                   50),
    ('JNR_MONASTERY_HOLYSITE_ADJACENT_LATE',        'YieldType',                'YIELD_FAITH'),
    ('JNR_MONASTERY_HOLYSITE_ADJACENT_LATE',        'Amount',                   50),
    ('TEMPLE_FAITH_PERCENTAGE_BOOST_LATE',          'YieldType',                'YIELD_FAITH'),
    ('TEMPLE_FAITH_PERCENTAGE_BOOST_LATE',          'Amount',                   5),
--救济院
    ('HOSPITIUM_RELIGOUS_TOURISM_1',                'GreatWorkObjectType',      'GREATWORKOBJECT_RELIC'),
    ('HOSPITIUM_RELIGOUS_TOURISM_1',                'ScalingFactor',            150),
    ('HOSPITIUM_RELIGOUS_TOURISM_2',                'GreatWorkObjectType',      'GREATWORKOBJECT_RELIGIOUS'),
    ('HOSPITIUM_RELIGOUS_TOURISM_2',                'ScalingFactor',            150),
    ('HOSPITIUM_RELIGOUS_TOURISM_3',                'GreatWorkObjectType',      'GREATWORKOBJECT_MUSIC'),
    ('HOSPITIUM_RELIGOUS_TOURISM_3',                'ScalingFactor',            150),
    ('HOSPITIUM_POP_FAITH',			                'YieldType',				'YIELD_FAITH'),
	('HOSPITIUM_POP_FAITH',			                'Amount',					0.5),
    ('HOSPITIUM_POP_CULTURE',			            'YieldType',				'YIELD_CULTURE'),
	('HOSPITIUM_POP_CULTURE',			            'Amount',					0.5),
--花园
    -- ('GARDEN_GREATGENERALPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_GENERAL'),
    -- ('GARDEN_GREATGENERALPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATADMIRALPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_ADMIRAL'),
    -- ('GARDEN_GREATADMIRALPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATENGINEERPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_ENGINEER'),
    -- ('GARDEN_GREATENGINEERPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATMERCHANTPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_MERCHANT'),
    -- ('GARDEN_GREATMERCHANTPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATPROPHETPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_PROPHET'),
    -- ('GARDEN_GREATPROPHETPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATSCIENTISTPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_SCIENTIST'),
    -- ('GARDEN_GREATSCIENTISTPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATWRITERPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_WRITER'),
    -- ('GARDEN_GREATWRITERPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATARTISTPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_ARTIST'),
    -- ('GARDEN_GREATARTISTPOINTS',					'Amount',					2),
    -- ('GARDEN_GREATMUSICIANPOINTS',					'GreatPersonClassType',     'GREAT_PERSON_CLASS_MUSICIAN'),
    -- ('GARDEN_GREATMUSICIANPOINTS',					'Amount',					2),
    ('GARDEN_ADJUST_GREAT_PERSON_POINT_BONUS',      'Amount',                   20),
    ('GARDEN_ADJUST_GROWTH_RATE',                   'Amount',                   20),
    ('GARDEN_GREATWORKOBJECT_SCULPTURE_TOURISM_BONUS',      'GreatWorkObjectType',      'GREATWORKOBJECT_SCULPTURE'),
    ('GARDEN_GREATWORKOBJECT_SCULPTURE_TOURISM_BONUS',      'ScalingFactor',      150),
    ('GARDEN_GREATWORKOBJECT_PORTRAIT_TOURISM_BONUS',      'GreatWorkObjectType',      'GREATWORKOBJECT_PORTRAIT'),
    ('GARDEN_GREATWORKOBJECT_PORTRAIT_TOURISM_BONUS',      'ScalingFactor',      150),
    ('GARDEN_GREATWORKOBJECT_LANDSCAPE_TOURISM_BONUS',      'GreatWorkObjectType',      'GREATWORKOBJECT_LANDSCAPE'),
    ('GARDEN_GREATWORKOBJECT_LANDSCAPE_TOURISM_BONUS',      'ScalingFactor',      150);
--上师庙
    -- ('MEENAKSHI_GARDEN_FOOD',             			'ModifierId',  	            'MEENAKSHI_GARDEN_FOOD_MODIFIER'),
	-- ('MEENAKSHI_GARDEN_FOOD_MODIFIER',    			'YieldType',   	            'YIELD_FOOD'),
	-- ('MEENAKSHI_GARDEN_FOOD_MODIFIER',    			'Amount',	   	            1);
delete from BuildingModifiers where (BuildingType = 'BUILDING_TEMPLE' or BuildingType = 'BUILDING_STAVE_CHURCH') and ModifierId = 'TEMPLE_FAITH_PERCENTAGE_BOOST';
insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
values
--祭坛
	('BUILDING_JNR_ALTAR',				'HD_ALTAR_REGIONAL_SCIENCE'),
	('BUILDING_JNR_ALTAR',				'HD_ALTAR_REGIONAL_RANGE'),
	('BUILDING_JNR_ALTAR',				'SHRINE_BUILDER_PURCHASE'),
--二级建筑
    ('BUILDING_JNR_MONASTERY',          'TEMPLE_SETTLER_PURCHASE'),
--    ('BUILDING_JNR_MONASTERY',          'TEMPLE_FAITH_PERCENTAGE_BOOST'),
--    ('BUILDING_JNR_MONASTERY',          'TEMPLE_FAITH_PERCENTAGE_BOOST_LATE'),
--    ('BUILDING_STAVE_CHURCH',           'TEMPLE_FAITH_PERCENTAGE_BOOST_LATE'),

--    ('BUILDING_PRASAT',                 'JNR_MONASTERY_HOLYSITE_ADJACENT'),
--    ('BUILDING_TEMPLE',                 'JNR_MONASTERY_HOLYSITE_ADJACENT'),
--    ('BUILDING_PRASAT',                 'JNR_MONASTERY_HOLYSITE_ADJACENT_LATE'),
--    ('BUILDING_TEMPLE',                 'JNR_MONASTERY_HOLYSITE_ADJACENT_LATE'),
--救济院
    ('BUILDING_JNR_HOSPITIUM',          'HOSPITIUM_RELIGOUS_TOURISM_1'),
    ('BUILDING_JNR_HOSPITIUM',          'HOSPITIUM_RELIGOUS_TOURISM_2'),
    ('BUILDING_JNR_HOSPITIUM',          'HOSPITIUM_RELIGOUS_TOURISM_3'),
    ('BUILDING_JNR_HOSPITIUM',          'HOSPITIUM_POP_FAITH'),
    ('BUILDING_JNR_HOSPITIUM',          'HOSPITIUM_POP_CULTURE'),
--花园
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATGENERALPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATADMIRALPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATENGINEERPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATMERCHANTPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATPROPHETPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATSCIENTISTPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATWRITERPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATARTISTPOINTS'),
    -- ('BUILDING_JNR_GARDEN',             'GARDEN_GREATMUSICIANPOINTS');
    ('BUILDING_JNR_GARDEN',             'GARDEN_ADJUST_GROWTH_RATE'),
    ('BUILDING_JNR_GARDEN',             'GARDEN_ADJUST_GREAT_PERSON_POINT_BONUS'),
    ('BUILDING_JNR_GARDEN',             'GARDEN_GREATWORKOBJECT_SCULPTURE_TOURISM_BONUS'),
    ('BUILDING_JNR_GARDEN',             'GARDEN_GREATWORKOBJECT_PORTRAIT_TOURISM_BONUS'),
    ('BUILDING_JNR_GARDEN',             'GARDEN_GREATWORKOBJECT_LANDSCAPE_TOURISM_BONUS');
--上师庙
    --('BUILDING_MEENAKSHI_TEMPLE',	    'MEENAKSHI_GARDEN_FOOD');
insert or replace into Building_CitizenYieldChanges
    (BuildingType,                  YieldType,          YieldChange)
values
--救济院    
    ('BUILDING_JNR_HOSPITIUM',      'YIELD_CULTURE',    1),
    ('BUILDING_JNR_HOSPITIUM',      'YIELD_GOLD',       -1),
    ('BUILDING_JNR_HOSPITIUM',      'YIELD_FAITH',      1),
--花园
    ('BUILDING_JNR_GARDEN',         'YIELD_CULTURE',    1),
    ('BUILDING_JNR_GARDEN',         'YIELD_GOLD',       -1),
    ('BUILDING_JNR_GARDEN',         'YIELD_FAITH',      1),
--教堂
    ('BUILDING_JNR_MONASTERY',      'YIELD_FAITH',      1),
--祭坛
	('BUILDING_JNR_ALTAR',			'YIELD_FAITH',		1);
insert or replace into Building_GreatPersonPoints
	(BuildingType,					GreatPersonClassType,			PointsPerTurn)
values  
	('BUILDING_JNR_MONASTERY',		'GREAT_PERSON_CLASS_PROPHET',	2),
	('BUILDING_JNR_ALTAR',			'GREAT_PERSON_CLASS_PROPHET',	2),
	('BUILDING_JNR_HOSPITIUM',		'GREAT_PERSON_CLASS_MUSICIAN',	4),
	('BUILDING_JNR_GARDEN',		    'GREAT_PERSON_CLASS_ARTIST',	4);

-- 政策改动
--------------------------------------------------------------
-- 宣礼塔
insert or replace into PolicyModifiers
	(PolicyType,					ModifierId)
values
	('POLICY_MINARET',				'POLICY_MINARET_POP_FAITH_4'),
	('POLICY_HD_PSALM',				'HD_PSALM_GREAT_MUSICIAN_4');

insert or replace into Modifiers
	(ModifierId,					ModifierType,														SubjectRequirementSetId)
values
	('POLICY_MINARET_POP_FAITH_4',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_POPULATION',			'CITY_HAS_DISTRICT_HOLY_SITE_TIER_4_BUILDING_REQUIREMENTS'),
	('HD_PSALM_GREAT_MUSICIAN_4',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			    'HD_PLOT_HAS_DISTRICT_HOLY_SITE_TIER_4_BUILDING_REQUIREMENTS');

insert or replace into ModifierArguments
	(ModifierId,					Name,				    Value)
values
	('POLICY_MINARET_POP_FAITH_4',	'YieldType',		    'YIELD_FAITH'),
	('POLICY_MINARET_POP_FAITH_4',	'Amount',			    0.5),
	('HD_PSALM_GREAT_MUSICIAN_4',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MUSICIAN'),
	('HD_PSALM_GREAT_MUSICIAN_4',	'Amount',				4);

-- 再工业化
-- update RequirementSetRequirements set RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_HOLY_SITE_TIER_4_BUILDING' where
-- 	RequirementSetId = 'HD_REINDUSTRIALIZATION_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_HOLY_SITE_TIER_3_BUILDING';
update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_HOLY_SITE_TIER_4_BUILDING_REQUIREMENTS' where
	ModifierId = 'POLICY_HD_REINDUSTRIALIZATION_POP_FAITH';

-- 城邦改动
--------------------------------------------------------------
--本体产出
insert or replace into Modifiers
	(ModifierId,														ModifierType,											SubjectRequirementSetId)
values
	('MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'BUILDING_IS_HOSPITIUM_OR_GARDEN'),
	('MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'PLAYER_HAS_LARGEST_INFLUENCE');

insert or replace into ModifierArguments
	(ModifierId,														Name,					Value)
values
	('MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH_ATTACH',	'ModifierId',			'MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH'),
	('MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH',			'Amount',				3),
	('MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH',			'YieldType',			'YIELD_FAITH');

insert or replace into TraitModifiers
	(TraitType,								ModifierId)
values
	('MINOR_CIV_RELIGIOUS_TRAIT',			'MINOR_CIV_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_YIELD_FAITH_ATTACH');

--木板教堂
delete from BuildingModifiers where ModifierId in (
    'STAVE_CHURCH_FOREST_FOOD',
    'STAVE_CHURCH_FAITHWOODSADJACENCY',
    'STAVE_CHURCH_INFLUENCEPOINTS'
);

insert or replace into BuildingModifiers (BuildingType, ModifierId)
    select 'BUILDING_STAVE_CHURCH',    'BUILDING_STAVE_CHURCH_COAST_FAITH'
    where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or replace into BuildingModifiers (BuildingType, ModifierId)
    select 'BUILDING_STAVE_CHURCH',    'BUILDING_STAVE_CHURCH_COAST_CULTURE'
    where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or replace into BuildingModifiers (BuildingType, ModifierId)
    select 'BUILDING_STAVE_CHURCH',    'BUILDING_STAVE_CHURCH_EXTRA_FAITH'
    where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or replace into BuildingModifiers (BuildingType, ModifierId)
    select 'BUILDING_STAVE_CHURCH',    'BUILDING_STAVE_CHURCH_EXTRA_CULTURE'
    where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or replace into BuildingModifiers (BuildingType, ModifierId)
    select 'BUILDING_STAVE_CHURCH',    'BUILDING_STAVE_CHURCH_FISHING_BOATS_EXTRA_GOLD'
    where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or replace into Modifiers
	(ModifierId,											ModifierType,									SubjectRequirementSetId)
values
	('BUILDING_STAVE_CHURCH_COAST_FAITH',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		'PLOT_IS_ADJACENT_TO_COAST'),
	('BUILDING_STAVE_CHURCH_COAST_CULTURE',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		'PLOT_IS_ADJACENT_TO_COAST'),
	('BUILDING_STAVE_CHURCH_COAST_FAITH_MODIFIER',			'MODIFIER_SINGLE_CITY_ADJUST_YIELD_CHANGE',		NULL),
	('BUILDING_STAVE_CHURCH_COAST_CULTURE_MODIFIER',		'MODIFIER_SINGLE_CITY_ADJUST_YIELD_CHANGE',		NULL),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		'CITY_HAS_DISTRICT_HOLY_SITE_REQUIREMENTS'),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		'CITY_HAS_DISTRICT_THEATER_REQUIREMENTS'),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		NULL),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		NULL),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_MODIFIER',			'MODIFIER_BUILDING_YIELD_CHANGE',				NULL),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_MODIFIER',		'MODIFIER_BUILDING_YIELD_CHANGE',				NULL),
	('BUILDING_STAVE_CHURCH_FISHING_BOATS_EXTRA_GOLD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_IMPROVEMENT_FISHING_BOATS_REQUIREMENTS');
insert or replace into ModifierArguments
	(ModifierId,											Name,			Value)
values
	('BUILDING_STAVE_CHURCH_COAST_FAITH',					'ModifierId',	'BUILDING_STAVE_CHURCH_COAST_FAITH_MODIFIER'),
	('BUILDING_STAVE_CHURCH_COAST_CULTURE',					'ModifierId',	'BUILDING_STAVE_CHURCH_COAST_CULTURE_MODIFIER'),
	('BUILDING_STAVE_CHURCH_COAST_FAITH_MODIFIER',			'YieldType',	'YIELD_FAITH'),
	('BUILDING_STAVE_CHURCH_COAST_FAITH_MODIFIER',			'Amount',		2),
	('BUILDING_STAVE_CHURCH_COAST_CULTURE_MODIFIER',		'YieldType',	'YIELD_CULTURE'),
	('BUILDING_STAVE_CHURCH_COAST_CULTURE_MODIFIER',		'Amount',		2),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH',					'ModifierId',	'BUILDING_STAVE_CHURCH_EXTRA_FAITH_ATTACH'),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE',					'ModifierId',	'BUILDING_STAVE_CHURCH_EXTRA_CULTURE_ATTACH'),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_ATTACH',			'ModifierId',	'BUILDING_STAVE_CHURCH_EXTRA_FAITH_MODIFIER'),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_ATTACH',			'ModifierId',	'BUILDING_STAVE_CHURCH_EXTRA_CULTURE_MODIFIER'),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_MODIFIER',			'YieldType',	'YIELD_FAITH'),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_MODIFIER',			'Amount',		2),
	('BUILDING_STAVE_CHURCH_EXTRA_FAITH_MODIFIER',			'BuildingType',	'BUILDING_STAVE_CHURCH'),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_MODIFIER',		'YieldType',	'YIELD_CULTURE'),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_MODIFIER',		'Amount',		2),
	('BUILDING_STAVE_CHURCH_EXTRA_CULTURE_MODIFIER',		'BuildingType',	'BUILDING_STAVE_CHURCH'),
	('BUILDING_STAVE_CHURCH_FISHING_BOATS_EXTRA_GOLD',		'Amount',		3),
	('BUILDING_STAVE_CHURCH_FISHING_BOATS_EXTRA_GOLD',		'YieldType',	'YIELD_GOLD');

------------------------------------------------------------------
-- 阿拉伯
insert or replace into TraitModifiers
	(TraitType,								    ModifierId)
values
	('TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH',	    'HD_RIGHTEOUSNESS_OF_FAITH_HOLY_SITE_4');

insert or replace into Modifiers
	(ModifierId,							    ModifierType,										    SubjectRequirementSetId)
values
	('HD_RIGHTEOUSNESS_OF_FAITH_HOLY_SITE_4',   'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',    'CITY_HAS_DISTRICT_HOLY_SITE_TIER_4_BUILDING_REQUIREMENTS');

insert or replace into ModifierArguments
	(ModifierId,								Name,			Value)
values
	('HD_RIGHTEOUSNESS_OF_FAITH_HOLY_SITE_4',	'YieldType',	'YIELD_SCIENCE,YIELD_CULTURE'),
	('HD_RIGHTEOUSNESS_OF_FAITH_HOLY_SITE_4',	'Amount',		'5,5');