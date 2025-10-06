-- UC_NBH_Icons
-- Author: JNR
--------------------------------------------------------------

-- IconTextureAtlases
--------------------------------------------------------------
INSERT OR IGNORE INTO IconTextureAtlases
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
VALUES	('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		32,			4,				2,				'UC_NBH_Buildings32.dds'),
		('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		38,			4,				2,				'UC_NBH_Buildings38.dds'),
		('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		50,			4,				2,				'UC_NBH_Buildings50.dds'),
		('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		80,			4,				2,				'UC_NBH_Buildings80.dds'),
		('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		128,		4,				2,				'UC_NBH_Buildings128.dds'),
		('ICON_ATLAS_JNR_UC_NBH_BUILDINGS',		256,		4,				2,				'UC_NBH_Buildings256.dds');
--------------------------------------------------------------

-- IconDefinitions
--------------------------------------------------------------
INSERT OR REPLACE INTO IconDefinitions
		(Name,										Atlas,								'Index')
VALUES	('ICON_DISTRICT_NEIGHBORHOOD',				'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	6),

		('ICON_BUILDING_JNR_TRANSIT_HUB',			'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	4),
		('ICON_BUILDING_JNR_RECYCLING_PLANT',		'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	0),
		('ICON_BUILDING_JNR_HOSPITAL',				'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	1),
		
		('ICON_BUILDING_JNR_TRANSIT_HUB_FOW',		'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	4),
		('ICON_BUILDING_JNR_RECYCLING_PLANT_FOW',	'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	0),
		('ICON_BUILDING_JNR_HOSPITAL_FOW',			'ICON_ATLAS_JNR_UC_NBH_BUILDINGS',	1);
--------------------------------------------------------------