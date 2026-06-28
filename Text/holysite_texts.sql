-- English
--------------------------------------------------------------
insert or replace into EnglishText
    (Tag,                                                           Text)
values  
    ("LOC_BUILDING_SHRINE_DESCRIPTION",                             "Allows the purchasing of Builders using [ICON_FAITH] Faith. Allows the purchasing of Missionaries (can only be purchased with [ICON_FAITH] Faith)."),
    ("LOC_BUILDING_JNR_ALTAR_NAME",                                 "Altar"),
    ("LOC_BUILDING_JNR_ALTAR_DESCRIPTION",                          "If you have at least 2 Medicine Resources, +1 [ICON_Science] Science for regional yield. If you have at least 2 Celebration Resources, +1 regional range tile. Allows the purchasing of Builders using [ICON_FAITH] Faith."),
    ("LOC_BUILDING_TEMPLE_DESCRIPTION",                             "Allows the purchasing of Settlers using [ICON_FAITH] Faith. Allows the purchasing of Apostles, Gurus, Inquisitors, and with the proper belief, Warrior Monks (these units can only be purchased with [ICON_FAITH] Faith)."),
    ("LOC_BUILDING_JNR_MONASTERY_NAME",                             "Church"),
    ("LOC_BUILDING_JNR_MONASTERY_DESCRIPTION",                      "Allows the purchasing of Settlers using [ICON_FAITH] Faith. Allows the purchasing of Apostles, Gurus, Inquisitors, and with the proper belief, Warrior Monks (these units can only be purchased with [ICON_FAITH] Faith)."),
    ("LOC_BUILDING_PRASAT_DESCRIPTION_UC_JNR",                      "A building unique to Khmer. Replaces the Temple. Allows the purchasing of Settlers using [ICON_FAITH] Faith. Allows the purchasing of Apostles, Gurus, Inquisitors, and with the proper belief, Warrior Monks (these units can only be purchased with [ICON_Faith] Faith). [ICON_CITIZEN] Citizens in this is provide +0.5 [ICON_Culture] Culture."),
    ("LOC_BUILDING_STAVE_CHURCH_NAME",                              "Borgund Stave Church"),
    ("LOC_BUILDING_STAVE_CHURCH_DESCRIPTION_UC_JNR",                "A building unique to Norway. This building can only be built once per civilization. Allows the purchasing of Settlers using [ICON_FAITH] Faith. Allows the purchasing of Apostles, Gurus, Inquisitors, and with the proper belief, Warrior Monks (these units can only be purchased with [ICON_FAITH] Faith). Coastal Cities receive +2 [ICON_CULTURE] Culture and +2 [ICON_FAITH] Faith. Each Theatre Square District provides +2 [ICON_CULTURE] Culture for the Borgund Stave Church, and each Holy Site District provides +2 [ICON_FAITH] Faith for the Borgund Stave Church. Fishing Boats in your empire provide +3 [ICON_GOLD] Gold."),
    ("LOC_BUILDING_JNR_HOSPITIUM_NAME",                             "Sacred Music Church"),
    ("LOC_BUILDING_JNR_HOSPITIUM_DESCRIPTION",                      "[ICON_GREATWORK_RELIGIOUS] Religious, [ICON_GREATWORK_RELIC] Relic and [ICON_GREATWORK_Music] Music in this city +50% [ICON_TOURISM] Tourism. [ICON_CITIZEN] Citizens in this is provide +0.5 [ICON_Culture] Culture and [ICON_FAITH] Faith."),
    ("LOC_BUILDING_JNR_GARDEN_NAME",                                "Garden"),
    ("LOC_BUILDING_JNR_GARDEN_DESCRIPTION",                         "[ICON_GREATWORK_SCULPTURE] Sculpture, [ICON_GREATWORK_PORTRAIT] Portrait and [ICON_GREATWORK_LANDSCAPE] Landscape of Great Work in this city +50% [ICON_TOURISM] Tourism. If city has at least 10 [ICON_CITIZEN] Citizens, +10% [ICON_GREATPERSON] Great Person points. Otherwise +10% Growth rate. "),
    ("LOC_UNIT_WARRIOR_MONK_DESCRIPTION",                           "Fast-moving land combat unit with a unique promotion tree. Can only be purchased with [ICON_FAITH] Faith in city with Temple or Church.");

insert or replace into LocalizedText
    (Language,      Tag,                                                    Text)
values
    ("zh_Hans_CN",  "LOC_BUILDING_SHRINE_DESCRIPTION",                      "允许使用 [ICON_FAITH] 信仰值购买建造者和传教士。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ALTAR_NAME",                          "祭坛"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_ALTAR_DESCRIPTION",                   "若你拥有至少2种医药资源，辐射产出+1 [ICON_Science] 科技值。若你拥有至少2种庆典资源，辐射范围+1单元格。允许使用 [ICON_FAITH] 信仰值购买建造者和传教士。"),
    ("zh_Hans_CN",  "LOC_BUILDING_TEMPLE_DESCRIPTION",                      "允许使用 [ICON_FAITH] 信仰值购买开拓者、使徒、上师、审判官，拥有特定信仰还可购买武僧。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MONASTERY_NAME",                      "教堂"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_MONASTERY_DESCRIPTION",               "允许使用 [ICON_FAITH] 信仰值购买开拓者、使徒、上师、审判官，拥有特定信仰还可购买武僧。"),
    ("zh_Hans_CN",  "LOC_BUILDING_PRASAT_DESCRIPTION_UC_JNR",               "高棉特色建筑。取代寺庙。每位 [ICON_CITIZEN] 市民+0.5 [ICON_Culture] 文化值。允许使用 [ICON_FAITH] 信仰值购买开拓者、使徒、上师、审判官，拥有特定信仰还可购买武僧。"),
    ("zh_Hans_CN",  "LOC_BUILDING_STAVE_CHURCH_NAME",                       "博尔贡木板教堂"),
    ("zh_Hans_CN",  "LOC_BUILDING_STAVE_CHURCH_DESCRIPTION_UC_JNR",         "挪威特色建筑，文明中一次仅限建造一座该建筑。为沿海城市+2 [ICON_CULTURE] 文化值和+2 [ICON_FAITH] 信仰值。全国每座剧院广场为博尔贡木板教堂+2 [ICON_CULTURE] 文化值，每座圣地为博尔贡木板教堂+2 [ICON_FAITH] 信仰值。全国的渔船+3 [ICON_GOLD] 金币。允许使用 [ICON_FAITH] 信仰值购买开拓者、使徒、上师、审判官，拥有特定信仰还可购买武僧。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITIUM_NAME",                      "圣乐教会"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_HOSPITIUM_DESCRIPTION",               "此城市的 [ICON_GREATWORK_RELIGIOUS] 宗教艺术巨作、[ICON_GREATWORK_RELIC] 遗物和[ICON_GREATWORK_Music] 音乐巨作产出的 [ICON_TOURISM] 旅游业绩+50%。本城每位 [ICON_CITIZEN] 市民+0.5 [ICON_FAITH] 信仰值和 [ICON_Culture] 文化值。"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GARDEN_NAME",                         "花园"),
    ("zh_Hans_CN",  "LOC_BUILDING_JNR_GARDEN_DESCRIPTION",                  "此城市的 [ICON_GREATWORK_SCULPTURE] 雕塑、[ICON_GREATWORK_PORTRAIT] 肖像和 [ICON_GREATWORK_LANDSCAPE] 风景艺术巨作产出的 [ICON_TOURISM] 旅游业绩+50%。若城市拥有至少10 [ICON_CITIZEN] 公民，则+20% [ICON_GREATPERSON] 伟人点，否则余粮+20%。"),
    ("zh_Hans_CN",  "LOC_UNIT_WARRIOR_MONK_DESCRIPTION",                    "高移动力的陆地战斗单位，拥有独特的升级树。只能在有寺庙或教堂的城市通过 [ICON_FAITH] 信仰值购买。");