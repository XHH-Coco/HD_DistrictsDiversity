-- UC_CMP_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
        (Type,                          Kind)
VALUES  ('BUILDING_JNR_ASSEMBLY',       'KIND_BUILDING'),
        ('BUILDING_JNR_CABINET',        'KIND_BUILDING'),
        ('BUILDING_JNR_MANSION',        'KIND_BUILDING'),
        ('BUILDING_JNR_OPERA',          'KIND_BUILDING'),
        ('BUILDING_JNR_GRAND_HOTEL',    'KIND_BUILDING'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'KIND_BUILDING'),
        ('BUILDING_JNR_MEDIA_CENTER',   'KIND_BUILDING');
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
        (BuildingType,                          PrereqDistrict,     PrereqCivic,                                Cost,   Maintenance,    CitizenSlots,   Entertainment,  PurchaseYield,  AdvisorType,        Name,                                   Description)
VALUES  ('BUILDING_JNR_ASSEMBLY',               'DISTRICT_THEATER', 'CIVIC_DRAMA_POETRY',                       110,    1,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_ASSEMBLY_NAME',       'LOC_BUILDING_JNR_ASSEMBLY_DESCRIPTION'),
        ('BUILDING_JNR_CABINET',                'DISTRICT_THEATER', 'CIVIC_MEDIEVAL_FAIRES',                    240,    4,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_CABINET_NAME',        'LOC_BUILDING_JNR_CABINET_DESCRIPTION'),
        ('BUILDING_JNR_MANSION',                'DISTRICT_THEATER', 'CIVIC_IMPERIAL_EXAMINATION_SYSTEM_HD',     240,    4,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_MANSION_NAME',        null),
        ('BUILDING_JNR_OPERA',                  'DISTRICT_THEATER', 'CIVIC_OPERA_BALLET',                       450,    7,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_OPERA_NAME',          'LOC_BUILDING_JNR_OPERA_DESCRIPTION'),
        ('BUILDING_JNR_GRAND_HOTEL',            'DISTRICT_THEATER', null,                                       450,    7,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_GRAND_HOTEL_NAME',    'LOC_BUILDING_JNR_GRAND_HOTEL_DESCRIPTION'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'DISTRICT_THEATER', 'CIVIC_JOURNALISM_STUDIES_HD',              450,    7,              1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_NAME',    'LOC_BUILDING_HD_ART_PUBLISHING_HOUSE_DESCRIPTION'),
        ('BUILDING_JNR_MEDIA_CENTER',           'DISTRICT_THEATER', 'CIVIC_MASS_MEDIA',                         700,    10,             1,              0,              'YIELD_GOLD',   'ADVISOR_CULTURE',  'LOC_BUILDING_JNR_MEDIA_CENTER_NAME',   'LOC_BUILDING_JNR_MEDIA_CENTER_DESCRIPTION');
update Buildings set PrereqTech = 'TECH_CIVIL_ENGINEERING_HD' where BuildingType = 'BUILDING_JNR_GRAND_HOTEL';
--------------------------------------------------------------

-- 日本UB
update BuildingReplaces set ReplacesBuildingType = 'BUILDING_JNR_CABINET' where CivUniqueBuildingType = 'BUILDING_JNR_DOJO';
update MutuallyExclusiveBuildings set MutuallyExclusiveBuilding = 'BUILDING_JNR_MANSION' where Building = 'BUILDING_JNR_DOJO';
insert or ignore into BuildingPrereqs (Building, PrereqBuilding)
        select 'BUILDING_JNR_DOJO', 'BUILDING_JNR_ASSEMBLY'
        where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_JNR_DOJO');

-- Buildings_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Buildings_XP2
        (BuildingType,                  RequiredPower)
SELECT  'BUILDING_JNR_MEDIA_CENTER',    RequiredPower
FROM    Buildings_XP2
WHERE   BuildingType='BUILDING_BROADCAST_CENTER';
--------------------------------------------------------------

-- BuildingReplaces
--------------------------------------------------------------
DELETE FROM BuildingReplaces WHERE CivUniqueBuildingType='BUILDING_MARAE';
DELETE FROM BuildingReplaces WHERE CivUniqueBuildingType='BUILDING_FILM_STUDIO';

INSERT OR IGNORE INTO BuildingReplaces
        (CivUniqueBuildingType,     ReplacesBuildingType)
VALUES  ('BUILDING_MARAE',          'BUILDING_JNR_ASSEMBLY'),
--        ('BUILDING_MARAE',          'BUILDING_AMPHITHEATER'),
        ('BUILDING_FILM_STUDIO',    'BUILDING_JNR_MEDIA_CENTER');
--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_MUSEUM_ART';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_MUSEUM_ARTIFACT';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_BROADCAST_CENTER';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_FILM_STUDIO';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
VALUES  
        -- 二级建筑
        ('BUILDING_JNR_CABINET',        'BUILDING_AMPHITHEATER'),
        ('BUILDING_JNR_CABINET',        'BUILDING_JNR_ASSEMBLY'),
        ('BUILDING_JNR_MANSION',        'BUILDING_AMPHITHEATER'),
        ('BUILDING_JNR_MANSION',        'BUILDING_JNR_ASSEMBLY'),
        -- 三级建筑
        ('BUILDING_JNR_OPERA',          'BUILDING_JNR_CABINET'),
        ('BUILDING_JNR_OPERA',          'BUILDING_JNR_MANSION'),
        ('BUILDING_JNR_GRAND_HOTEL',    'BUILDING_JNR_CABINET'),
        ('BUILDING_JNR_GRAND_HOTEL',    'BUILDING_JNR_MANSION'),
        ('BUILDING_MUSEUM_ART',         'BUILDING_JNR_CABINET'),
        ('BUILDING_MUSEUM_ART',         'BUILDING_JNR_MANSION'),
        ('BUILDING_MUSEUM_ARTIFACT',    'BUILDING_JNR_CABINET'),
        ('BUILDING_MUSEUM_ARTIFACT',    'BUILDING_JNR_MANSION'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'BUILDING_JNR_CABINET'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'BUILDING_JNR_MANSION'),
        -- 四级建筑
        ('BUILDING_BROADCAST_CENTER',   'BUILDING_JNR_OPERA'),
        ('BUILDING_BROADCAST_CENTER',   'BUILDING_JNR_GRAND_HOTEL'),
        ('BUILDING_BROADCAST_CENTER',   'BUILDING_HD_ART_PUBLISHING_HOUSE'),
        ('BUILDING_JNR_MEDIA_CENTER',   'BUILDING_JNR_OPERA'),
        ('BUILDING_JNR_MEDIA_CENTER',   'BUILDING_JNR_GRAND_HOTEL'),
        ('BUILDING_JNR_MEDIA_CENTER',   'BUILDING_HD_ART_PUBLISHING_HOUSE'),
        ('BUILDING_FILM_STUDIO',        'BUILDING_JNR_OPERA'),
        ('BUILDING_FILM_STUDIO',        'BUILDING_JNR_GRAND_HOTEL'),
        ('BUILDING_FILM_STUDIO',        'BUILDING_HD_ART_PUBLISHING_HOUSE');
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                      MutuallyExclusiveBuilding)
VALUES  
        -- 一级建筑
        ('BUILDING_AMPHITHEATER',       'BUILDING_JNR_ASSEMBLY'),
        ('BUILDING_JNR_ASSEMBLY',       'BUILDING_AMPHITHEATER'),
        -- 二级建筑
        ('BUILDING_JNR_CABINET',        'BUILDING_JNR_MANSION'),
        ('BUILDING_JNR_MANSION',        'BUILDING_JNR_CABINET'),
        -- 三级建筑
        ('BUILDING_JNR_OPERA',          'BUILDING_JNR_GRAND_HOTEL'),
        ('BUILDING_JNR_OPERA',          'BUILDING_HD_ART_PUBLISHING_HOUSE'),
        ('BUILDING_JNR_GRAND_HOTEL',    'BUILDING_JNR_OPERA'),
        ('BUILDING_JNR_GRAND_HOTEL',    'BUILDING_HD_ART_PUBLISHING_HOUSE'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'BUILDING_JNR_OPERA'),
        ('BUILDING_HD_ART_PUBLISHING_HOUSE',    'BUILDING_JNR_GRAND_HOTEL'),
        -- 四级建筑
        ('BUILDING_BROADCAST_CENTER',   'BUILDING_JNR_MEDIA_CENTER'),
        ('BUILDING_JNR_MEDIA_CENTER',   'BUILDING_BROADCAST_CENTER'),
        ('BUILDING_FILM_STUDIO',        'BUILDING_BROADCAST_CENTER'),
        ('BUILDING_BROADCAST_CENTER',   'BUILDING_FILM_STUDIO');

-- Uniques
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,              'BUILDING_JNR_ASSEMBLY'
FROM    BuildingReplaces    WHERE   ReplacesBuildingType='BUILDING_AMPHITHEATER' AND CivUniqueBuildingType NOT IN ('BUILDING_MARAE');

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,              'BUILDING_JNR_MEDIA_CENTER'
FROM    BuildingReplaces    WHERE   ReplacesBuildingType='BUILDING_BROADCAST_CENTER' AND CivUniqueBuildingType NOT IN ('BUILDING_FILM_STUDIO');

insert or ignore into MutuallyExclusiveBuildings
	(Building,					MutuallyExclusiveBuilding)
select
	BuildingType,				'BUILDING_AMPHITHEATER'
from Buildings where BuildingType='BUILDING_MARAE';

insert or ignore into MutuallyExclusiveBuildings
	(Building,					MutuallyExclusiveBuilding)
select
	'BUILDING_AMPHITHEATER',	BuildingType
from Buildings where BuildingType='BUILDING_MARAE';
--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
DELETE FROM StartingBuildings WHERE District='DISTRICT_THEATER';
--------------------------------------------------------------