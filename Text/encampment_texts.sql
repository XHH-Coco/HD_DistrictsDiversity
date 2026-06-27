insert or replace into EnglishText
	(Tag,															Text)
values
--火药
	("LOC_BOOST_TRIGGER_GUNPOWDER_HD",								"Build a Tier 2 building in Encampment district."),
--兵营
	("LOC_BUILDING_BARRACKS_DESCRIPTION_UC_JNR",					"+25% combat experience for all melee, anti-cavalry, ranged, and ranged cavalry land units trained in this city.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Stable or a Frontier Juncture.[NEWLINE][NEWLINE]+2 [ICON_PRODUCTION] Production to each improved [ICON_RESOURCE_IRON] Iron in this city. +2 [ICON_Strength] Combat strength for all melee, ranged, anti-cavalry units trained in this city."),
--马厩
	("LOC_BUILDING_STABLE_DESCRIPTION_UC_JNR",						"+25% combat experience for all cavalry and siege class units trained in this city.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Barracks or a Frontier Juncture.[NEWLINE][NEWLINE]+3 [ICON_PRODUCTION] Production to each improved [ICON_RESOURCE_HORSES] Horses in this city. +2 [ICON_Strength] Combat strength for all cavalry and siege units trained in this city."),
--斡耳朵
	("LOC_BUILDING_ORDU_DESCRIPTION_UC_JNR",						"A building unique to Mongolia, replaces the Stable building. Grants an ability that gives +1 [ICON_MOVEMENT] Movement to Heavy and Light Cavalry trained in this city. +25% combat experience for all cavalry and siege class units trained in this city.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Barracks or a Frontier Juncture.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Stable.[NEWLINE][NEWLINE]+2 [ICON_PRODUCTION] Production to each improved [ICON_RESOURCE_HORSES] Horses. +3 [ICON_Strength] Combat strength for all cavalry and siege units, and Keshig trained in this city."),
--皇家学堂
	("LOC_BUILDING_BASILIKOI_PAIDES_DESCRIPTION_UC_JNR",			"A building unique to Macedon, replaces the Barracks building and the Stable building and is unlocked earlier. +25% combat experience for all melee, ranged land units, and Hetairoi trained in this city. Gain [ICON_SCIENCE] Science equal to 25% of the unit's cost when a non civilian unit is created in this city.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Frontier Juncture.[NEWLINE][NEWLINE]+2 [ICON_PRODUCTION] Production to each improved [ICON_RESOURCE_HORSES] Horses and [ICON_RESOURCE_IRON] Iron in this city. +3 [ICON_Strength] Combat strength for all land combat, ranged and Hetairoi trained in this city."),
--边关
	("LOC_BUILDING_JNR_TARGET_RANGE_NAME",							"Frontier Juncture"),
	("LOC_BUILDING_JNR_TARGET_RANGE_DESCRIPTION",					"Costs 2 [ICON_RESOURCE_HORSES] Horses and 2 [ICON_RESOURCE_IRON] Iron per turn to provide an extra +4 influence points.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Barracks or a Stable.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production for improved Strategic resources in the city. "),
--募兵所
	("LOC_BUILDING_JNR_CAVALIER_NAME",								"Conscription Service"),
	("LOC_BUILDING_JNR_CAVALIER_DESCRIPTION",						"+50% Production speed towards all millitary units.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Armory or a Supply Depot.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production for improved Strategic resources in the city."),
--兵工厂
	("LOC_BUILDING_ARMORY_DESCRIPTION_UC_JNR",						"+25% combat experience for all land units trained in this city.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Conscription Service or a Supply Depot.[NEWLINE][NEWLINE]Strategic Resource Stockpiles increased +30 (on Standard Speed). +1 [ICON_PRODUCTION] Production for improved Strategic resources in the city. Military units trained in this city start with a free promotion."),
--补给站
	("LOC_BUILDING_JNR_DEPOT_NAME",									"Supply Depot"),
	("LOC_BUILDING_JNR_DEPOT_DESCRIPTION",							"Provides you with 1 of each Strategic resource per turn that you have revealed.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Conscription Service or a Armory.[NEWLINE][NEWLINE]+2 [ICON_PRODUCTION] Production and +2 [ICON_SCIENCE] SCIENCE for improved Strategic resources in the city."),
--军事学院
	("LOC_BUILDING_MILITARY_ACADEMY_DESCRIPTION_UC_JNR",			"+25% combat experience for all land units trained in this city. Allows Corps and Armies to be trained directly. Corps and Army training costs reduced 25%. Bonus [ICON_PRODUCTION] Production equal to the adjacency bonus of the Encampment district.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Military Propaganda Agency or a Military Science Academy.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production for improved Strategic resources in the city.  +10% accumulation rate for [ICON_GREATGENERAL] Great General Points for player. +3 [ICON_STRENGTH] Combat Strength for all land units trained in this city."),
--军事政治处
	("LOC_BUILDING_JNR_ARSENAL_NAME",								"Military Propaganda Agency"),
	("LOC_BUILDING_JNR_ARSENAL_DESCRIPTION",						"Receive a second unit each time you train a land unit. Bonus [ICON_CULTURE] Culture equal to the adjacency bonus of the Encampment district.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Military Academy or a Military Science Academy.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production for improved Strategic resources in the city."),
--军事研究院
	("LOC_BUILDING_JNR_PRISON_NAME",								"Military Science Academy"),
	("LOC_BUILDING_JNR_PRISON_DESCRIPTION",							"Each type of improved Strategic resources +50% adjacency bonuses for Encampment district in this City and +25% adjacency bonuses for Campus districts adjacent this Encampment district. Bonus [ICON_SCIENCE] Science equal to the adjacency bonus of the Encampment district.[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Military Academy or a Military Propaganda Agency.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production for improved Strategic resources in the city.");


insert or replace into LocalizedText
	(Language,		Tag,														Text)
values
--火药
	("zh_Hans_CN",	"LOC_BOOST_TRIGGER_GUNPOWDER_HD",							"建造1座军营二级建筑。"),
--兵营
	("zh_Hans_CN",	"LOC_BUILDING_BARRACKS_DESCRIPTION_UC_JNR",					"该城市中训练的所有近战、抗骑兵、远程和远程骑兵类陆地单位+25%战斗经验值。[NEWLINE][NEWLINE]无法建造在已有马厩或边关的军营区域中。[NEWLINE][NEWLINE]本城的所有已开发的 [ICON_RESOURCE_IRON] 铁资源+2 [ICON_Production] 生产力。为在本城训练的近战、远程、抗骑兵单位提供永久+2 [ICON_Strength] 战斗力。"),
--马厩
	("zh_Hans_CN",	"LOC_BUILDING_STABLE_DESCRIPTION_UC_JNR",					"该城市中训练的所有骑兵类和攻城类单位+25%战斗经验值。[NEWLINE][NEWLINE]不能建造在已有兵营或边关的军营区域中。[NEWLINE][NEWLINE]本城的所有已开发的 [ICON_RESOURCE_HORSES] 马资源+2 [ICON_Production] 生产力。为在本城训练的轻重骑兵和攻城类单位提供永久+2 [ICON_Strength] 战斗力。"),
--斡耳朵
	("zh_Hans_CN",	"LOC_BUILDING_ORDU_DESCRIPTION_UC_JNR",						"蒙古特色建筑，取代马厩。其所在城市中训练的轻重骑兵单位 [ICON_MOVEMENT] 移动力+1。其所在城市中训练的所有骑兵类和攻城类单位+25%战斗经验值。[NEWLINE][NEWLINE]无法建造在已拥有兵营或边关的军营区域中。[NEWLINE][NEWLINE]本城的所有已开发的 [ICON_RESOURCE_HORSES] 马资源+3 [ICON_Production] 生产力。为在本城训练的轻重骑兵、攻城类单位、怯薛歹提供永久+3 [ICON_Strength] 战斗力。"),
--皇家学堂
	("zh_Hans_CN",	"LOC_BUILDING_BASILIKOI_PAIDES_DESCRIPTION_UC_JNR",			"马其顿特色建筑，取代兵营和马厩且解锁更早。该城中训练的陆地近战、远程单位和伙友骑兵+25%战斗经验值。非平民单位在此城中创建时，获得等同于单位花费25%的 [ICON_SCIENCE] 科技值。[NEWLINE][NEWLINE]无法建造在已拥有边关的军营区域中。[NEWLINE][NEWLINE]本城的所有已开发的 [ICON_RESOURCE_HORSES] 马资源和 [ICON_RESOURCE_IRON] 铁资源+2 [ICON_Production] 生产力。为在本城训练的近战、远程、抗骑兵、攻城单位和伙友骑兵提供永久+3 [ICON_Strength] 战斗力。"),
--边关
	("zh_Hans_CN",	"LOC_BUILDING_JNR_TARGET_RANGE_NAME",						"边关"),
	("zh_Hans_CN",	"LOC_BUILDING_JNR_TARGET_RANGE_DESCRIPTION",				"每回合消耗2 [ICON_RESOURCE_HORSES] 马和2 [ICON_RESOURCE_IRON] 铁额外提供4点影响力点数。[NEWLINE][NEWLINE]无法建造在已拥有兵营或马厩的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。"),
--募兵所
	("zh_Hans_CN",	"LOC_BUILDING_JNR_CAVALIER_NAME",							"募兵所"),
	("zh_Hans_CN",	"LOC_BUILDING_JNR_CAVALIER_DESCRIPTION",					"本城生产所有军事单位时加速+50%。[NEWLINE][NEWLINE]无法建造在已拥有兵工厂或补给站的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。"),
--兵工厂
	("zh_Hans_CN",	"LOC_BUILDING_ARMORY_DESCRIPTION_UC_JNR",					"该城市中训练的所有陆地单位+25%战斗经验值。[NEWLINE][NEWLINE]无法建造在已拥有募兵所或补给站的军营区域中。[NEWLINE][NEWLINE]战略资源储备+30（标准速度下）。本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。此城中生产的所有军事单位若初始未拥有免费晋升，则其初始可获得免费晋升。"),
--补给站
	("zh_Hans_CN",	"LOC_BUILDING_JNR_DEPOT_NAME",								"补给站"),
	("zh_Hans_CN",	"LOC_BUILDING_JNR_DEPOT_DESCRIPTION",						"每回合提供1份文明已解锁战略资源。[NEWLINE][NEWLINE]无法建造在已拥有募兵所或兵工厂的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+2 [ICON_PRODUCTION] 生产力，+2 [ICON_SCIENCE] 科技值。"),
--军事学院
	("zh_Hans_CN",	"LOC_BUILDING_MILITARY_ACADEMY_DESCRIPTION_UC_JNR",			"该城市中训练的所有陆地单位+25%战斗经验值。可直接训练军团和军队。军团和军队的训练费用降低25%。[ICON_PRODUCTION] 生产力加成等于军营区域的相邻加成。[NEWLINE][NEWLINE]无法建造在已拥有军事政治处或军事研究院的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。玩家的 [ICON_GREATGENERAL] 大将军点数积累速度+10%，且所有训练的陆地单位+3 [ICON_STRENGTH] 战斗力。"),
--军事政治处
	("zh_Hans_CN",	"LOC_BUILDING_JNR_ARSENAL_NAME",							"军事政治处"),
	("zh_Hans_CN",	"LOC_BUILDING_JNR_ARSENAL_DESCRIPTION",						"训练陆地战斗单位时可以额外获得一个相同的单位。[ICON_CULTURE] 文化值加成等于军营区域的相邻加成。[NEWLINE][NEWLINE]无法建造在已拥有军事学院或军事研究院的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。"),
--军事研究院
	("zh_Hans_CN",	"LOC_BUILDING_JNR_PRISON_NAME",								"军事研究院"),
	("zh_Hans_CN",	"LOC_BUILDING_JNR_PRISON_DESCRIPTION",						"城市中每种改良的战略资源为本城的军营+50%相邻加成，为相邻该军营的学院+25%相邻加成。[ICON_SCIENCE] 科技值加成等于军营区域的相邻加成。[NEWLINE][NEWLINE]无法建造在已拥有军事学院或军事政治的军营区域中。[NEWLINE][NEWLINE]本城改良的战略资源+1 [ICON_PRODUCTION] 生产力。");

--政策卡
-- UPDATE LocalizedText SET Text=REPLACE(Text, 'Barracks or Stable','Barracks, Stable or Frontier Juncture')
-- WHERE Tag = 'LOC_POLICY_MARTIAL_ELECTION_DESCRIPTION';
-- UPDATE LocalizedText SET Text=REPLACE(Text, '兵营或马厩','兵营、马厩或边关')
-- WHERE Tag = 'LOC_POLICY_MARTIAL_ELECTION_DESCRIPTION';
-- UPDATE LocalizedText SET Text=REPLACE(Text, 'Military Academy','Military Academy, Military Propaganda Agency, Military Science Academy')
-- WHERE Tag = 'LOC_POLICY_MILITARY_RESEARCH_EXPANSION1_DESCRIPTION' or Tag = 'LOC_POLICY_INTEGRATED_SPACE_CELL_DESCRIPTION' or Tag = 'LOC_POLICY_MILITARY_ORGANIZATION_DESCRIPTION_XP2';
-- UPDATE LocalizedText SET Text=REPLACE(Text, '军事学院','军事学院、军事政治处、军事研究院')
-- WHERE Tag = 'LOC_POLICY_MILITARY_RESEARCH_EXPANSION1_DESCRIPTION' or Tag = 'LOC_POLICY_INTEGRATED_SPACE_CELL_DESCRIPTION' or Tag = 'LOC_POLICY_MILITARY_ORGANIZATION_DESCRIPTION_XP2';

-- UPDATE LocalizedText SET Text=REPLACE(Text, 'Armory','Armory, Conscription Service or Supply Depot') WHERE Tag = 'LOC_POLICY_MILITARY_ORGANIZATION_DESCRIPTION_XP2' or Tag = 'LOC_GOVERNOR_PROMOTION_PASHA_DESCRIPTION';
-- UPDATE LocalizedText SET Text=REPLACE(Text, '兵工厂','兵工厂、募兵所或补给站') WHERE Tag = 'LOC_POLICY_MILITARY_ORGANIZATION_DESCRIPTION_XP2' or Tag = 'LOC_GOVERNOR_PROMOTION_PASHA_DESCRIPTION';

--城邦
-- MINOR_CIV_LAHORE_NIHANG
UPDATE LocalizedText SET Text=REPLACE(Text, 'Barracks, Armory, and Military Academy','Barracks or Stable or Frontier Juncture, Supply Depot or Conscription Service or Armory and Military Academy or Military Propaganda Agency or Military Science Academy') WHERE Tag = 'LOC_LEADER_TRAIT_LAHORE_DESCRIPTION';
UPDATE LocalizedText SET Text=REPLACE(Text, '兵营、兵工厂和军事学院时','兵营或马厩或边关、兵工厂或募兵所或补给站和军事学院或军事政治处或军事研究院时') WHERE Tag = 'LOC_LEADER_TRAIT_LAHORE_DESCRIPTION';