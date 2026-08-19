-- UC_AQD_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
        (Type,                                         Kind)
VALUES  ('BUILDING_JNR_ORCHARD',                       'KIND_BUILDING'),
        ('BUILDING_JNR_HAMMER_WORKS',                  'KIND_BUILDING'),
        ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',       'KIND_BUILDING'),
        ('BUILDING_JNR_BATHHOUSE',                     'KIND_BUILDING');
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
        (BuildingType,                                  PrereqDistrict,         PrereqTech,             Cost,   Maintenance,    CitizenSlots,   Housing,    Entertainment,  PurchaseYield,  AdvisorType,        Name,                                           Description)
VALUES  ('BUILDING_JNR_ORCHARD',                        'DISTRICT_AQUEDUCT',    'TECH_MATHEMATICS',     210,    0,              2,              2,          0,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_ORCHARD_NAME',                'LOC_BUILDING_JNR_ORCHARD_DESCRIPTION'),
        ('BUILDING_JNR_HAMMER_WORKS',                   'DISTRICT_AQUEDUCT',    'TECH_MACHINERY',       210,    1,              2,              0,          0,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_HAMMER_WORKS_NAME',           'LOC_BUILDING_JNR_HAMMER_WORKS_DESCRIPTION'),
        ('BUILDING_JNR_BATHHOUSE',                      'DISTRICT_AQUEDUCT',    'TECH_CONSTRUCTION',    210,    1,              2,              0,          0,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_BATHHOUSE_NAME',              'LOC_BUILDING_JNR_BATHHOUSE_DESCRIPTION'),
        ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',        'DISTRICT_AQUEDUCT',    'TECH_TEXTILE_HD',      210,    1,              2,              0,          0,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_NAME','LOC_BUILDING_HD_HYDRAULIC_SPINNING_WHEEL_DESCRIPTION');

UPDATE Buildings SET PrereqDistrict='DISTRICT_AQUEDUCT', Cost=290, Housing=1, CitizenSlots=1 WHERE BuildingType='BUILDING_SEWER';

UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_WATER_TREATMENT';
--------------------------------------------------------------
-- BuildingPrereqs
--------------------------------------------------------------
INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
VALUES  ('BUILDING_SEWER',              'BUILDING_JNR_ORCHARD'),
        ('BUILDING_SEWER',              'BUILDING_JNR_HAMMER_WORKS'),
        ('BUILDING_SEWER',              'BUILDING_JNR_BATHHOUSE'),
        ('BUILDING_SEWER',              'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL');

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                      MutuallyExclusiveBuilding)
VALUES  ('BUILDING_JNR_ORCHARD',        'BUILDING_JNR_HAMMER_WORKS'),
        ('BUILDING_JNR_ORCHARD',        'BUILDING_JNR_BATHHOUSE'),
        ('BUILDING_JNR_ORCHARD',        'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL'),

        ('BUILDING_JNR_HAMMER_WORKS',   'BUILDING_JNR_ORCHARD'),
        ('BUILDING_JNR_HAMMER_WORKS',   'BUILDING_JNR_BATHHOUSE'),
        ('BUILDING_JNR_HAMMER_WORKS',   'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL'),

        ('BUILDING_JNR_BATHHOUSE',      'BUILDING_JNR_ORCHARD'),
        ('BUILDING_JNR_BATHHOUSE',      'BUILDING_JNR_HAMMER_WORKS'),
        ('BUILDING_JNR_BATHHOUSE',      'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL'),

        ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'BUILDING_JNR_ORCHARD'),
        ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'BUILDING_JNR_HAMMER_WORKS'),
        ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'BUILDING_JNR_BATHHOUSE');
--------------------------------------------------------------
