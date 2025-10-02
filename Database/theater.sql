----------------------------
-- JNR 剧院拓展适配 by xhh --
----------------------------

-- 建筑本体修改
--------------------------------------------------------------
	-- 基本信息
UPDATE Buildings SET    Cost=110,   Maintenance=1,       CitizenSlots=1,      Entertainment=0,      PrereqCivic = 'CIVIC_LITERARY_TRADITION_HD',        Name='LOC_BUILDING_AMPHITHEATER_NAME_UC_JNR',        Description='LOC_BUILDING_AMPHITHEATER_DESCRIPTION_UC_JNR'      WHERE BuildingType='BUILDING_AMPHITHEATER';
UPDATE Buildings SET    Cost=135,   Maintenance=1,       CitizenSlots=1,      Entertainment=0,      PrereqCivic = 'CIVIC_DRAMA_POETRY',                 Name='LOC_BUILDING_MARAE_NAME_UC_JNR',               Description='LOC_BUILDING_MARAE_DESCRIPTION_UC_JNR'             WHERE BuildingType='BUILDING_MARAE';
UPDATE Buildings SET    Cost=220,   Maintenance=4,       CitizenSlots=0,      Entertainment=0,      PrereqCivic = 'CIVIC_HUMANISM',                     Name='LOC_BUILDING_MUSEUM_ART_NAME_UC_JNR',          Description='LOC_BUILDING_MUSEUM_ART_DESCRIPTION_JNR'           WHERE BuildingType='BUILDING_MUSEUM_ART';
UPDATE Buildings SET    Cost=180,   Maintenance=4,       CitizenSlots=0,      Entertainment=0,      PrereqCivic = 'CIVIC_HUMANISM',     								Name='LOC_BUILDING_MUSEUM_ARTIFACT_NAME_UC_JNR',     Description='LOC_BUILDING_MUSEUM_ARTIFACT_DESCRIPTION_JNR'      WHERE BuildingType='BUILDING_MUSEUM_ARTIFACT';
UPDATE Buildings SET    Cost=700,   Maintenance=10,      CitizenSlots=1,      Entertainment=0,      PrereqTech = 'TECH_RADIO',                          Name='LOC_BUILDING_BROADCAST_CENTER_NAME_UC_JNR',    Description='LOC_BUILDING_BROADCAST_CENTER_DESCRIPTION_UC_JNR'  WHERE BuildingType='BUILDING_BROADCAST_CENTER';
UPDATE Buildings SET    Cost=700,   Maintenance=10,      CitizenSlots=1,      Entertainment=0,      PrereqTech = 'TECH_STEEL',                          Name='LOC_BUILDING_FILM_STUDIO_CENTER_NAME_UC_JNR',  Description='LOC_BUILDING_FILM_STUDIO_DESCRIPTION_UC_JNR'       WHERE BuildingType='BUILDING_FILM_STUDIO';
update Buildings set 		Cost=250, 	Maintenance=4 where BuildingType = 'BUILDING_JNR_DOJO';

	-- 数值产出
update Building_YieldChanges set YieldChange = 1 where BuildingType = 'BUILDING_AMPHITHEATER';
update Building_YieldChanges set YieldChange = 3 where BuildingType = 'BUILDING_MUSEUM_ART';
update Building_YieldChanges set YieldChange = 5 where BuildingType = 'BUILDING_MUSEUM_ARTIFACT';
update Building_YieldChanges set YieldChange = 8 where BuildingType = 'BUILDING_BROADCAST_CENTER';
update Building_YieldChanges set YieldChange = 5 where BuildingType = 'BUILDING_FILM_STUDIO';

insert or replace into Building_YieldChanges
	(BuildingType,														YieldType,					YieldChange)
values
	('BUILDING_JNR_ASSEMBLY',									'YIELD_CULTURE',		3),
	('BUILDING_JNR_MANSION',									'YIELD_CULTURE',		3),
	('BUILDING_JNR_MANSION',									'YIELD_SCIENCE',		1),
	('BUILDING_JNR_OPERA',										'YIELD_CULTURE',		5),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',			'YIELD_CULTURE',		5),
	('BUILDING_JNR_MEDIA_CENTER',							'YIELD_CULTURE',		5);

	-- 通电产出
update Building_YieldChangesBonusWithPower set YieldChange = 8 where BuildingType = 'BUILDING_BROADCAST_CENTER';
update Building_YieldChangesBonusWithPower set YieldChange = 5 where BuildingType = 'BUILDING_FILM_STUDIO';

insert or replace into Building_YieldChangesBonusWithPower
	(BuildingType,                  YieldType,          YieldChange)
values
	('BUILDING_JNR_MEDIA_CENTER',   'YIELD_CULTURE',    5);

	-- 伟人点产出
update Building_GreatPersonPoints set PointsPerTurn = 2 where GreatPersonClassType = 'GREAT_PERSON_CLASS_WRITER' and BuildingType = 'BUILDING_AMPHITHEATER';
update Building_GreatPersonPoints set PointsPerTurn = 4 where GreatPersonClassType = 'GREAT_PERSON_CLASS_ARTIST' and BuildingType = 'BUILDING_MUSEUM_ART';
delete from Building_GreatPersonPoints where GreatPersonClassType = 'GREAT_PERSON_CLASS_WRITER' and BuildingType = 'BUILDING_MUSEUM_ART';
delete from Building_GreatPersonPoints where GreatPersonClassType = 'GREAT_PERSON_CLASS_ARTIST' and BuildingType = 'BUILDING_MUSEUM_ARTIFACT';
delete from Building_GreatPersonPoints where GreatPersonClassType = 'GREAT_PERSON_CLASS_WRITER' and BuildingType = 'BUILDING_MUSEUM_ARTIFACT';
update Building_GreatPersonPoints set PointsPerTurn = 4 where GreatPersonClassType = 'GREAT_PERSON_CLASS_MUSICIAN' and BuildingType = 'BUILDING_BROADCAST_CENTER';
delete from Building_GreatPersonPoints where GreatPersonClassType = 'GREAT_PERSON_CLASS_ARTIST' and BuildingType = 'BUILDING_BROADCAST_CENTER';
update Building_GreatPersonPoints set PointsPerTurn = 2 where GreatPersonClassType = 'GREAT_PERSON_CLASS_MUSICIAN' and BuildingType = 'BUILDING_FILM_STUDIO';
delete from Building_GreatPersonPoints where GreatPersonClassType = 'GREAT_PERSON_CLASS_ARTIST' and BuildingType = 'BUILDING_FILM_STUDIO';

insert or replace into Building_GreatPersonPoints
	(BuildingType,														GreatPersonClassType,						PointsPerTurn)
values
	('BUILDING_JNR_ASSEMBLY',									'GREAT_PERSON_CLASS_ARTIST',		1),
	('BUILDING_JNR_ASSEMBLY',									'GREAT_PERSON_CLASS_MUSICIAN',	1),
	('BUILDING_JNR_CABINET',									'GREAT_PERSON_CLASS_ARTIST',		2),
	('BUILDING_JNR_MANSION',									'GREAT_PERSON_CLASS_WRITER',		2),
	('BUILDING_JNR_OPERA',										'GREAT_PERSON_CLASS_MUSICIAN',	2),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',			'GREAT_PERSON_CLASS_ARTIST',		2),
	('BUILDING_JNR_MEDIA_CENTER',							'GREAT_PERSON_CLASS_WRITER',		2),
	('BUILDING_JNR_MEDIA_CENTER',							'GREAT_PERSON_CLASS_ARTIST',		2),
	('BUILDING_FILM_STUDIO',									'GREAT_PERSON_CLASS_WRITER',		2),
	('BUILDING_FILM_STUDIO',									'GREAT_PERSON_CLASS_ARTIST',		2);

	-- 巨作槽位
delete from Building_GreatWorks where BuildingType = 'BUILDING_FILM_STUDIO';
insert or replace into Building_GreatWorks
	(BuildingType,													GreatWorkSlotType,						NumSlots)
values
	('BUILDING_JNR_ASSEMBLY',								'GREATWORKSLOT_ART',					1),
	('BUILDING_JNR_ASSEMBLY',								'GREATWORKSLOT_MUSIC',				1),
	('BUILDING_JNR_CABINET',								'GREATWORKSLOT_ART',					2),
	('BUILDING_JNR_MANSION',								'GREATWORKSLOT_WRITING',			2),
	('BUILDING_JNR_OPERA',									'GREATWORKSLOT_MUSIC',				3),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'GREATWORKSLOT_WRITING',			1),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'GREATWORKSLOT_ART',					2),
	('BUILDING_JNR_MEDIA_CENTER',						'GREATWORKSLOT_WRITING',			2),
	('BUILDING_JNR_MEDIA_CENTER',						'GREATWORKSLOT_ART',					2);

insert or replace into Building_GreatWorks
	(BuildingType,													GreatWorkSlotType,						NumSlots)
select
	'BUILDING_JNR_GRAND_HOTEL',							'GREATWORKSLOT_PRODUCT',			3
where exists (select GreatWorkSlotType from GreatWorkSlotTypes where GreatWorkSlotType = 'GREATWORKSLOT_PRODUCT');

insert or replace into Building_GreatWorks
	(BuildingType,												GreatWorkSlotType,					NumSlots,		ThemingUniquePerson,		ThemingSameEras,		ThemingYieldMultiplier,		ThemingTourismMultiplier,		ThemingBonusDescription)
values
	('BUILDING_FILM_STUDIO',							'GREATWORKSLOT_PALACE',			4,					0,											1,									100,											100,												'LOC_BUILDING_HD_FILM_STUDIO_THEMINGBONUS');

	-- 专家产出
update Building_CitizenYieldChanges set YieldChange = 1 where YieldType = 'YIELD_CULTURE' and BuildingType = 'BUILDING_BROADCAST_CENTER';
update Building_CitizenYieldChanges set YieldChange = -1 where YieldType = 'YIELD_GOLD' and BuildingType = 'BUILDING_BROADCAST_CENTER';
update Building_CitizenYieldChanges set YieldChange = 1 where YieldType = 'YIELD_CULTURE' and BuildingType = 'BUILDING_FILM_STUDIO';
update Building_CitizenYieldChanges set YieldChange = -1 where YieldType = 'YIELD_GOLD' and BuildingType = 'BUILDING_FILM_STUDIO';

insert or replace into Building_CitizenYieldChanges
	(BuildingType,												YieldType,							YieldChange)
values
	('BUILDING_JNR_ASSEMBLY',							'YIELD_CULTURE',				1),
	('BUILDING_JNR_CABINET',							'YIELD_CULTURE',				1),
	('BUILDING_JNR_MANSION',							'YIELD_CULTURE',				1),
	('BUILDING_JNR_OPERA',								'YIELD_CULTURE',				1),
	('BUILDING_JNR_GRAND_HOTEL',					'YIELD_CULTURE',				1),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',	'YIELD_CULTURE',				1),
	('BUILDING_JNR_MEDIA_CENTER',					'YIELD_CULTURE',				1),

	('BUILDING_JNR_ASSEMBLY',							'YIELD_GOLD',						-1),
	('BUILDING_JNR_CABINET',							'YIELD_GOLD',						-1),
	('BUILDING_JNR_MANSION',							'YIELD_GOLD',						-1),
	('BUILDING_JNR_OPERA',								'YIELD_GOLD',						-1),
	('BUILDING_JNR_GRAND_HOTEL',					'YIELD_GOLD',						-1),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',	'YIELD_GOLD',						-1),
	('BUILDING_JNR_MEDIA_CENTER',					'YIELD_GOLD',						-1);

	-- 辐射范围
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_JNR_ASSEMBLY';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_AMPHITHEATER';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_MARAE';

update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_JNR_CABINET';
update Buildings set RegionalRange = 6 where BuildingType = 'BUILDING_JNR_MANSION';

update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_MUSEUM_ART';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_MUSEUM_ARTIFACT';
update Buildings set RegionalRange = 6 where BuildingType = 'BUILDING_JNR_OPERA';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_JNR_GRAND_HOTEL';

update Buildings set RegionalRange = 6 where BuildingType = 'BUILDING_BROADCAST_CENTER';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_FILM_STUDIO';
update Buildings set RegionalRange = 0 where BuildingType = 'BUILDING_JNR_MEDIA_CENTER';
--------------------------------------------------------------

-- 建筑特效修改
--------------------------------------------------------------
	-- 广播中心 媒体中心 电影厂
update ModifierArguments set Value = 10 where Name = 'Amount' and ModifierId = 'BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST';
update ModifierArguments set Value = 10 where Name = 'Amount' and ModifierId = 'POWERED_BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST';

	-- 博物馆
delete from BuildingModifiers where ModifierId = 'MUSEUM_CULTURE_PERCENTAGE_BOOST';

insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
values
	-- 公民大会
	('BUILDING_JNR_ASSEMBLY',			'HD_ASSEMBLY_POPULATION_CULTURE'),
	-- ('BUILDING_JNR_ASSEMBLY',			'HD_ASSEMBLY_POPULATION_CULTURE_GOVERNOR'),
	-- 古罗马剧场
	('BUILDING_AMPHITHEATER',			'HD_AMPHITHEATER_WRITING_CULTURE_BOOST'),
	('BUILDING_AMPHITHEATER',			'HD_AMPHITHEATER_WRITING_TOURISM_BOOST'),
	-- 陈列室
	('BUILDING_JNR_CABINET',			'HD_CABINET_CITY_DISTRICTS_CULTURE'),
	-- 歌剧院
	('BUILDING_JNR_OPERA',				'HD_OPERA_MUSIC_CULTURE_BOOST'),
	('BUILDING_JNR_OPERA',				'HD_OPERA_EXTRA_GREAT_MUSICIAN_POINTS'),
	-- 大酒店
	('BUILDING_JNR_GRAND_HOTEL',		'HD_HOTEL_THEATER_ADJACENCY_TOURISM'),
	('BUILDING_JNR_GRAND_HOTEL',		'HD_HOTEL_IMPROVEMENT_TOURISM_BOOST'),
	-- ('BUILDING_JNR_GRAND_HOTEL',		'HD_HOTEL_DISTRICT_ADJACENCY'),
	-- 艺术刊社
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_POPULATION_CULTURE'),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_ART_CULTURE_1'),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_ART_CULTURE_2'),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_ART_CULTURE_3'),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_ART_CULTURE_4'),
	('BUILDING_HD_ART_PUBLISHING_HOUSE',		'HD_ART_PUBLISHING_HOUSE_ARTIST_POINTS_BONUS'),
	-- 电影院
	('BUILDING_JNR_MEDIA_CENTER',						'BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST'),
	('BUILDING_JNR_MEDIA_CENTER',						'POWERED_BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_GREATWORKOBJECT_WRITING_TOURISM'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_GREATWORKOBJECT_SCULPTURE_TOURISM'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_GREATWORKOBJECT_PORTRAIT_TOURISM'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_GREATWORKOBJECT_LANDSCAPE_TOURISM'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_GREATWORKOBJECT_RELIGIOUS_TOURISM'),
	('BUILDING_JNR_MEDIA_CENTER',						'HD_CINEMA_DISTRICT_CULTURE'),
	-- 广播中心
	('BUILDING_BROADCAST_CENTER',		'HD_BROADCAST_MUISIC_TOURISM_BOOST'),
	-- 电影厂
	('BUILDING_FILM_STUDIO',				'HD_BROADCAST_MUISIC_TOURISM_BOOST'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_GREATWORKOBJECT_WRITING_TOURISM'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_GREATWORKOBJECT_SCULPTURE_TOURISM'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_GREATWORKOBJECT_PORTRAIT_TOURISM'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_GREATWORKOBJECT_LANDSCAPE_TOURISM'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_GREATWORKOBJECT_RELIGIOUS_TOURISM'),
	('BUILDING_FILM_STUDIO',				'HD_CINEMA_DISTRICT_CULTURE');
	-- -- 媒体中心
	-- ('BUILDING_JNR_MEDIA_CENTER',		'BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'POWERED_BROADCAST_CENTER_CULTURE_PERCENTAGE_BOOST'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_POPULATION_CULTURE'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_POPULATION_GOLD'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_WONDER_TOURISM'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_NATIONALPARK_TOURISM'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_WONDER_TOURISM_POWERED'),
	-- ('BUILDING_JNR_MEDIA_CENTER',		'HD_MEDIA_NATIONALPARK_TOURISM_POWERED');

insert or replace into Modifiers
	(ModifierId,									ModifierType,															SubjectRequirementSetId)
values
	-- 公民大会
	('HD_ASSEMBLY_POPULATION_CULTURE',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',				Null),
	-- ('HD_ASSEMBLY_POPULATION_CULTURE_GOVERNOR',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',				'CITY_HAS_GOVERNOR_REQUIREMENTS'),
	-- 陈列室
	('HD_CABINET_CITY_DISTRICTS_CULTURE',			'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',							'DISTRICT_IS_SPECIALTY_DISTRICT_REQUIREMENTS'),
	-- 古罗马剧场
	('HD_AMPHITHEATER_WRITING_CULTURE_BOOST',		'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',							Null),
	('HD_AMPHITHEATER_WRITING_TOURISM_BOOST',		'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	-- 歌剧院
	('HD_OPERA_MUSIC_CULTURE_BOOST',			'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',						Null),
	('HD_OPERA_EXTRA_GREAT_MUSICIAN_POINTS',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',						Null),
	-- 大酒店
	('HD_HOTEL_THEATER_ADJACENCY_TOURISM',			'MODIFIER_CITY_DISTRICTS_ADJUST_TOURISM_ADJACENCY_YIELD_MOFIFIER',		'DISTRICT_IS_THEATER'),
	('HD_HOTEL_IMPROVEMENT_TOURISM_BOOST',			'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_TOURISM',						Null),
	-- ('HD_HOTEL_DISTRICT_ADJACENCY',					'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',					NULL),
	-- 艺术刊社
	('HD_ART_PUBLISHING_HOUSE_POPULATION_CULTURE',					'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',				Null),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_1',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',				Null),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_2',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',				Null),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_3',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',				Null),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_4',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',				Null),
	('HD_ART_PUBLISHING_HOUSE_ARTIST_POINTS_BONUS',					'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',				Null),
	-- 电影院
	('HD_CINEMA_GREATWORKOBJECT_WRITING_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('HD_CINEMA_GREATWORKOBJECT_SCULPTURE_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('HD_CINEMA_GREATWORKOBJECT_PORTRAIT_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('HD_CINEMA_GREATWORKOBJECT_LANDSCAPE_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('HD_CINEMA_GREATWORKOBJECT_RELIGIOUS_TOURISM',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null),
	('HD_CINEMA_DISTRICT_CULTURE',			'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',							'HD_DISTRICTS_IS_NOT_WONDERS_REQUIREMENTS'),
	-- 广播中心
	('HD_BROADCAST_MUISIC_TOURISM_BOOST',			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM',									Null);
	-- 媒体中心
	-- ('HD_MEDIA_POPULATION_CULTURE',					'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',				Null),
	-- ('HD_MEDIA_POPULATION_GOLD',					'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',				Null),
	-- ('HD_MEDIA_WONDER_TOURISM',						'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',								Null),
	-- ('HD_MEDIA_NATIONALPARK_TOURISM',				'MODIFIER_PLAYER_CITIES_ADJUST_NATIONAL_PARK_TOURISM',					Null),
	-- ('HD_MEDIA_WONDER_TOURISM_POWERED',				'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',								Null),
	-- ('HD_MEDIA_NATIONALPARK_TOURISM_POWERED',		'MODIFIER_PLAYER_CITIES_ADJUST_NATIONAL_PARK_TOURISM',					Null);

update Modifiers set OwnerRequirementSetId = 'CITY_IS_POWERED' where ModifierId = 'HD_MEDIA_WONDER_TOURISM_POWERED' or ModifierId = 'HD_MEDIA_NATIONALPARK_TOURISM_POWERED';
-- update Modifiers set SubjectStackLimit = 5 where ModifierId = 'HD_MEDIA_WONDER_TOURISM' or ModifierId = 'HD_MEDIA_NATIONALPARK_TOURISM';

insert or replace into ModifierArguments
	(ModifierId,									Name,						Value)
values
	-- 公民大会
	('HD_ASSEMBLY_POPULATION_CULTURE',				'YieldType',				'YIELD_CULTURE'),
	('HD_ASSEMBLY_POPULATION_CULTURE',				'Amount',					0.5),
	-- ('HD_ASSEMBLY_POPULATION_CULTURE_GOVERNOR',				'YieldType',				'YIELD_CULTURE'),
	-- ('HD_ASSEMBLY_POPULATION_CULTURE_GOVERNOR',				'Amount',					0.2),
	-- 陈列室
	('HD_CABINET_CITY_DISTRICTS_CULTURE',			'YieldType',				'YIELD_CULTURE'),
	('HD_CABINET_CITY_DISTRICTS_CULTURE',			'Amount',					2),
	-- 古罗马剧场
	('HD_AMPHITHEATER_WRITING_CULTURE_BOOST',		'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING'),
	('HD_AMPHITHEATER_WRITING_CULTURE_BOOST',		'YieldType',				'YIELD_CULTURE'),
	('HD_AMPHITHEATER_WRITING_CULTURE_BOOST',		'YieldChange',				2),
	('HD_AMPHITHEATER_WRITING_TOURISM_BOOST',		'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING'),
	('HD_AMPHITHEATER_WRITING_TOURISM_BOOST',		'ScalingFactor',			150),
	-- 歌剧院
	('HD_OPERA_MUSIC_CULTURE_BOOST',					'YieldType',				'YIELD_CULTURE'),
	('HD_OPERA_MUSIC_CULTURE_BOOST',					'YieldChange',					3),
	('HD_OPERA_MUSIC_CULTURE_BOOST',					'GreatWorkObjectType',					'GREATWORKOBJECT_MUSIC'),
	('HD_OPERA_EXTRA_GREAT_MUSICIAN_POINTS',			'GreatPersonClassType',				'GREAT_PERSON_CLASS_MUSICIAN'),
	('HD_OPERA_EXTRA_GREAT_MUSICIAN_POINTS',			'Amount',					10),
	-- 大酒店
	('HD_HOTEL_THEATER_ADJACENCY_TOURISM',			'YieldType',				'YIELD_CULTURE'),
	('HD_HOTEL_THEATER_ADJACENCY_TOURISM',			'Amount',					100),
	('HD_HOTEL_IMPROVEMENT_TOURISM_BOOST',			'Amount',					50),
	-- ('HD_HOTEL_DISTRICT_ADJACENCY',					'YieldType',				'YIELD_CULTURE'),
	-- ('HD_HOTEL_DISTRICT_ADJACENCY',					'Amount',					100),
	-- 艺术刊社
	('HD_ART_PUBLISHING_HOUSE_POPULATION_CULTURE',					'YieldType',			'YIELD_CULTURE'),
	('HD_ART_PUBLISHING_HOUSE_POPULATION_CULTURE',					'Amount',					1),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_1',		'GreatWorkObjectType',		'GREATWORKOBJECT_SCULPTURE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_1',		'YieldType',							'YIELD_CULTURE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_1',		'YieldChange',						2),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_2',		'GreatWorkObjectType',		'GREATWORKOBJECT_PORTRAIT'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_2',		'YieldType',							'YIELD_CULTURE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_2',		'YieldChange',						2),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_3',		'GreatWorkObjectType',		'GREATWORKOBJECT_LANDSCAPE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_3',		'YieldType',							'YIELD_CULTURE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_3',		'YieldChange',						2),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_4',		'GreatWorkObjectType',		'GREATWORKOBJECT_RELIGIOUS'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_4',		'YieldType',							'YIELD_CULTURE'),
	('HD_ART_PUBLISHING_HOUSE_ART_CULTURE_4',		'YieldChange',						2),
	('HD_ART_PUBLISHING_HOUSE_ARTIST_POINTS_BONUS',			'GreatPersonClassType',				'GREAT_PERSON_CLASS_ARTIST'),
	('HD_ART_PUBLISHING_HOUSE_ARTIST_POINTS_BONUS',			'Amount',					10),
	-- 电影院
	('HD_CINEMA_GREATWORKOBJECT_WRITING_TOURISM',			'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING'),
	('HD_CINEMA_GREATWORKOBJECT_WRITING_TOURISM',			'ScalingFactor',			200),
	('HD_CINEMA_GREATWORKOBJECT_SCULPTURE_TOURISM',			'GreatWorkObjectType',		'GREATWORKOBJECT_SCULPTURE'),
	('HD_CINEMA_GREATWORKOBJECT_SCULPTURE_TOURISM',			'ScalingFactor',			200),
	('HD_CINEMA_GREATWORKOBJECT_PORTRAIT_TOURISM',			'GreatWorkObjectType',		'GREATWORKOBJECT_PORTRAIT'),
	('HD_CINEMA_GREATWORKOBJECT_PORTRAIT_TOURISM',			'ScalingFactor',			200),
	('HD_CINEMA_GREATWORKOBJECT_LANDSCAPE_TOURISM',			'GreatWorkObjectType',		'GREATWORKOBJECT_LANDSCAPE'),
	('HD_CINEMA_GREATWORKOBJECT_LANDSCAPE_TOURISM',			'ScalingFactor',			200),
	('HD_CINEMA_GREATWORKOBJECT_RELIGIOUS_TOURISM',			'GreatWorkObjectType',		'GREATWORKOBJECT_RELIGIOUS'),
	('HD_CINEMA_GREATWORKOBJECT_RELIGIOUS_TOURISM',			'ScalingFactor',			200),
	('HD_CINEMA_DISTRICT_CULTURE',			'YieldType',			'YIELD_CULTURE'),
	('HD_CINEMA_DISTRICT_CULTURE',			'Amount',					3),
	-- 广播中心
	('HD_BROADCAST_MUISIC_TOURISM_BOOST',			'GreatWorkObjectType',		'GREATWORKOBJECT_MUSIC'),
	('HD_BROADCAST_MUISIC_TOURISM_BOOST',			'ScalingFactor',			200);
	-- -- 媒体中心
	-- ('HD_MEDIA_POPULATION_CULTURE',					'YieldType',				'YIELD_CULTURE'),
	-- ('HD_MEDIA_POPULATION_CULTURE',					'Amount',					1),
	-- ('HD_MEDIA_POPULATION_GOLD',					'YieldType',				'YIELD_GOLD'),
	-- ('HD_MEDIA_POPULATION_GOLD',					'Amount',					3),
	-- ('HD_MEDIA_WONDER_TOURISM',						'BoostsWonders',			1),
	-- ('HD_MEDIA_WONDER_TOURISM',						'ScalingFactor',			125),
	-- ('HD_MEDIA_NATIONALPARK_TOURISM',				'Amount',					25),
	-- ('HD_MEDIA_WONDER_TOURISM_POWERED',				'BoostsWonders',			1),
	-- ('HD_MEDIA_WONDER_TOURISM_POWERED',				'ScalingFactor',			125),
	-- ('HD_MEDIA_NATIONALPARK_TOURISM_POWERED',		'Amount',					25);

	-- 大酒店
insert or replace into Building_YieldDistrictCopies
	(BuildingType,					OldYieldType,				NewYieldType)
values
	('BUILDING_JNR_GRAND_HOTEL',	'YIELD_CULTURE',			'YIELD_CULTURE');

	-- 陈列室
insert or replace into BuildingModifiers
	(BuildingType,						ModifierId)
select
	'BUILDING_JNR_CABINET',				'HD_CABINET_' || GreatWorkObjectType || '_TOURISM_BOOST'
from GreatWorkObjectTypes where GreatWorkObjectType != 'GREATWORKOBJECT_PRODUCT';

insert or replace into Modifiers
	(ModifierId,													ModifierType)
select
	'HD_CABINET_' || GreatWorkObjectType || '_TOURISM_BOOST',		'MODIFIER_SINGLE_CITY_ADJUST_TOURISM'
from GreatWorkObjectTypes where GreatWorkObjectType != 'GREATWORKOBJECT_PRODUCT';

insert or replace into ModifierArguments
	(ModifierId,													Name,						Value)
select
	'HD_CABINET_' || GreatWorkObjectType || '_TOURISM_BOOST',		'GreatWorkObjectType',		GreatWorkObjectType
from GreatWorkObjectTypes where GreatWorkObjectType != 'GREATWORKOBJECT_PRODUCT';

insert or replace into ModifierArguments
	(ModifierId,													Name,						Value)
select
	'HD_CABINET_' || GreatWorkObjectType || '_TOURISM_BOOST',		'ScalingFactor',			150
from GreatWorkObjectTypes where GreatWorkObjectType != 'GREATWORKOBJECT_PRODUCT';
--------------------------------------------------------------

-- 尤里卡/鼓舞改动
--------------------------------------------------------------
	-- 人文主义
update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 1, BuildingType = 'BUILDING_AMPHITHEATER' where CivicType = 'CIVIC_HUMANISM';
	-- 历史哲学
update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 2, BuildingType = 'BUILDING_JNR_ASSEMBLY', Unit1Type = null where CivicType = 'CIVIC_LAW_HD';
	-- 金融学
update Boosts set BoostClass = 'BOOST_TRIGGER_NONE_LATE_GAME_CRITICAL_TECH', NumItems = 0, BuildingType = null where CivicType = 'CIVIC_FINANCE_HD';
--------------------------------------------------------------

-- 城邦使者加成改动
--------------------------------------------------------------
insert or ignore into RequirementSets
	(RequirementSetId,												RequirementSetType)
values
	('HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS',			'REQUIREMENTSET_TEST_ANY'),
	('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM',	'REQUIREMENTSET_TEST_ANY');

insert or ignore into RequirementSetRequirements
	(RequirementSetId,												RequirementId)
values
	('HD_CITY_HAS_CULTURAL_TIER_1_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_ASSEMBLY'),
    ('HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_CABINET'),
    ('HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_MANSION'),
    ('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_OPERA'),
    ('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_GRAND_HOTEL'),
    ('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_HD_ART_PUBLISHING_HOUSE'),
    ('HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_BROADCAST_CENTER'),
    ('HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS',       	'REQUIRES_CITY_HAS_BUILDING_JNR_MEDIA_CENTER'),
    ('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM',    'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ART'),
    ('HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM',    'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ARTIFACT');

insert or replace into Modifiers
	(ModifierId,																	ModifierType,											SubjectRequirementSetId)
values
	('MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM'),
	('MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'PLAYER_HAS_LARGEST_INFLUENCE');

insert or replace into ModifierArguments
	(ModifierId,																	Name,					Value)
values
	('MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM_ATTACH',	'ModifierId',			'MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM'),
	('MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM',			'Amount',				3),
	('MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM',			'YieldType',			'YIELD_CULTURE');

insert or replace into TraitModifiers
	(TraitType,								ModifierId)
values
	('MINOR_CIV_CULTURAL_TRAIT',			'MINOR_CIV_CULTURAL_TRAIT_LARGEST_INFLUENCE_YIELD_CULTURE_HD_MUSEUM_ATTACH');

delete from RequirementSetRequirements where RequirementSetId = 'HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ARTIFACT';
delete from RequirementSetRequirements where RequirementSetId = 'HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ART';
delete from RequirementSetRequirements where RequirementSetId = 'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_BUILDING_BROADCAST_CENTER';
--------------------------------------------------------------

-- 政策卡改动
--------------------------------------------------------------
	-- 教育学
-- update Modifiers set SubjectRequirementSetId = 'HD_BUILDING_IS_TIER2_OR_MUSEUM' where ModifierId = 'POLICY_GRAND_OPERA_MUSEUM_POPULATION_CULTURE';
-- update Modifiers set SubjectRequirementSetId = 'HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL' where ModifierId = 'POLICY_GRAND_OPERA_BROADCAST_CENTER_POPULATION_CULTURE';
insert or replace into PolicyModifiers
	(PolicyType,									ModifierId)
values
	('POLICY_GRAND_OPERA',				'POLICY_GRAND_OPERA_POP_CULTURE_4');

insert or replace into Modifiers
	(ModifierId,													ModifierType,																										SubjectRequirementSetId)
values
	('POLICY_GRAND_OPERA_POP_CULTURE_4',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_POPULATION',			'CITY_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS');

insert or replace into ModifierArguments
	(ModifierId,													Name,						Value)
values
	('POLICY_GRAND_OPERA_POP_CULTURE_4',	'YieldType',		'YIELD_CULTURE'),
	('POLICY_GRAND_OPERA_POP_CULTURE_4',	'Amount',				0.3);

-- 区块链
-- update RequirementSetRequirements set RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_THEATER_TIER_4_BUILDING' where
-- 	RequirementSetId = 'HD_BLOCKCHAIN_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_THEATER_TIER_3_BUILDING';
update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS' where
	ModifierId = 'POLICY_HD_BLOCKCHAIN_POP_CULTURE';

-- 伟人卡
insert or replace into PolicyModifiers
	(PolicyType,											ModifierId)
values
	('POLICY_HD_NATIONAL_CULTURE',		'HD_NATIONAL_CULTURE_GREAT_WRITER_4'),
	('POLICY_FRESCOES',								'HD_FRESCOES_GREAT_ARTIST_4'),
	('POLICY_SYMPHONIES',							'HD_SYMPHONIES_GREAT_MUSICIAN_4'),
	('POLICY_HD_SUBCULTURAL_TREND',		'HD_NATIONAL_CULTURE_GREAT_WRITER_4'),
	('POLICY_HD_SUBCULTURAL_TREND',		'HD_FRESCOES_GREAT_ARTIST_4'),
	('POLICY_HD_SUBCULTURAL_TREND',		'HD_SYMPHONIES_GREAT_MUSICIAN_4');

insert or replace into Modifiers
	(ModifierId,															ModifierType,																									SubjectRequirementSetId)
values
	('HD_NATIONAL_CULTURE_GREAT_WRITER_4',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',				'HD_PLOT_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS'),
	('HD_FRESCOES_GREAT_ARTIST_4',						'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',				'HD_PLOT_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS'),
	('HD_SYMPHONIES_GREAT_MUSICIAN_4',				'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',				'HD_PLOT_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS');

insert or replace into ModifierArguments
	(ModifierId,															Name,												Value)
values
	('HD_NATIONAL_CULTURE_GREAT_WRITER_4',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_WRITER'),
	('HD_NATIONAL_CULTURE_GREAT_WRITER_4',		'Amount',										4),
	('HD_FRESCOES_GREAT_ARTIST_4',						'GreatPersonClassType',			'GREAT_PERSON_CLASS_ARTIST'),
	('HD_FRESCOES_GREAT_ARTIST_4',						'Amount',										4),
	('HD_SYMPHONIES_GREAT_MUSICIAN_4',				'GreatPersonClassType',			'GREAT_PERSON_CLASS_MUSICIAN'),
	('HD_SYMPHONIES_GREAT_MUSICIAN_4',				'Amount',										4);

-- Reqs
insert or ignore into RequirementSets
	(RequirementSetId,								RequirementSetType)
values
	('HD_BUILDING_IS_TIER2_OR_MUSEUM',				'REQUIREMENTSET_TEST_ANY'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIREMENTSET_TEST_ANY');

insert or ignore into RequirementSetRequirements
	(RequirementSetId,								RequirementId)
values
	('HD_BUILDING_IS_TIER2_OR_MUSEUM',				'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ART'),
	('HD_BUILDING_IS_TIER2_OR_MUSEUM',				'REQUIRES_CITY_HAS_BUILDING_MUSEUM_ARTIFACT'),
	('HD_BUILDING_IS_TIER2_OR_MUSEUM',				'REQUIRES_CITY_HAS_BUILDING_JNR_CABINET'),
	('HD_BUILDING_IS_TIER2_OR_MUSEUM',				'REQUIRES_CITY_HAS_BUILDING_JNR_MANSION'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIRES_CITY_HAS_BUILDING_JNR_OPERA'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIRES_CITY_HAS_BUILDING_JNR_GRAND_HOTEL'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIRES_CITY_HAS_BUILDING_BROADCAST_CENTER'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIRES_CITY_HAS_BUILDING_JNR_MEDIA_CENTER'),
	('HD_BUILDING_IS_TIER3_OR_OPERA_OR_HOTEL',		'REQUIRES_CITY_HAS_BUILDING_HD_ART_PUBLISHING_HOUSE');

	-- 超级大国
-- update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS' where ModifierId = 'SUPERPOWER_CULTURE_ATTACH';

-- 科教兴国
update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_THEATER_TIER_4_BUILDING_REQUIREMENTS' where ModifierId = 'HD_SCIENCE_AND_EDUCATION_GOLD';

--------------------------------------------------------------

-- 奇观改动
--------------------------------------------------------------
	-- 加拿大电视塔
update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_OPERA_OR_HOTLE' where ModifierId = 'CL_GRANT_BROADCAST';

insert or ignore into RequirementSets
	(RequirementSetId,								RequirementSetType)
values
	('HD_CITY_HAS_OPERA_OR_HOTLE',					'REQUIREMENTSET_TEST_ANY');

insert or ignore into RequirementSetRequirements
	(RequirementSetId,								RequirementId)
values
	('HD_CITY_HAS_OPERA_OR_HOTLE',					'REQUIRES_CITY_HAS_BUILDING_JNR_OPERA'),
	('HD_CITY_HAS_OPERA_OR_HOTLE',					'REQUIRES_CITY_HAS_BUILDING_JNR_GRAND_HOTEL'),
	('HD_CITY_HAS_OPERA_OR_HOTLE',					'REQUIRES_CITY_HAS_BUILDING_HD_ART_PUBLISHING_HOUSE');
--------------------------------------------------------------

-- 杂项改动
--------------------------------------------------------------
	-- 神圣之光 博洛尼亚 道观
update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_CULTURAL_TIER_1_BUILDING_REQUIREMENTS' where SubjectRequirementSetId = 'BUILDING_IS_AMPHITHEATER';

	-- 市政需求调整
update CivicRandomCosts set Cost = 6300 where Cost = 4800;
update CivicRandomCosts set Cost = 6400 where Cost = 4900;
-- 未来时代
update Civics set Cost = 6600 where Cost = 5200;
update Civics set Cost = 6300 where Cost = 4800;
-- 信息时代
update Civics set Cost = 6000 where Cost = 4500;
update Civics set Cost = 5400 where Cost = 4100;
-- 原子能时代
update Civics set Cost = 4800 where Cost = 3500;
update Civics set Cost = 4500 where Cost = 3000;
-- 现代
update Civics set Cost = 4000 where Cost = 2400;
update Civics set Cost = 3600 where Cost = 2250;
update Civics set Cost = 3000 where Cost = 2100;
-- 工业时代
update Civics set Cost = 2400 where Cost = 1700;
update Civics set Cost = 1800 where Cost = 1450;
-- 文艺复兴时代
update Civics set Cost = 1400 where Cost = 1050;
update Civics set Cost = 1200 where Cost = 900;
-- 中世纪
update Civics set Cost = 850 where Cost = 600;
update Civics set Cost = 650 where Cost = 450;
-- 古典
update Civics set Cost = 260 where Cost = 240;
update Civics set Cost = 150 where Cost = 150;
-- 远古
update Civics set Cost = 70 where Cost = 70;
update Civics set Cost = 50 where Cost = 50;
update Civics set Cost = 30 where Cost = 30;

-- -- Civic Tree v4
-- update Civics set Cost = 260 where CivicType = 'CIVIC_LITERARY_TRADITION_HD';  
-- update Civics set Cost = 500 where CivicType = 'CIVIC_IMPERIAL_EXAMINATION_SYSTEM_HD';  
-- update Civics set Cost = 1200 where CivicType = 'CIVIC_EVOLUTION_THEORY_HD'; 
-- update Civics set Cost = 1200 where CivicType = 'CIVIC_HISTORICAL_PHILOSOPHY_HD'; 
-- update Civics set Cost = 1200 where CivicType = 'CIVIC_ETHICS_HD'; 
-- update Civics set Cost = 1800 where CivicType = 'CIVIC_SOCIAL_SCIENCE_HD'; 

-- update Civics set Cost = 30 where CivicType = 'CIVIC_CODE_OF_LAWS';  
-- update Civics set Cost = 30 where CivicType = 'CIVIC_CRAFTSMANSHIP';  
-- update Civics set Cost = 30 where CivicType = 'CIVIC_FOREIGN_TRADE'; 
-- update Civics set Cost = 50 where CivicType = 'CIVIC_MILITARY_TRADITION'; 
-- update Civics set Cost = 50 where CivicType = 'CIVIC_MYSTICISM'; 
-- update Civics set Cost = 70 where CivicType = 'CIVIC_STATE_WORKFORCE'; 
-- update Civics set Cost = 70 where CivicType = 'CIVIC_EARLY_EMPIRE'; 

-- update Civics set Cost = 130 where CivicType = 'CIVIC_GAMES_RECREATION'; 
-- update Civics set Cost = 130 where CivicType = 'CIVIC_DRAMA_POETRY'; 
-- update Civics set Cost = 160 where CivicType = 'CIVIC_POLITICAL_PHILOSOPHY'; 
-- update Civics set Cost = 260 where CivicType = 'CIVIC_MILITARY_TRAINING'; 
-- update Civics set Cost = 260 where CivicType = 'CIVIC_DEFENSIVE_TACTICS';    
-- update Civics set Cost = 260 where CivicType = 'CIVIC_RECORDED_HISTORY';    
-- update Civics set Cost = 260 where CivicType = 'CIVIC_THEOLOGY';    

-- update Civics set Cost = 500 where CivicType = 'CIVIC_NAVAL_TRADITION';    
-- update Civics set Cost = 500 where CivicType = 'CIVIC_FEUDALISM';    
-- update Civics set Cost = 500 where CivicType = 'CIVIC_MEDIEVAL_FAIRES';  
-- update Civics set Cost = 500 where CivicType = 'CIVIC_DIVINE_RIGHT';   
-- update Civics set Cost = 750 where CivicType = 'CIVIC_CIVIL_SERVICE';    
-- update Civics set Cost = 750 where CivicType = 'CIVIC_MERCENARIES';      
-- update Civics set Cost = 750 where CivicType = 'CIVIC_GUILDS';     

-- update Civics set Cost = 850 where CivicType = 'CIVIC_EXPLORATION';      
-- update Civics set Cost = 850 where CivicType = 'CIVIC_REFORMED_CHURCH';    
-- update Civics set Cost = 1000 where CivicType = 'CIVIC_HUMANISM';    
-- update Civics set Cost = 1000 where CivicType = 'CIVIC_DIPLOMATIC_SERVICE';  
-- update Civics set Cost = 1200 where CivicType = 'CIVIC_MERCANTILISM';    
-- update Civics set Cost = 1200 where CivicType = 'CIVIC_THE_ENLIGHTENMENT';   

-- update Civics set Cost = 1800 where CivicType = 'CIVIC_COLONIALISM';   
-- update Civics set Cost = 1800 where CivicType = 'CIVIC_CIVIL_ENGINEERING';   
-- update Civics set Cost = 1800 where CivicType = 'CIVIC_NATIONALISM';   
-- update Civics set Cost = 1800 where CivicType = 'CIVIC_OPERA_BALLET';   
-- update Civics set Cost = 2400 where CivicType = 'CIVIC_NATURAL_HISTORY';   
-- update Civics set Cost = 2400 where CivicType = 'CIVIC_SCORCHED_EARTH';   
-- update Civics set Cost = 2400 where CivicType = 'CIVIC_URBANIZATION';   

-- update Civics set Cost = 3000 where CivicType = 'CIVIC_CONSERVATION';   
-- update Civics set Cost = 3000 where CivicType = 'CIVIC_MASS_MEDIA';   
-- update Civics set Cost = 3000 where CivicType = 'CIVIC_MOBILIZATION';   
-- update Civics set Cost = 3600 where CivicType = 'CIVIC_IDEOLOGY';   
-- update Civics set Cost = 3600 where CivicType = 'CIVIC_SUFFRAGE';   
-- update Civics set Cost = 3600 where CivicType = 'CIVIC_TOTALITARIANISM';  
-- update Civics set Cost = 3600 where CivicType = 'CIVIC_CLASS_STRUGGLE';   
-- update Civics set Cost = 3600 where CivicType = 'CIVIC_CAPITALISM';     
-- update Civics set Cost = 3900 where CivicType = 'CIVIC_NUCLEAR_PROGRAM'; 
 
-- update Civics set Cost = 4200 where CivicType = 'CIVIC_CULTURAL_HERITAGE';   
-- update Civics set Cost = 4500 where CivicType = 'CIVIC_COLD_WAR';   
-- update Civics set Cost = 4500 where CivicType = 'CIVIC_PROFESSIONAL_SPORTS';   
-- update Civics set Cost = 4800 where CivicType = 'CIVIC_RAPID_DEPLOYMENT';   
-- update Civics set Cost = 4800 where CivicType = 'CIVIC_SPACE_RACE';  

-- update Civics set Cost = 5400 where CivicType = 'CIVIC_GLOBALIZATION';   
-- update Civics set Cost = 5400 where CivicType = 'CIVIC_SOCIAL_MEDIA';   
-- update Civics set Cost = 5400 where CivicType = 'CIVIC_ENVIRONMENTALISM';   
-- update Civics set Cost = 5700 where CivicType = 'CIVIC_CORPORATE_LIBERTARIANISM';   
-- update Civics set Cost = 5700 where CivicType = 'CIVIC_DIGITAL_DEMOCRACY';   
-- update Civics set Cost = 5700 where CivicType = 'CIVIC_SYNTHETIC_TECHNOCRACY';   
-- update Civics set Cost = 6000 where CivicType = 'CIVIC_NEAR_FUTURE_GOVERNANCE'; 

-- update Civics set Cost = 6300 where CivicType = 'CIVIC_GLOBAL_WARMING_MITIGATION';   
-- update Civics set Cost = 6300 where CivicType = 'CIVIC_SMART_POWER_DOCTRINE';   
-- update Civics set Cost = 6300 where CivicType = 'CIVIC_INFORMATION_WARFARE';  
-- update Civics set Cost = 6300 where CivicType = 'CIVIC_EXODUS_IMPERATIVE';  
-- update Civics set Cost = 6300 where CivicType = 'CIVIC_CULTURAL_HEGEMONY';  
-- update Civics set Cost = 6600 where CivicType = 'CIVIC_FUTURE_CIVIC';