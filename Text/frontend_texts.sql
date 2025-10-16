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