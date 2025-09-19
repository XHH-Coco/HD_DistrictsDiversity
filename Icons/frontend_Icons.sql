-- UC_AQD_Icons_UniqueDistricts
-- Author: JNR
--------------------------------------------------------------

-- IconDefinitions
--------------------------------------------------------------
INSERT OR REPLACE INTO IconDefinitions
        (Name,                      Atlas,                  'Index')
SELECT  'ICON_DISTRICT_BATH',       'ICON_ATLAS_DISTRICTS', 11
where exists (select Atlas from IconDefinitions where Atlas = 'ICON_ATLAS_BDI');
--------------------------------------------------------------
