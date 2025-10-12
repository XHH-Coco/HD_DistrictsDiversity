----------------------------
-- JNR 社区拓展适配 by xhh --
----------------------------

-- 建筑本体修改
--------------------------------------------------------------
  -- 基础产出
insert or replace into Building_YieldChanges
	(BuildingType,						          YieldType,				      YieldChange)
values
  ('BUILDING_JNR_TRANSIT_HUB',        'YIELD_GOLD',           6),
  ('BUILDING_JNR_RECYCLING_PLANT',    'YIELD_PRODUCTION',     2),
  ('BUILDING_JNR_HOSPITAL',           'YIELD_SCIENCE',        2),
  ('BUILDING_JNR_ART_GALLERY',        'YIELD_CULTURE',        2),
  ('BUILDING_JNR_MEDITATION',         'YIELD_GOLD',           6);

	-- 通电产出
insert or replace into Building_YieldChangesBonusWithPower
	(BuildingType,						          YieldType,				      YieldChange)
values
  ('BUILDING_JNR_TRANSIT_HUB',        'YIELD_GOLD',           6),
  ('BUILDING_JNR_RECYCLING_PLANT',    'YIELD_PRODUCTION',     2),
  ('BUILDING_JNR_HOSPITAL',           'YIELD_SCIENCE',        2),
  ('BUILDING_JNR_ART_GALLERY',        'YIELD_CULTURE',        2),
  ('BUILDING_JNR_MEDITATION',         'YIELD_GOLD',           6);

	-- 巨作槽位
insert or replace into Building_GreatWorks
	(BuildingType,						      GreatWorkSlotType,					  NumSlots)
values
	('BUILDING_JNR_ART_GALLERY',		'GREATWORKSLOT_WRITING',			1),
  ('BUILDING_JNR_ART_GALLERY',		'GREATWORKSLOT_ART',			    1),
  ('BUILDING_JNR_ART_GALLERY',		'GREATWORKSLOT_MUSIC',			  1);

  -- 专家产出
insert or replace into Building_CitizenYieldChanges
	(BuildingType,							      YieldType,							YieldChange)
values
	('BUILDING_JNR_TRANSIT_HUB',			'YIELD_GOLD',						6),
	('BUILDING_JNR_RECYCLING_PLANT',	'YIELD_PRODUCTION',			2),
	('BUILDING_JNR_HOSPITAL',				  'YIELD_SCIENCE',				2),
	('BUILDING_JNR_ART_GALLERY',		  'YIELD_CULTURE',				2),
	('BUILDING_JNR_MEDITATION',		    'YIELD_GOLD',						6);
--------------------------------------------------------------

-- 建筑特效修改
--------------------------------------------------------------
insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
values
  ('BUILDING_JNR_TRANSIT_HUB',        'HD_JNR_TRANSIT_HUB_CIVILIAN_MOVE'),

  ('BUILDING_JNR_HOSPITAL',           'HD_JNR_HOSPITAL_UNIT_HEAL'),
  ('BUILDING_JNR_HOSPITAL',           'HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_1'),
  ('BUILDING_JNR_HOSPITAL',           'HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_2'),
  ('BUILDING_JNR_HOSPITAL',           'HD_JNR_HOSPITAL_SET_PROPERTY'),
  
  ('BUILDING_JNR_RECYCLING_PLANT',    'HD_JNR_RECYCLING_PLANT_APPEAL'),
  ('BUILDING_JNR_RECYCLING_PLANT',    'HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_1'),
  ('BUILDING_JNR_RECYCLING_PLANT',    'HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_2'),
  ('BUILDING_JNR_RECYCLING_PLANT',    'HD_JNR_RECYCLING_PLANT_SET_PROPERTY'),

  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_PLAYER_WRITER_GPP'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_PLAYER_ARTIST_GPP'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_PLAYER_MUSICIAN_GPP'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_WRITING_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_SCULPTURE_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_PORTRAIT_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_MUSIC_TOURISM'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_WRITING_CULTURE'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_SCULPTURE_CULTURE'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_PORTRAIT_CULTURE'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_CULTURE'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_CULTURE'),
  ('BUILDING_JNR_ART_GALLERY',        'HD_JNR_ART_GALLERY_CITIES_MUSIC_CULTURE'),

  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_WONDER_BONUS'),
  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_IMPROVEMENT_BONUS_1'),
  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_IMPROVEMENT_BONUS_2'),
  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_CITIES_WONDER_TOURISM'),
  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_CITIES_NATIONALPARK_TOURISM'),
  ('BUILDING_JNR_MEDITATION',         'HD_JNR_MEDITATION_CITIES_IMPROVEMENT_TOURISM');

insert or replace into Modifiers
	(ModifierId,									                      ModifierType,												                        OwnerRequirementSetId,                                       SubjectRequirementSetId,							SubjectStackLimit)
values
  -- 客运中心
  ('HD_JNR_TRANSIT_HUB_CIVILIAN_MOVE',                'MODIFIER_SINGLE_CITY_GRANT_ABILITY_FOR_TRAINED_UNITS',     Null,                                                        'UNIT_IS_CIVILIAN_CLASS',            Null),
  
  -- 医院
  ('HD_JNR_HOSPITAL_UNIT_HEAL',                       'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN',               Null,                                                        'OBJECT_IS_AT_OR_ADJACENT',          Null),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_1',  'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       Null,                                                        Null,                                Null),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_2',  'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       'PLAYER_HAS_TECH_MEDICAL_SCIENCE_HD_REQUIREMENTS',           Null,                                Null),
  ('HD_JNR_HOSPITAL_SET_PROPERTY',                    'MODIFIER_PLAYER_ADJUST_PROPERTY',                          Null,                                                        Null,                                Null),
  
  -- 垃圾回收中心
  ('HD_JNR_RECYCLING_PLANT_APPEAL',                   'MODIFIER_SINGLE_CITY_ADJUST_CITY_APPEAL',                  Null,                                                        Null,                                Null),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_1',  'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       Null,                                                        Null,                                Null),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_2',  'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       'PLAYER_HAS_TECH_INDUSTRIAL_AUTOMATION_HD_REQUIREMENTS',     Null,                                Null),
  ('HD_JNR_RECYCLING_PLANT_SET_PROPERTY',             'MODIFIER_SINGLE_CITY_ADJUST_PROPERTY',                     Null,                                                        Null,                                Null),
    
  -- 艺术街区
  ('HD_JNR_ART_GALLERY_PLAYER_WRITER_GPP',            'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       Null,                       Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_PLAYER_ARTIST_GPP',            'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       Null,                       Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_PLAYER_MUSICIAN_GPP',          'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',       Null,                       Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_TOURISM',       'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_TOURISM',     'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_TOURISM',      'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_TOURISM',     'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_TOURISM',     'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_TOURISM',         'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_CULTURE',       'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_CULTURE',     'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_CULTURE',      'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_CULTURE',     'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_CULTURE',     'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_CULTURE',         'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',            'CITY_IS_POWERED',          Null,                                                           Null),

  -- 房车营地
  ('HD_JNR_MEDITATION_WONDER_BONUS',                  'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_YIELD_CHANGE',        Null,                       Null,                                                           Null),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_1',           'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',                        Null,                       'HD_IMPROVEMENT_CHARMING_APPEAL_REQUIREMENTS',                  Null),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_2',           'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',                        Null,                       'HD_IMPROVEMENT_BREATHTAKING_APPEAL_REQUIREMENTS',              Null),
  ('HD_JNR_MEDITATION_CITIES_WONDER_TOURISM',         'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',                    'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_MEDITATION_CITIES_NATIONALPARK_TOURISM',   'MODIFIER_PLAYER_CITIES_ADJUST_NATIONAL_PARK_TOURISM',      'CITY_IS_POWERED',          Null,                                                           Null),
  ('HD_JNR_MEDITATION_CITIES_IMPROVEMENT_TOURISM',    'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_TOURISM',        'CITY_IS_POWERED',          Null,                                                           Null);

update Modifiers set Permanent = 1 where ModifierId = 'HD_JNR_TRANSIT_HUB_CIVILIAN_MOVE';

insert or replace into ModifierArguments
	(ModifierId,									                      Name,						            Value)
values
  -- 客运中心
  ('HD_JNR_TRANSIT_HUB_CIVILIAN_MOVE',                'AbilityType',              'ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE'),
  
  -- 医院
  ('HD_JNR_HOSPITAL_UNIT_HEAL',                       'Amount',                   20),
  ('HD_JNR_HOSPITAL_UNIT_HEAL',                       'Type',                     'ALL'),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_1',  'GreatPersonClassType',     'GREAT_PERSON_CLASS_SCIENTIST'),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_1',  'Amount',                   10),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_2',  'GreatPersonClassType',     'GREAT_PERSON_CLASS_SCIENTIST'),
  ('HD_JNR_HOSPITAL_EXTRA_GREAT_SCIENTIST_POINTS_2',  'Amount',                   10),
  ('HD_JNR_HOSPITAL_SET_PROPERTY',                    'Key',                      'HD_PLAYER_HAS_JNR_HOSPITAL'),
  ('HD_JNR_HOSPITAL_SET_PROPERTY',                    'Amount',                   1),
  
  -- 垃圾回收中心
  ('HD_JNR_RECYCLING_PLANT_APPEAL',                   'Amount',                   1),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_1',  'GreatPersonClassType',     'GREAT_PERSON_CLASS_ENGINEER'),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_1',  'Amount',                   10),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_2',  'GreatPersonClassType',     'GREAT_PERSON_CLASS_ENGINEER'),
  ('HD_JNR_RECYCLING_PLANT_GREAT_ENGINEER_POINTS_2',  'Amount',                   10),
  ('HD_JNR_RECYCLING_PLANT_SET_PROPERTY',             'Key',                      'HD_CITY_HAS_JNR_RECYCLING_PLANT'),
  ('HD_JNR_RECYCLING_PLANT_SET_PROPERTY',             'Amount',                   1),
  
  -- 艺术街区
  ('HD_JNR_ART_GALLERY_PLAYER_WRITER_GPP',            'Amount',                   10),
  ('HD_JNR_ART_GALLERY_PLAYER_WRITER_GPP',            'GreatPersonClassType',     'GREAT_PERSON_CLASS_WRITER'),
  ('HD_JNR_ART_GALLERY_PLAYER_ARTIST_GPP',            'Amount',                   10),
  ('HD_JNR_ART_GALLERY_PLAYER_ARTIST_GPP',            'GreatPersonClassType',     'GREAT_PERSON_CLASS_ARTIST'),
  ('HD_JNR_ART_GALLERY_PLAYER_MUSICIAN_GPP',          'Amount',                   10),
  ('HD_JNR_ART_GALLERY_PLAYER_MUSICIAN_GPP',          'GreatPersonClassType',     'GREAT_PERSON_CLASS_MUSICIAN'),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_TOURISM',       'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_TOURISM',       'GreatWorkObjectType',      'GREATWORKOBJECT_WRITING'),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_TOURISM',     'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_TOURISM',     'GreatWorkObjectType',      'GREATWORKOBJECT_SCULPTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_TOURISM',      'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_TOURISM',      'GreatWorkObjectType',      'GREATWORKOBJECT_PORTRAIT'),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_TOURISM',     'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_TOURISM',     'GreatWorkObjectType',      'GREATWORKOBJECT_LANDSCAPE'),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_TOURISM',     'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_TOURISM',     'GreatWorkObjectType',      'GREATWORKOBJECT_RELIGIOUS'),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_TOURISM',         'ScalingFactor',            300),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_TOURISM',         'GreatWorkObjectType',      'GREATWORKOBJECT_MUSIC'),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_CULTURE',       'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_CULTURE',       'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_WRITING_CULTURE',       'GreatWorkObjectType',      'GREATWORKOBJECT_WRITING'),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_CULTURE',     'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_CULTURE',     'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_SCULPTURE_CULTURE',     'GreatWorkObjectType',      'GREATWORKOBJECT_SCULPTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_CULTURE',      'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_CULTURE',      'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_PORTRAIT_CULTURE',      'GreatWorkObjectType',      'GREATWORKOBJECT_PORTRAIT'),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_CULTURE',     'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_CULTURE',     'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_LANDSCAPE_CULTURE',     'GreatWorkObjectType',      'GREATWORKOBJECT_LANDSCAPE'),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_CULTURE',     'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_CULTURE',     'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_RELIGIOUS_CULTURE',     'GreatWorkObjectType',      'GREATWORKOBJECT_RELIGIOUS'),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_CULTURE',         'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_CULTURE',         'ScalingFactor',            125),
  ('HD_JNR_ART_GALLERY_CITIES_MUSIC_CULTURE',         'GreatWorkObjectType',      'GREATWORKOBJECT_MUSIC'),
  
  -- 房车营地
  ('HD_JNR_MEDITATION_WONDER_BONUS',                  'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_MEDITATION_WONDER_BONUS',                  'Amount',                   1),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_1',           'YieldType',                'YIELD_GOLD'),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_1',           'Amount',                   3),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_2',           'YieldType',                'YIELD_CULTURE'),
  ('HD_JNR_MEDITATION_IMPROVEMENT_BONUS_2',           'Amount',                   1),
  ('HD_JNR_MEDITATION_CITIES_WONDER_TOURISM',         'BoostsWonders',            1),
  ('HD_JNR_MEDITATION_CITIES_WONDER_TOURISM',         'ScalingFactor',            300),
  ('HD_JNR_MEDITATION_CITIES_NATIONALPARK_TOURISM',   'Amount',                   200),
  ('HD_JNR_MEDITATION_CITIES_IMPROVEMENT_TOURISM',    'Amount',                   200);

  -- 能力
insert or ignore into Types (Type, Kind) values
  ('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE', 'KIND_ABILITY');

insert or replace into UnitAbilities (UnitAbilityType, Name, Description, Inactive) values
	('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE', 'LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_NAME', 'LOC_ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_DESCRIPTION', 1);

insert or replace into UnitAbilityModifiers (UnitAbilityType, ModifierId) values
  ('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE', 'ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_MODIFIER');

insert or replace into Modifiers (ModifierId, ModifierType, Permanent) values
	('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_MODIFIER', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 1);

insert or replace into ModifierArguments (ModifierId, Name, Value) values
	('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE_MODIFIER', 'Amount', 2);

insert or replace into TypeTags (Type, Tag) values
	('ABILITY_JNR_TRANSIT_HUB_CIVILIAN_MOVE', 'CLASS_LANDCIVILIAN');

-- 客运中心
insert or replace into BuildingModifiers(BuildingType, ModifierId) select
  a.BuildingType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY'
from HD_Building_Classification a, DistrictCorrespondingYieldType_HD b
  where a.BuildingClassificationType = 'BUILDING_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into DistrictModifiers(DistrictType, ModifierId) select
  a.DistrictType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY'
from HD_District_Classification a, DistrictCorrespondingYieldType_HD b
  where a.DistrictClassificationType = 'DISTRICT_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into ImprovementModifiers(ImprovementType, ModifierId) select
  a.ImprovementType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY'
from HD_Improvement_Classification a, DistrictCorrespondingYieldType_HD b
  where a.ImprovementClassificationType = 'IMPROVEMENT_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId, SubjectStackLimit) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_MODIFIER', 'PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB_REQUIREMENTS', 'HD_DISTRICT_IS_' || DistrictType || '_ADJACENT', 1
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

insert or replace into ModifierArguments (ModifierId, Name, Value) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY', 'YieldType', YieldType
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

insert or replace into ModifierArguments (ModifierId, Name, Value) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY', 'Amount', 50
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

  -- 现代化交通 后
insert or replace into BuildingModifiers(BuildingType, ModifierId) select
  a.BuildingType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY_LATE'
from HD_Building_Classification a, DistrictCorrespondingYieldType_HD b
  where a.BuildingClassificationType = 'BUILDING_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into DistrictModifiers(DistrictType, ModifierId) select
  a.DistrictType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY_LATE'
from HD_District_Classification a, DistrictCorrespondingYieldType_HD b
  where a.DistrictClassificationType = 'DISTRICT_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into ImprovementModifiers(ImprovementType, ModifierId) select
  a.ImprovementType, 'HD_TRANSIT_HUB_' || b.DistrictType || '_ADJACENCY_LATE'
from HD_Improvement_Classification a, DistrictCorrespondingYieldType_HD b
  where a.ImprovementClassificationType = 'IMPROVEMENT_CLASSIFICATION_TRANSPORTATION_FACILITIES' and b.HasAdjacency = 1;

insert or replace into Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId, SubjectStackLimit) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY_LATE', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_MODIFIER', 'PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB_AND_TECH_MODERN_TRAFFIC_HD_REQUIREMENTS', 'HD_DISTRICT_IS_' || DistrictType || '_ADJACENT', 1
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

insert or replace into ModifierArguments (ModifierId, Name, Value) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY_LATE', 'YieldType', YieldType
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

insert or replace into ModifierArguments (ModifierId, Name, Value) select
  'HD_TRANSIT_HUB_' || DistrictType || '_ADJACENCY_LATE', 'Amount', 50
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

-------------------------------------------------------------- 
insert or replace into GlobalParameters (Name, Value) values
  -- 中心医院
	('HD_JNR_HOSPITAL_PREVENT_POP_LOST_CHANCE',         0.75),
	('HD_JNR_HOSPITAL_EXTRA_POP_BOOST_CHANCE', 	        0.25),
  -- 垃圾回收中心回收效率
  ('RECYCLING_PLANT_PRODUCTION_PERCENT',              200),
  ('RECYCLING_PLANT_RESOURCE_HORSES_MULTIPLIER',      10),
  ('RECYCLING_PLANT_RESOURCE_IRON_MULTIPLIER',        15),
  ('RECYCLING_PLANT_RESOURCE_NITER_MULTIPLIER',       20),
  ('RECYCLING_PLANT_RESOURCE_COAL_MULTIPLIER',        50),
  ('RECYCLING_PLANT_RESOURCE_OIL_MULTIPLIER',         100),
  ('RECYCLING_PLANT_RESOURCE_ALUMINUM_MULTIPLIER',    200),
  ('RECYCLING_PLANT_RESOURCE_URANIUM_MULTIPLIER',     500);

-- 尤里卡与鼓舞
update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', BoostingCivicType = null, NumItems = 1, BuildingType = 'BUILDING_JNR_HOSPITAL',
  TriggerDescription = 'LOC_BOOST_TRIGGER_MEDICAL_SCIENCE_HD_JNR', TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_MEDICAL_SCIENCE_HD_JNR'
where TechnologyType = 'TECH_MEDICAL_SCIENCE_HD';

update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 1, BuildingType = 'BUILDING_JNR_MEDITATION',
  TriggerDescription = 'LOC_BOOST_TRIGGER_VIRTUAL_REALITY_HD_JNR', TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_VIRTUAL_REALITY_HD_JNR'
where TechnologyType = 'TECH_VIRTUAL_REALITY_HD';

update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 1, BuildingType = 'BUILDING_JNR_RECYCLING_PLANT',
  TriggerDescription = 'LOC_BOOST_TRIGGER_INDUSTRIAL_AUTOMATION_HD_JNR', TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_INDUSTRIAL_AUTOMATION_HD_JNR'
where TechnologyType = 'TECH_INDUSTRIAL_AUTOMATION_HD';

update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 1, BuildingType = 'BUILDING_JNR_ART_GALLERY',
  TriggerDescription = 'LOC_BOOST_TRIGGER_MODERNISM_HD_JNR'
where CivicType = 'CIVIC_MODERNISM_HD';

-----------------------------------------------------------------
-- 政策
insert or replace into Types
	(Type,									              Kind)
values
	('POLICY_HD_PUBLIC_MEDICAL_SYSTEM',   'KIND_POLICY');

insert or replace into Policies
	(PolicyType, Name, Description, PrereqCivic, PrereqTech, GovernmentSlotType)
values
	('POLICY_HD_PUBLIC_MEDICAL_SYSTEM',
  'LOC_POLICY_HD_PUBLIC_MEDICAL_SYSTEM_NAME',
  'LOC_POLICY_HD_PUBLIC_MEDICAL_SYSTEM_DESCRIPTION',
  null,
  'TECH_MEDICAL_SCIENCE_HD',
  'SLOT_ECONOMIC');

insert or replace into PolicyModifiers
	(PolicyType,								          ModifierId)
values
  ('POLICY_HD_PUBLIC_MEDICAL_SYSTEM',   'HD_PUBLIC_MEDICAL_SYSTEM_GOLD_DEBUFF'),
  ('POLICY_HD_PUBLIC_MEDICAL_SYSTEM',   'HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH'),
  ('POLICY_HD_PUBLIC_MEDICAL_SYSTEM',   'HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY');

insert or replace into Modifiers
	(ModifierId,											            ModifierType,															              SubjectRequirementSetId)
values
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_DEBUFF',      'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',    'CITY_HAS_BUILDING_JNR_HOSPITAL_REQUIREMENTS'),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH',      'MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',            'HD_PLOT_HAS_BUILDING_JNR_HOSPITAL_REQUIREMENTS'),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY',     'MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',            'HD_PLOT_HAS_BUILDING_JNR_HOSPITAL_REQUIREMENTS');

insert or replace into Modifiers
	(ModifierId,																			ModifierType,																	  SubjectRequirementSetId,		SubjectStackLimit)
values
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH_MODIFIER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_GROWTH',    'HD_OBJECT_WITHIN_6_TILES', 1),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY_MODIFIER','MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY', 'HD_OBJECT_WITHIN_6_TILES', 1);

insert or replace into ModifierArguments
	(ModifierId,															          Name,							Value)
values
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_DEBUFF',            'YieldType',      'YIELD_GOLD'),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_DEBUFF',            'Amount',         -30),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH',            'ModifierId',     'HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH_MODIFIER'),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY',           'ModifierId',     'HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY_MODIFIER'),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_GROWTH_MODIFIER',   'Amount',         20),
  ('HD_PUBLIC_MEDICAL_SYSTEM_GOLD_AMENITY_MODIFIER',  'Amount',         2);

-- Reqs
insert or ignore into RequirementSets (RequirementSetId, RequirementSetType) values
  ('PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB_AND_TECH_MODERN_TRAFFIC_HD_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

insert or ignore into RequirementSetRequirements (RequirementSetId, RequirementId) values
  ('PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB_AND_TECH_MODERN_TRAFFIC_HD_REQUIREMENTS', 'REQUIRES_PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB'),
  ('PLAYER_HAS_BUILDING_JNR_TRANSIT_HUB_AND_TECH_MODERN_TRAFFIC_HD_REQUIREMENTS', 'HD_REQUIRES_PLAYER_HAS_TECH_MODERN_TRAFFIC_HD');