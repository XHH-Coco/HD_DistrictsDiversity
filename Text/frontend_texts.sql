-- Revert theater renaming
UPDATE LocalizedText SET Text = REPLACE(Text, 'Civic Squares', 'Theater Squares')   WHERE Tag = Tag;
UPDATE LocalizedText SET Text = REPLACE(Text, 'Civic Square', 'Theater Square')     WHERE Tag = Tag;
DROP TRIGGER JNR_UC_THR_LocalizedText_Districts_en;

UPDATE LocalizedText SET Text = REPLACE(Text, "文化区", "剧院广场") WHERE Tag = Tag;

-- Aqueduct renaming
CREATE TRIGGER HD_FRONTEND_JNR_UC_AQD_LocalizedText_Districts_zh_Hans
AFTER INSERT ON LocalizedText
WHEN NEW.Text LIKE "%水渠%"
BEGIN
    UPDATE LocalizedText SET Text = REPLACE(Text, '水渠', '蓄水池')   WHERE Tag = NEW.Tag AND Language = 'zh_Hans_CN' and Tag != 'LOC_DISTRICT_BATH_NAME_JNR_UC'
    AND EXISTS (SELECT Tag FROM EnglishText WHERE Tag = "LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC");
END;

CREATE TRIGGER HD_FRONTEND_JNR_UC_AQD_LocalizedText_Districts_en
AFTER INSERT ON LocalizedText
WHEN NEW.Text LIKE "%an Aqueduct%" OR NEW.Text LIKE "%Aqueducts%" OR NEW.Text LIKE "%Aqueduct%"
BEGIN
    UPDATE LocalizedText SET Text = REPLACE(Text, 'an Aqueduct', 'a Cistern')   WHERE Tag = NEW.Tag AND Language = 'en_US'
    AND EXISTS (SELECT Tag FROM EnglishText WHERE Tag = "LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC");
    UPDATE LocalizedText SET Text = REPLACE(Text, 'Aqueducts', 'Cisterns')   WHERE Tag = NEW.Tag AND Language = 'en_US'
    AND EXISTS (SELECT Tag FROM EnglishText WHERE Tag = "LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC");
    UPDATE LocalizedText SET Text = REPLACE(Text, 'Aqueduct', 'Cistern')   WHERE Tag = NEW.Tag AND Language = 'en_US' and Tag != 'LOC_DISTRICT_BATH_NAME_JNR_UC'
    AND EXISTS (SELECT Tag FROM EnglishText WHERE Tag = "LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC");
END;

-- May cause error when not enblaed. but still works for above ones.
DROP TRIGGER C8S_JNR_UC_THR_LocalizedText_Districts_zh_Hans_CN;
-- --------------------------------------------------------------------------------
-- -- Language: en_US
-- insert or replace into EnglishText
--     (Tag,                                                           Text)
-- values
--     ("LOC_BUILDING_MARAE_DESCRIPTION_UC_JNR",                       "A building unique to the Māori. +2 [ICON_Culture] Culture. +1 [ICON_CULTURE] Culture and +1 [ICON_FAITH] Faith to all of this city's tiles with a passable feature or natural wonder. +1 [ICON_CULTURE] Culture for every three coast or lake tiles in this city. After Flight is researched, receive +1 [ICON_TOURISM] Tourism to all of this city's tiles with a feature or natural wonder. Has no Great Work slots."),
--     ("LOC_BUILDING_FILM_STUDIO_DESCRIPTION_UC_JNR",                 "A building unique to America. +100% [ICON_Tourism] Tourism pressure from this city towards other civilizations in the Modern era. +10% [ICON_CULTURE] Culture in this city. +10% [ICON_CULTURE] Culture if this city is fully powered. +100% [ICON_TOURISM] Tourism for [ICON_GreatWork_Music] Great Works of Music in this city."),
--     ("LOC_BUILDING_ELECTRONICS_FACTORY_DESCRIPTION_UC_JNR",         "A building unique to Japan that replace Logistics Center, provide regional [ICON_Science] Science and [ICON_Culture] Culture yields. [ICON_Citizen] Citizens in this city provide +1 [ICON_Production] Production and +2 [ICON_Gold] Gold.");

-- --------------------------------------------------------------------------------
-- -- Language: zh_Hans_CN
-- insert or replace into LocalizedText
--     (Language,      Tag,                                                        Text)
-- values
--     ("zh_Hans_CN",  "LOC_DISTRICT_BATH_NAME_JNR_UC",                            "测试 Theater Square"),
--     ("zh_Hans_CN",  "LOC_BUILDING_MARAE_DESCRIPTION_UC_JNR",                    "+2 [ICON_Culture] 文化值。毛利特色建筑。城市中所有包含可通行地貌或自然奇观的单元格+1 [ICON_CULTURE] 文化值与 [ICON_FAITH] 信仰值。此城中每拥有3个海岸或湖泊单元格，则+1 [ICON_CULTURE] 文化值。研究“飞行”科技后，城市中所有包含地貌或自然奇观的单元格+1 [ICON_TOURISM] 旅游业绩。无巨作槽位。"),
--     ("zh_Hans_CN",  "LOC_BUILDING_FILM_STUDIO_DESCRIPTION_UC_JNR",              "美国特色建筑。对进入现代的文明，本城+100% [ICON_TOURISM] 旅游业绩。本城 [ICON_CULTURE] 文化值+10%，通电后额外为本城+10% [ICON_CULTURE] 文化值。所在城市中的 [ICON_GreatWork_Music] 音乐巨作产出的 [ICON_TOURISM] 旅游业绩翻倍。"),
--     ('zh_Hans_CN',  "LOC_BUILDING_ELECTRONICS_FACTORY_DESCRIPTION_UC_JNR",      "日本特色建筑，取代物流中心，提供可辐射的 [ICON_Science] 科技和 [ICON_Culture] 文化值。 本城每个 [ICON_Citizen] 公民额外产出+1 [ICON_Production] 生产力和+2 [ICON_Gold] 金币。");
