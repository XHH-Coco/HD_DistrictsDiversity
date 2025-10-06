-- UC_COM_Icons
-- Author: JNR
--------------------------------------------------------------

-- IconTextureAtlases
--------------------------------------------------------------
INSERT OR IGNORE INTO IconTextureAtlases
        (Name,                                  IconSize,   IconsPerRow,    IconsPerColumn, Filename)
VALUES  ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     32,         4,              4,              'UC_COM_Buildings32.dds'),
        ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     38,         4,              4,              'UC_COM_Buildings38.dds'),
        ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     50,         4,              4,              'UC_COM_Buildings50.dds'),
        ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     80,         4,              4,              'UC_COM_Buildings80.dds'),
        ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     128,        4,              4,              'UC_COM_Buildings128.dds'),
        ('ICON_ATLAS_JNR_UC_COM_BUILDINGS',     256,        4,              4,              'UC_COM_Buildings256.dds');
--------------------------------------------------------------

-- IconDefinitions
--------------------------------------------------------------
INSERT OR REPLACE INTO IconDefinitions
        (Name,                                          Atlas,                              'Index')
VALUES  ('ICON_BUILDING_JNR_WAYSTATION',                'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  0),
        ('ICON_BUILDING_JNR_MINT',                      'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  1),
        ('ICON_BUILDING_JNR_GUILDHALL',                 'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  2),
        ('ICON_BUILDING_JNR_MERCHANT_QUARTER',          'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  3),
        ('ICON_BUILDING_STOCK_EXCHANGE',                'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  4),
        ('ICON_BUILDING_JNR_COMMODITY_EXCHANGE',        'ICON_ATLAS_BUILDINGS',             28),
        ('ICON_BUILDING_JNR_MARKETING_AGENCY',          'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  5),
        ('ICON_BUILDING_LIGHTHOUSE',                    'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  7),
        ('ICON_BUILDING_JNR_LIGHTHOUSE_FISHING',        'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  6),
        ('ICON_BUILDING_SHIPYARD',                      'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  8),
        ('ICON_BUILDING_JNR_FISH_MARKET',                  'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  10),
        ('ICON_BUILDING_JNR_ENTREPOT',                     'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  9),
        ('ICON_BUILDING_JNR_WHARF_BASE',                'ICON_ATLAS_JNR_UC_COM_BUILDINGS',  12),

        ('ICON_BUILDING_JNR_MINT_FOW',                  'ICON_ATLAS_BUILDINGS_FOW', 11),
        ('ICON_BUILDING_JNR_WAYSTATION_FOW',            'ICON_ATLAS_BUILDINGS_FOW', 11),
        ('ICON_BUILDING_JNR_GUILDHALL_FOW',             'ICON_ATLAS_BUILDINGS_FOW', 23),
        ('ICON_BUILDING_JNR_MERCHANT_QUARTER_FOW',      'ICON_ATLAS_BUILDINGS_FOW', 23),
        ('ICON_BUILDING_JNR_COMMODITY_EXCHANGE_FOW',    'ICON_ATLAS_BUILDINGS_FOW', 28),
        ('ICON_BUILDING_JNR_MARKETING_AGENCY_FOW',      'ICON_ATLAS_BUILDINGS_FOW', 28),
        ('ICON_BUILDING_JNR_WHARF_BASE_FOW',            'ICON_ATLAS_BUILDINGS_FOW', 22),
        ('ICON_BUILDING_JNR_LIGHTHOUSE_FISHING_FOW',      'ICON_ATLAS_BUILDINGS_FOW', 10),
        ('ICON_BUILDING_JNR_ENTREPOT_FOW',                 'ICON_ATLAS_BUILDINGS_FOW', 22),
        ('ICON_BUILDING_JNR_FISH_MARKET_FOW',              'ICON_ATLAS_BUILDINGS_FOW', 22);

--------------------------------------------------------------