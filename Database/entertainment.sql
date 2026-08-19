----------------------------
-- JNR 娱乐拓展适配 by xhh --
----------------------------

-- 建筑本体修改
--------------------------------------------------------------
	-- 基本信息
update Buildings set PrereqCivic = 'CIVIC_GAMES_RECREATION',		PrereqTech = Null,							Maintenance = 1,		Cost = 160,	Entertainment=1,	RegionalRange=4,	CitizenSlots = Null, Description = 'LOC_BUILDING_ARENA_HD_DESCRIPTION' where BuildingType = 'BUILDING_ARENA';
update Buildings set PrereqCivic = 'CIVIC_GAMES_RECREATION',		PrereqTech = Null,							Maintenance = 1,		Cost = 160,	Entertainment=1,	RegionalRange=5,	CitizenSlots = Null, Description = 'LOC_BUILDING_TLACHTLI_HD_DESCRIPTION' where BuildingType = 'BUILDING_TLACHTLI';
update Buildings set PrereqCivic = 'CIVIC_COMMERCIAL_CAPITALISM_HD', PrereqTech = Null,							Maintenance = 4,		Cost = 300,	Entertainment=2,	RegionalRange=0,	CitizenSlots = Null where BuildingType = 'BUILDING_ZOO';
update Buildings set Description = 'LOC_BUILDING_THERMAL_BATH_DESCRIPTION_UC_JNR' where BuildingType = 'BUILDING_THERMAL_BATH';
update Buildings set PrereqCivic = 'CIVIC_PROFESSIONAL_SPORTS',		PrereqTech = Null,							Maintenance = 12,		Cost = 650,	Entertainment=2,	RegionalRange=6,	CitizenSlots = Null,	Description = 'LOC_BUILDING_STADIUM_DESCRIPTION_UC_JNR'					where BuildingType = 'BUILDING_STADIUM';
update Buildings set PrereqCivic = NULL,							PrereqTech = 'TECH_SQUARE_RIGGING',			Maintenance = 1,		Cost = 220,	Entertainment=2,	RegionalRange=6,	CitizenSlots = Null,	Description = 'LOC_BUILDING_FERRIS_WHEEL_DESCRIPTION_UC_JNR'			where BuildingType = 'BUILDING_FERRIS_WHEEL';
update Buildings set PrereqCivic = NULL,							PrereqTech = 'TECH_OCEANOGRAPHY_HD',			Maintenance = 4,		Cost = 300,	Entertainment=2,	RegionalRange=0,	CitizenSlots = Null where BuildingType = 'BUILDING_AQUARIUM';
update Buildings set PrereqCivic = 'CIVIC_PROFESSIONAL_SPORTS',		PrereqTech = Null,							Maintenance = 12,		Cost = 650,	Entertainment=2,	RegionalRange=6,	CitizenSlots = Null,	Description = 'LOC_BUILDING_AQUATICS_CENTER_DESCRIPTION_UC_JNR'			where BuildingType = 'BUILDING_AQUATICS_CENTER';

update Boosts set TriggerDescription = 'LOC_BOOST_TRIGGER_BIOLOGY_HD_JNR', TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_BIOLOGY_HD_JNR' where TechnologyType = 'TECH_BIOLOGY_HD';

update Buildings set Description = 'LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION_PRODUCT' where BuildingType = 'BUILDING_JNR_THEME_PARK'
	and exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');
update Buildings set Description = 'LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION_PRODUCT' where BuildingType = 'BUILDING_JNR_FOOD_COURT'
	and exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');
	-- 基础产出
update Building_YieldChanges set YieldChange = 12, YieldType = 'YIELD_GOLD' where BuildingType = 'BUILDING_FERRIS_WHEEL';

insert or replace into Building_YieldChanges
	(BuildingType,						YieldType,				YieldChange)
values
	('BUILDING_JNR_TOURNEY',			'YIELD_CULTURE',		2),
	('BUILDING_JNR_TOURNEY',			'YIELD_GOLD',			3),
	('BUILDING_JNR_BOTANICAL_GARDEN',	'YIELD_SCIENCE',		2),
	('BUILDING_JNR_BOTANICAL_GARDEN',	'YIELD_GOLD',		6),

	('BUILDING_JNR_MARINA',			'YIELD_GOLD',			12),
	('BUILDING_JNR_CASINO',		'YIELD_GOLD',			12);

insert or replace into Building_GreatPersonPoints
	(BuildingType,							GreatPersonClassType,							PointsPerTurn)
values
	('BUILDING_JNR_TOURNEY',		'GREAT_PERSON_CLASS_MUSICIAN',		2),
	('BUILDING_JNR_MARINA',		'GREAT_PERSON_CLASS_MUSICIAN',		2);

insert or replace into Building_GreatWorks
	(BuildingType,							GreatWorkSlotType,						NumSlots)
values
	('BUILDING_JNR_TOURNEY',		'GREATWORKSLOT_MUSIC',				2),
	('BUILDING_JNR_MARINA',		'GREATWORKSLOT_MUSIC',			  2);
	
	-- 通电产出
update Buildings_XP2 set RequiredPower = 5, EntertainmentBonusWithPower = 1 where BuildingType = 'BUILDING_STADIUM';
update Buildings_XP2 set RequiredPower = 5, EntertainmentBonusWithPower = 1 where BuildingType = 'BUILDING_AQUATICS_CENTER';

insert or ignore into Buildings_XP2
	(BuildingType,						RequiredPower,	EntertainmentBonusWithPower)
values
	('BUILDING_JNR_THEME_PARK',			3,				1),
	('BUILDING_JNR_FOOD_COURT',			3,				1);

	-- 巨作槽位
insert or replace into Building_GreatWorks
	(BuildingType,							GreatWorkSlotType,					NumSlots)
select
	'BUILDING_JNR_THEME_PARK',				'GREATWORKSLOT_PRODUCT',			2
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Building_GreatWorks
	(BuildingType,							GreatWorkSlotType,					NumSlots)
select
	'BUILDING_JNR_FOOD_COURT',				'GREATWORKSLOT_PRODUCT',			2
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

--------------------------------------------------------------

-- 建筑特效修改
--------------------------------------------------------------
delete from BuildingModifiers where BuildingType = 'BUILDING_STADIUM' or BuildingType = 'BUILDING_FERRIS_WHEEL' or BuildingType = 'BUILDING_AQUATICS_CENTER';

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
values
	('BUILDING_JNR_TOURNEY',			'TOURNEY_EXTRA_AMENIYT'),

	('BUILDING_JNR_THEME_PARK',			'THEME_PARK_WONDER_YIELD'),
	('BUILDING_JNR_THEME_PARK',			'THEME_PARK_WONDER_YIELD_POWERED'),
	('BUILDING_JNR_THEME_PARK',			'THEME_PARK_WONDER_YIELD2'),
	('BUILDING_JNR_THEME_PARK',			'THEME_PARK_WONDER_YIELD_POWERED2'),

	('BUILDING_FERRIS_WHEEL',				'MARINA_COSTAL_DISTRICT_GOLD'),
	('BUILDING_FERRIS_WHEEL',				'MARINA_COSTAL_WONDER_GOLD'),
	('BUILDING_FERRIS_WHEEL',				'MARINA_BEACH_TOURISM'),
	('BUILDING_FERRIS_WHEEL',				'MARINA_COSTAL_IMPROVEMENT_GOLD'),

	('BUILDING_JNR_MARINA',				'MARINA_COSTAL_DISTRICT_MUSICIAN_POINTS'),
	('BUILDING_JNR_MARINA',				'MARINA_COSTAL_WONDER_MUSICIAN_POINTS'),
	('BUILDING_JNR_MARINA',				'MARINA_MUSIC_TOURISM'),

	('BUILDING_JNR_CASINO',				'CASINO_WONDER_YIELD'),
	('BUILDING_JNR_CASINO',				'CASINO_WONDER_YIELD2'),

	('BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_LUXURY_AMENITY'),
	('BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_LUXURY_AMENITY_POWERED'),
	('BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_RESOURCE_GOLD'),
	('BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_RESOURCE_GOLD_POWERED');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
values
	('TOURNEY_EXTRA_AMENIYT',							'MODIFIER_ADJUST_AMENITIES_IN_DISTRICT',				'PLOT_BREATHTAKING_APPEAL'),
	
	('THEME_PARK_WONDER_YIELD',						'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),
	('THEME_PARK_WONDER_YIELD_POWERED',				'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),
	('THEME_PARK_WONDER_YIELD2',					'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),
	('THEME_PARK_WONDER_YIELD_POWERED2',			'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),

	('MARINA_COSTAL_DISTRICT_GOLD',					'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',							'NOT_WONDER_IS_OR_ADJACENT_TO_COAST'),
	('MARINA_COSTAL_WONDER_GOLD',					'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',							'WONDER_IS_OR_ADJACENT_TO_COAST'),
	('MARINA_BEACH_TOURISM',						'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('MARINA_COSTAL_IMPROVEMENT_GOLD',						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',									'PLOT_HAS_IMPROVEMENT_IS_OR_ADJACENT_TO_COAST'),

	('MARINA_COSTAL_DISTRICT_MUSICIAN_POINTS',					'MODIFIER_CITY_DISTRICTS_ATTACH_MODIFIER',							'NOT_WONDER_IS_OR_ADJACENT_TO_COAST'),
	('MARINA_COSTAL_WONDER_MUSICIAN_POINTS',					'MODIFIER_CITY_DISTRICTS_ATTACH_MODIFIER',							'WONDER_IS_OR_ADJACENT_TO_COAST'),
	('MARINA_EXTRA_GREAT_MUSICIAN_PONITS',					'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',							Null),
	('MARINA_MUSIC_TOURISM',										'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',							Null),

	('CASINO_WONDER_YIELD',							'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),
	('CASINO_WONDER_YIELD2',						'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',						Null),
	('HD_CASINO_WONDER_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									'CITY_HAS_BUILDING_JNR_CASINO_REQUIREMENTS'),

	('FOOD_COURT_LUXURY_AMENITY',					'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_AMENITY_FOR_LUXURY_DIVERSITY',		Null),
	('FOOD_COURT_LUXURY_AMENITY_POWERED',			'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_AMENITY_FOR_LUXURY_DIVERSITY',		Null),
	('FOOD_COURT_RESOURCE_GOLD',					'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_BY_NUMBER_RESOURCES',				Null),
	('FOOD_COURT_RESOURCE_GOLD_POWERED',			'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_BY_NUMBER_RESOURCES',				Null);

update Modifiers set OwnerRequirementSetId = 'CITY_IS_POWERED' where ModifierId like 'STADIUM_%_POWERED';
update Modifiers set OwnerRequirementSetId = 'CITY_IS_POWERED' where ModifierId = 'THEME_PARK_WONDER_YIELD_POWERED' or ModifierId = 'FOOD_COURT_LUXURY_AMENITY_POWERED' or ModifierId = 'FOOD_COURT_RESOURCE_GOLD_POWERED';

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
values
	('TOURNEY_EXTRA_AMENIYT',							'Amount',				1),

	('THEME_PARK_WONDER_YIELD',						'YieldType',				'YIELD_CULTURE'),
	('THEME_PARK_WONDER_YIELD',						'Amount',					3),
	('THEME_PARK_WONDER_YIELD_POWERED',				'YieldType',				'YIELD_CULTURE'),
	('THEME_PARK_WONDER_YIELD_POWERED',				'Amount',					3),
	('THEME_PARK_WONDER_YIELD2',					'YieldType',				'YIELD_GOLD'),
	('THEME_PARK_WONDER_YIELD2',					'Amount',					3),
	('THEME_PARK_WONDER_YIELD_POWERED2',			'YieldType',				'YIELD_GOLD'),
	('THEME_PARK_WONDER_YIELD_POWERED2',			'Amount',					3),
	
	('MARINA_COSTAL_DISTRICT_GOLD',					'YieldType',				'YIELD_GOLD'),
	('MARINA_COSTAL_DISTRICT_GOLD',					'Amount',					3),
	('MARINA_COSTAL_WONDER_GOLD',					'YieldType',				'YIELD_GOLD'),
	('MARINA_COSTAL_WONDER_GOLD',					'Amount',					3),
	('MARINA_BEACH_TOURISM',						'ImprovementType',			'IMPROVEMENT_BEACH_RESORT'),
	('MARINA_BEACH_TOURISM',						'ScalingFactor',			150),
	('MARINA_COSTAL_IMPROVEMENT_GOLD',					'YieldType',				'YIELD_GOLD'),
	('MARINA_COSTAL_IMPROVEMENT_GOLD',					'Amount',					3),

	('MARINA_COSTAL_DISTRICT_MUSICIAN_POINTS',					'ModifierId',				'MARINA_EXTRA_GREAT_MUSICIAN_PONITS'),
	('MARINA_COSTAL_WONDER_MUSICIAN_POINTS',					'ModifierId',				'MARINA_EXTRA_GREAT_MUSICIAN_PONITS'),
	('MARINA_EXTRA_GREAT_MUSICIAN_PONITS',					'GreatPersonClassType',				'GREAT_PERSON_CLASS_MUSICIAN'),
	('MARINA_EXTRA_GREAT_MUSICIAN_PONITS',					'Amount',				2),
	('MARINA_MUSIC_TOURISM',			'GreatWorkObjectType',			'GREATWORKOBJECT_MUSIC'),
	('MARINA_MUSIC_TOURISM',			'ScalingFactor',			150),

	('CASINO_WONDER_YIELD',							'YieldType',				'YIELD_CULTURE'),
	('CASINO_WONDER_YIELD',							'Amount',					1),
	('CASINO_WONDER_YIELD2',						'YieldType',				'YIELD_GOLD'),
	('CASINO_WONDER_YIELD2',						'Amount',					3),
	('HD_CASINO_WONDER_TOURISM',			'BoostsWonders',			1),
	('HD_CASINO_WONDER_TOURISM',			'ScalingFactor',			150),

	('FOOD_COURT_LUXURY_AMENITY',					'Amount',					1),
	('FOOD_COURT_LUXURY_AMENITY_POWERED',			'Amount',					1),
	('FOOD_COURT_RESOURCE_GOLD',					'YieldType',				'YIELD_GOLD'),
	('FOOD_COURT_RESOURCE_GOLD',					'Amount',					5),
	('FOOD_COURT_RESOURCE_GOLD_POWERED',			'YieldType',				'YIELD_GOLD'),
	('FOOD_COURT_RESOURCE_GOLD_POWERED',			'Amount',					5);

	-- 勾栏瓦舍
insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_TOURNEY',		'HD_TOURNEY_' || BuildingType || '_CULTURE'
from Buildings where PrereqDistrict = 'DISTRICT_CITY_CENTER' and BuildingType not in (select BuildingType from HD_DUMMY_BUILDINGS) and BuildingType not in (select CivUniqueBuildingType from BuildingReplaces);

insert or replace into Modifiers
	(ModifierId,																	ModifierType)
select
	'HD_TOURNEY_' || BuildingType || '_CULTURE',	'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD'
from Buildings where PrereqDistrict = 'DISTRICT_CITY_CENTER' and BuildingType not in (select BuildingType from HD_DUMMY_BUILDINGS) and BuildingType not in (select CivUniqueBuildingType from BuildingReplaces);

insert or replace into ModifierArguments
	(ModifierId,																	Name,						Value)
select
	'HD_TOURNEY_' || BuildingType || '_CULTURE',	'BuildingType', BuildingType
from Buildings where PrereqDistrict = 'DISTRICT_CITY_CENTER' and BuildingType not in (select BuildingType from HD_DUMMY_BUILDINGS) and BuildingType not in (select CivUniqueBuildingType from BuildingReplaces);

insert or replace into ModifierArguments
	(ModifierId,																	Name,						Value)
select
	'HD_TOURNEY_' || BuildingType || '_CULTURE',	'YieldType', 		'YIELD_CULTURE'
from Buildings where PrereqDistrict = 'DISTRICT_CITY_CENTER' and BuildingType not in (select BuildingType from HD_DUMMY_BUILDINGS) and BuildingType not in (select CivUniqueBuildingType from BuildingReplaces);

insert or replace into ModifierArguments
	(ModifierId,																	Name,						Value)
select
	'HD_TOURNEY_' || BuildingType || '_CULTURE',	'Amount', 			1
from Buildings where PrereqDistrict = 'DISTRICT_CITY_CENTER' and BuildingType not in (select BuildingType from HD_DUMMY_BUILDINGS) and BuildingType not in (select CivUniqueBuildingType from BuildingReplaces);

	-- 博览会
delete from BuildingModifiers where BuildingType = 'BUILDING_JNR_THEME_PARK'
	and exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_THEME_PARK',			'THEME_PARK_PRODUCT_CULTURE'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_THEME_PARK',			'THEME_PARK_PRODUCT_TOURISM'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_THEME_PARK',			'THEME_PARK_PRODUCT_TOURISM_POWERED'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
select
	'THEME_PARK_PRODUCT_CULTURE',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',							Null
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
select
	'THEME_PARK_PRODUCT_TOURISM',					'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															OwnerRequirementSetId)
select
	'THEME_PARK_PRODUCT_TOURISM_POWERED',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									'CITY_IS_POWERED'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_TOURISM',					'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_TOURISM',					'ScalingFactor',			125
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_TOURISM_POWERED',			'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_TOURISM_POWERED',			'ScalingFactor',			125
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_CULTURE',					'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_CULTURE',					'YieldType',				'YIELD_CULTURE'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'THEME_PARK_PRODUCT_CULTURE',					'YieldChange',				4
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

	-- 游客接待中心
insert or replace into BuildingModifiers(BuildingType, ModifierId) select
  BuildingType, 'HD_CASINO_WONDER_TOURISM'
from HD_Building_Classification where BuildingClassificationType = 'BUILDING_CLASSIFICATION_TRANSPORTATION';

insert or replace into DistrictModifiers(DistrictType, ModifierId) select
  DistrictType, 'HD_CASINO_WONDER_TOURISM'
from HD_District_Classification where DistrictClassificationType = 'DISTRICT_CLASSIFICATION_TRANSPORTATION';

insert or replace into ImprovementModifiers(ImprovementType, ModifierId) select
  ImprovementType, 'HD_CASINO_WONDER_TOURISM'
from HD_Improvement_Classification where ImprovementClassificationType = 'IMPROVEMENT_CLASSIFICATION_TRANSPOTATION';

	-- 体育场
insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_STADIUM',				'HD_STADIUM_' || DistrictType || '_BONUS_POWERED'
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into Modifiers
	(ModifierId,																				ModifierType,																	OwnerRequirementSetId,	SubjectRequirementSetId,		SubjectStackLimit)
select
	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED',	'MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'CITY_IS_POWERED',			'HD_OBJECT_WITHIN_6_TILES',	1
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into ModifierArguments
	(ModifierId,																						Name,					Value)
select
	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED',			'ModifierId',	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED_MODIFIER'
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into Modifiers
	(ModifierId,																									ModifierType,																							OwnerRequirementSetId)
select
	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED_MODIFIER',		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'REQUIRES_DISTRICT_IS_' || DistrictType || '_UDMET'
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into ModifierArguments
	(ModifierId,																									Name,						Value)
select
	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED_MODIFIER',		'YieldType',		YieldType
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into ModifierArguments
	(ModifierId,																									Name,						Value)
select
	'HD_STADIUM_' || DistrictType || '_BONUS_POWERED_MODIFIER',		'Amount',				Amount
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

	-- 水上运动中心
insert or replace into BuildingModifiers
	(BuildingType,									ModifierId)
select
	'BUILDING_AQUATICS_CENTER',			'HD_AQUATICS_CENTER_' || DistrictType || '_BONUS_POWERED'
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into Modifiers
	(ModifierId,																								ModifierType,																		OwnerRequirementSetId,																			SubjectRequirementSetId,							SubjectStackLimit)
select
	'HD_AQUATICS_CENTER_' || DistrictType || '_BONUS_POWERED',	'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',	'POWERED_CITY_HAS_' || DistrictType || '_REQUIREMENTS',			'NOT_WONDER_IS_OR_ADJACENT_TO_COAST',	1
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into ModifierArguments
	(ModifierId,																									Name,						Value)
select
	'HD_AQUATICS_CENTER_' || DistrictType || '_BONUS_POWERED',		'YieldType',		YieldType
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

insert or replace into ModifierArguments
	(ModifierId,																									Name,						Value)
select
	'HD_AQUATICS_CENTER_' || DistrictType || '_BONUS_POWERED',		'Amount',				Amount * 4
from DistrictCorrespondingYieldType_HD where RequiresPopulation = 1;

	-- 博览会
delete from BuildingModifiers where BuildingType = 'BUILDING_JNR_FOOD_COURT'
	and exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_PRODUCT_GOLD'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_PRODUCT_TOURISM'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_FOOD_COURT',			'FOOD_COURT_PRODUCT_TOURISM_POWERED'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
select
	'FOOD_COURT_PRODUCT_GOLD',						'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',							Null
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
select
	'FOOD_COURT_PRODUCT_TOURISM',					'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															OwnerRequirementSetId)
select
	'FOOD_COURT_PRODUCT_TOURISM_POWERED',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									'CITY_IS_POWERED'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_TOURISM',					'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_TOURISM',					'ScalingFactor',			125
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_TOURISM_POWERED',			'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_TOURISM_POWERED',			'ScalingFactor',			125
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_GOLD',						'GreatWorkObjectType',		'GREATWORKOBJECT_PRODUCT'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_GOLD',						'YieldType',				'YIELD_GOLD'
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
select
	'FOOD_COURT_PRODUCT_GOLD',						'YieldChange',				8
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

-- 植物园
insert or replace into HD_Building_Base_On_ResourceClassification (BuildingType, ResourceClassificationType, DetectRange, PropertyKey) values
	('BUILDING_JNR_BOTANICAL_GARDEN', 	'RESOURCE_CLASSIFICATION_HD_CROPS',					'PLAYER', 'HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN'),
	('BUILDING_JNR_BOTANICAL_GARDEN', 	'RESOURCE_CLASSIFICATION_HD_FRUIT',					'PLAYER', 'HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN'),
	('BUILDING_JNR_BOTANICAL_GARDEN', 	'RESOURCE_CLASSIFICATION_HD_ORNAMENTAL',		'PLAYER',	'HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN');

insert or replace into HD_Binary_Compress_Keys (Key, MaxExp) values
	('HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN', 	4);

insert or replace into BuildingModifiers (BuildingType, ModifierId)
	select 'BUILDING_JNR_BOTANICAL_GARDEN', 'HD_BOTANICAL_GARDEN_SCIENCE_' || Exp
	from HD_Binary_Compress where Exp < 5;

insert or replace into Modifiers (ModifierId, ModifierType, OwnerRequirementSetId)
	select 'HD_BOTANICAL_GARDEN_SCIENCE_' || Exp, 'MODIFIER_BUILDING_YIELD_CHANGE', 'HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN_' || Exp || '_REQUIREMENTS'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_SCIENCE_' || Exp, 'BuildingType', 'BUILDING_JNR_BOTANICAL_GARDEN'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_SCIENCE_' || Exp, 'YieldType', 'YIELD_SCIENCE'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_SCIENCE_' || Exp, 'Amount', Amount * 1
	from HD_Binary_Compress where Exp < 5;

insert or replace into BuildingModifiers (BuildingType, ModifierId)
	select 'BUILDING_JNR_BOTANICAL_GARDEN', 'HD_BOTANICAL_GARDEN_GOLD_' || Exp
	from HD_Binary_Compress where Exp < 5;

insert or replace into Modifiers (ModifierId, ModifierType, OwnerRequirementSetId)
	select 'HD_BOTANICAL_GARDEN_GOLD_' || Exp, 'MODIFIER_BUILDING_YIELD_CHANGE', 'HD_PLOT_BINARY_COMPRESS_BOTANICAL_GARDEN_' || Exp || '_REQUIREMENTS'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_GOLD_' || Exp, 'BuildingType', 'BUILDING_JNR_BOTANICAL_GARDEN'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_GOLD_' || Exp, 'YieldType', 'YIELD_GOLD'
	from HD_Binary_Compress where Exp < 5;

insert or replace into ModifierArguments (ModifierId, Name, Value)
	select 'HD_BOTANICAL_GARDEN_GOLD_' || Exp, 'Amount', Amount * 6
	from HD_Binary_Compress where Exp < 5;