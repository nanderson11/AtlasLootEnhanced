-- AtlasLoot loot tables zhCN locale file
-- NOTE: THIS FILE IS AUTO-GENERATED BY A TOOL, ANY MANUALLY CHANGE MIGHT BE OVERWRITTEN.
-- $Id: GeneralPvP.cn.lua 265 2008-07-25 01:25:00Z kurax $

if GetLocale() == "zhCN" then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootGeneralPvPItems"][category] or #AtlasLoot_Data["AtlasLootGeneralPvPItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootGeneralPvPItems"][category][i][3] = data[i] end end data = nil end
Process("Arena2Druid",21,{"","=q4=残酷角斗士的龙皮头盔","=q4=残酷角斗士的龙皮护肩","=q4=残酷角斗士的龙皮外套","=q4=残酷角斗士的龙皮手套","=q4=残酷角斗士的龙皮护腿","","","=q4=残酷角斗士的蟒皮头盔","=q4=残酷角斗士的蟒皮护肩","=q4=残酷角斗士的蟒皮外套","=q4=残酷角斗士的蟒皮手套","=q4=残酷角斗士的蟒皮护腿","","","","=q4=残酷角斗士的科多皮头盔","=q4=残酷角斗士的科多皮护肩","=q4=残酷角斗士的科多皮外套","=q4=残酷角斗士的科多皮手套","=q4=残酷角斗士的科多皮护腿"})
Process("Arena2Hunter",6,{"","=q4=残酷角斗士的链甲头盔","=q4=残酷角斗士的链甲护肩","=q4=残酷角斗士的链甲护胸","=q4=残酷角斗士的链甲护手","=q4=残酷角斗士的链甲护腿"})
Process("Arena2Mage",6,{"","=q4=残酷角斗士的丝质罩帽","=q4=残酷角斗士的丝质护肩","=q4=残酷角斗士的丝质外衣","=q4=残酷角斗士的丝质护手","=q4=残酷角斗士的丝质长裤"})
Process("Arena2Paladin",21,{"","=q4=残酷角斗士的板层甲头盔","=q4=残酷角斗士的板层甲护肩","=q4=残酷角斗士的板层甲护胸","=q4=残酷角斗士的板层甲护手","=q4=残酷角斗士的板层甲护腿","","","=q4=残酷角斗士的板鳞甲头盔","=q4=残酷角斗士的板鳞甲护肩","=q4=残酷角斗士的板鳞甲护胸","=q4=残酷角斗士的板鳞甲护手","=q4=残酷角斗士的板鳞甲护腿","","","","=q4=残酷角斗士的雕饰板甲头罩","=q4=残酷角斗士的雕饰板甲护肩","=q4=残酷角斗士的雕饰板甲护胸","=q4=残酷角斗士的雕饰板甲手套","=q4=残酷角斗士的雕饰板甲护腿"})
Process("Arena2Priest",13,{"","=q4=残酷角斗士的绸缎罩帽","=q4=残酷角斗士的绸缎护肩","=q4=残酷角斗士的绸缎长袍","=q4=残酷角斗士的绸缎手套","=q4=残酷角斗士的绸缎护腿","","","=q4=残酷角斗士的月布兜帽","=q4=残酷角斗士的月布衬肩","=q4=残酷角斗士的月布长袍","=q4=残酷角斗士的月布手套","=q4=残酷角斗士的月布护腿"})
Process("Arena2Rogue",6,{"","=q4=残酷角斗士的皮甲头盔","=q4=残酷角斗士的皮甲护肩","=q4=残酷角斗士的皮甲外套","=q4=残酷角斗士的皮甲手套","=q4=残酷角斗士的皮甲护腿"})
Process("Arena2Shaman",21,{"","=q4=残酷角斗士的鳞甲头盔","=q4=残酷角斗士的鳞甲护肩","=q4=残酷角斗士的鳞甲护胸","=q4=残酷角斗士的鳞甲护手","=q4=残酷角斗士的鳞甲护腿","","","=q4=残酷角斗士的锁甲头盔","=q4=残酷角斗士的锁甲护肩","=q4=残酷角斗士的锁甲护胸","=q4=残酷角斗士的锁甲手套","=q4=残酷角斗士的锁甲护腿","","","","=q4=残酷角斗士的环甲头盔","=q4=残酷角斗士的环甲护肩","=q4=残酷角斗士的环甲护胸","=q4=残酷角斗士的环甲护手","=q4=残酷角斗士的环甲护腿"})
Process("Arena2Warlock",13,{"","=q4=残酷角斗士的鬼纹罩帽","=q4=残酷角斗士的鬼纹护肩","=q4=残酷角斗士的鬼纹长袍","=q4=残酷角斗士的鬼纹手套","=q4=残酷角斗士的鬼纹护腿","","","=q4=残酷角斗士的邪纹兜帽","=q4=残酷角斗士的邪纹护肩","=q4=残酷角斗士的邪纹外衣","=q4=残酷角斗士的邪纹护手","=q4=残酷角斗士的邪纹长裤"})
Process("Arena2Warrior",6,{"","=q4=残酷角斗士的板甲头盔","=q4=残酷角斗士的板甲护肩","=q4=残酷角斗士的板甲护胸","=q4=残酷角斗士的板甲手套","=q4=残酷角斗士的板甲护腿"})
Process("Arena2Weapons1",27,{"=q4=残酷角斗士的右拳刃","=q4=残酷角斗士的左拳刃","=q4=残酷角斗士的法术之刃","=q4=残酷角斗士的军刺","=q4=残酷角斗士的刺刀","=q4=残酷角斗士的军刀","=q4=残酷角斗士的迅捷之刃","=q4=残酷角斗士的巨剑","=q4=残酷角斗士的利斧","=q4=残酷角斗士的轻斧","=q4=残酷角斗士的斩首斧","=q4=残酷角斗士的木槌","=q4=残酷角斗士的拯救","=q4=残酷角斗士的轻锤","=q4=残酷角斗士的碎骨锤","=q4=残酷角斗士的碾骨锤","=q4=残酷角斗士的重槌","=q4=残酷角斗士的痛苦之锯","=q4=残酷角斗士的战斗法杖","=q4=残酷角斗士的屏障","=q4=残酷角斗士的壁垒","=q4=残酷角斗士的墙盾","=q4=残酷角斗士的战刃","=q4=残酷角斗士的凤凰之弩","=q4=残酷角斗士的挫败之触","=q4=残酷角斗士的决战","=q4=残酷角斗士的缓刑"})
Process("Arena2Weapons2",9,{"=q4=残酷角斗士的决心神像","=q4=残酷角斗士的坚定神像","=q4=残酷角斗士的顽强神像","=q4=残酷角斗士的坚韧圣契","=q4=残酷角斗士的公正圣契","=q4=残酷角斗士的复仇圣契","=q4=残酷角斗士的无畏图腾","=q4=残酷角斗士的生存图腾","=q4=残酷角斗士的狂风图腾"})
Process("Arena3Druid",21,{"","=q4=复仇角斗士的龙皮头盔","=q4=复仇角斗士的龙皮护肩","=q4=复仇角斗士的龙皮外套","=q4=复仇角斗士的龙皮手套","=q4=复仇角斗士的龙皮护腿","","","=q4=复仇角斗士的蟒皮头盔","=q4=复仇角斗士的蟒皮护肩","=q4=复仇角斗士的蟒皮外套","=q4=复仇角斗士的蟒皮手套","=q4=复仇角斗士的蟒皮护腿","","","","=q4=复仇角斗士的科多皮头盔","=q4=复仇角斗士的科多皮护肩","=q4=复仇角斗士的科多皮外套","=q4=复仇角斗士的科多皮手套","=q4=复仇角斗士的科多皮护腿"})
Process("Arena3Hunter",6,{"","=q4=复仇角斗士的链甲头盔","=q4=复仇角斗士的链甲护肩","=q4=复仇角斗士的链甲护胸","=q4=复仇角斗士的链甲护手","=q4=复仇角斗士的链甲护腿"})
Process("Arena3Mage",6,{"","=q4=复仇角斗士的丝质罩帽","=q4=复仇角斗士的丝质护肩","=q4=复仇角斗士的丝质外衣","=q4=复仇角斗士的丝质护手","=q4=复仇角斗士的丝质长裤"})
Process("Arena3Paladin",21,{"","=q4=复仇角斗士的板层甲头盔","=q4=复仇角斗士的板层甲护肩","=q4=复仇角斗士的板层甲护胸","=q4=复仇角斗士的板层甲护手","=q4=复仇角斗士的板层甲护腿","","","=q4=复仇角斗士的板鳞甲头盔","=q4=复仇角斗士的板鳞甲护肩","=q4=复仇角斗士的板鳞甲护胸","=q4=复仇角斗士的板鳞甲手套","=q4=复仇角斗士的板鳞甲护腿","","","","=q4=复仇角斗士的雕饰板甲头盔","=q4=复仇角斗士的雕饰板甲护肩","=q4=复仇角斗士的雕饰板甲护胸","=q4=复仇角斗士的雕饰板甲手套","=q4=复仇角斗士的雕饰板甲护腿"})
Process("Arena3Priest",13,{"","=q4=复仇角斗士的绸缎兜帽","=q4=复仇角斗士的绸缎衬肩","=q4=复仇角斗士的绸缎长袍","=q4=复仇角斗士的绸缎手套","=q4=复仇角斗士的绸缎护腿","","","=q4=复仇角斗士的月布兜帽","=q4=复仇角斗士的月布护肩","=q4=复仇角斗士的月布长袍","=q4=复仇角斗士的月布手套","=q4=复仇角斗士的月布护腿"})
Process("Arena3Rogue",6,{"","=q4=复仇角斗士的皮甲头盔","=q4=复仇角斗士的皮甲护肩","=q4=复仇角斗士的皮甲外套","=q4=复仇角斗士的皮甲手套","=q4=复仇角斗士的皮甲护腿"})
Process("Arena3Shaman",21,{"","=q4=复仇角斗士的鳞甲头盔","=q4=复仇角斗士的鳞甲护肩","=q4=复仇角斗士的鳞甲护胸","=q4=复仇角斗士的鳞甲护手","=q4=复仇角斗士的鳞甲护腿","","","=q4=复仇角斗士的锁甲头盔","=q4=复仇角斗士的锁甲护肩","=q4=复仇角斗士的锁甲护胸","=q4=复仇角斗士的锁甲护手","=q4=复仇角斗士的锁甲护腿","","","","=q4=复仇角斗士的环甲头盔","=q4=复仇角斗士的环甲护肩","=q4=复仇角斗士的环甲护胸","=q4=复仇角斗士的环甲护手","=q4=复仇角斗士的环甲护腿"})
Process("Arena3Warlock",13,{"","=q4=复仇角斗士的鬼纹兜帽","=q4=复仇角斗士的鬼纹护肩","=q4=复仇角斗士的鬼纹长袍","=q4=复仇角斗士的鬼纹手套","=q4=复仇角斗士的鬼纹护腿","","","=q4=复仇角斗士的邪纹兜帽","=q4=复仇角斗士的邪纹护肩","=q4=复仇角斗士的邪纹外衣","=q4=复仇角斗士的邪纹护手","=q4=复仇角斗士的邪纹长裤"})
Process("Arena3Warrior",6,{"","=q4=复仇角斗士的板甲头盔","=q4=复仇角斗士的板甲护肩","=q4=复仇角斗士的板甲护胸","=q4=复仇角斗士的板甲护手","=q4=复仇角斗士的板甲护腿"})
Process("Arena3Weapons1",24,{"=q4=复仇角斗士的右拳刃","=q4=复仇角斗士的左拳刃","=q4=复仇角斗士的左拳套","=q4=复仇角斗士的法术之刃","=q4=复仇角斗士的军刺","=q4=复仇角斗士的切割者","=q4=复仇角斗士的刺刀","=q4=复仇角斗士的军刀","=q4=复仇角斗士的迅捷之刃","=q4=复仇角斗士的巨剑","=q4=复仇角斗士的利斧","=q4=复仇角斗士的切割者","=q4=复仇角斗士的利斧","=q4=复仇角斗士的斩首斧","=q4=复仇角斗士的战斧","=q4=复仇角斗士的木槌","=q4=复仇角斗士的拯救","=q4=复仇角斗士的轻锤","=q4=复仇角斗士的碎骨锤","=q4=复仇角斗士的碾骨锤","=q4=复仇角斗士的痛苦之锯","=q4=复仇角斗士的战斗法杖","=q4=复仇角斗士的法杖","=q4=复仇角斗士的作战法杖"})
Process("Arena3Weapons2",24,{"=q4=复仇角斗士的屏障","=q4=复仇角斗士的壁垒","=q4=复仇角斗士的墙盾","=q4=复仇角斗士的战刃","=q4=复仇角斗士的长弓","=q4=复仇角斗士的重弩","=q4=复仇角斗士的步枪","=q4=复仇角斗士的光明法杖","=q4=复仇角斗士的穿刺之触","=q4=复仇角斗士的挫败之触","=q4=复仇角斗士的决战","=q4=复仇角斗士的魔典","=q4=复仇角斗士的缓刑","","","=q4=复仇角斗士的决心神像","=q4=复仇角斗士的坚定神像","=q4=复仇角斗士的顽强神像","=q4=复仇角斗士的坚韧圣契","=q4=复仇角斗士的公正圣契","=q4=复仇角斗士的复仇圣契","=q4=复仇角斗士的无畏图腾","=q4=复仇角斗士的生存图腾","=q4=复仇角斗士的狂风图腾"})
Process("Arena4Druid",21,{"","=q4=野蛮角斗士的龙皮头盔","=q4=野蛮角斗士的龙皮护肩","=q4=野蛮角斗士的龙皮外套","=q4=野蛮角斗士的龙皮手套","=q4=野蛮角斗士的龙皮护腿","","","=q4=野蛮角斗士的蟒皮头盔","=q4=野蛮角斗士的蟒皮护肩","=q4=野蛮角斗士的蟒皮外套","=q4=野蛮角斗士的蟒皮手套","=q4=野蛮角斗士的蟒皮护腿","","","","=q4=野蛮角斗士的科多皮头盔","=q4=野蛮角斗士的科多皮护肩","=q4=野蛮角斗士的科多皮外套","=q4=野蛮角斗士的科多皮手套","=q4=野蛮角斗士的科多皮护腿"})
Process("Arena4Hunter",6,{"","=q4=野蛮角斗士的链甲头盔","=q4=野蛮角斗士的链甲护肩","=q4=野蛮角斗士的链甲护胸","=q4=野蛮角斗士的链甲手套","=q4=野蛮角斗士的链甲护腿"})
Process("Arena4Mage",6,{"","=q4=野蛮角斗士的丝质罩帽","=q4=野蛮角斗士的丝质护肩","=q4=野蛮角斗士的丝质外衣","=q4=野蛮角斗士的丝质护手","=q4=野蛮角斗士的丝质长裤"})
Process("Arena4Paladin",21,{"","=q4=野蛮角斗士的板层甲头盔","=q4=野蛮角斗士的板层甲护肩","=q4=野蛮角斗士的板层甲护胸","=q4=野蛮角斗士的板层甲手套","=q4=野蛮角斗士的板层甲护腿","","","=q4=野蛮角斗士的板鳞甲头盔","=q4=野蛮角斗士的板鳞甲护肩","=q4=野蛮角斗士的板鳞甲护胸","=q4=野蛮角斗士的板鳞甲护手","=q4=野蛮角斗士的板鳞甲护腿","","","","=q4=野蛮角斗士的雕饰板甲头盔","=q4=野蛮角斗士的雕饰板甲护肩","=q4=野蛮角斗士的雕饰板甲护胸","=q4=野蛮角斗士的雕饰板甲手套","=q4=野蛮角斗士的雕饰板甲护腿"})
Process("Arena4Priest",13,{"","=q4=野蛮角斗士的绸缎软帽","=q4=野蛮角斗士的绸缎衬肩","=q4=野蛮角斗士的绸缎长袍","=q4=野蛮角斗士的绸缎手套","=q4=野蛮角斗士的绸缎护腿","","","=q4=野蛮角斗士的月布软帽","=q4=野蛮角斗士的月布衬肩","=q4=野蛮角斗士的月布长袍","=q4=野蛮角斗士的月布手套","=q4=野蛮角斗士的月布护腿"})
Process("Arena4Rogue",6,{"","=q4=野蛮角斗士的皮甲头盔","=q4=野蛮角斗士的皮甲护肩","=q4=野蛮角斗士的皮甲外套","=q4=野蛮角斗士的皮甲手套","=q4=野蛮角斗士的皮甲护腿"})
Process("Arena4Shaman",21,{"","=q4=野蛮角斗士的鳞甲头盔","=q4=野蛮角斗士的鳞甲护肩","=q4=野蛮角斗士的鳞甲护胸","=q4=野蛮角斗士的鳞甲手套","=q4=野蛮角斗士的鳞甲护腿","","","=q4=野蛮角斗士的锁甲头盔","=q4=野蛮角斗士的锁甲护肩","=q4=野蛮角斗士的锁甲护胸","=q4=野蛮角斗士的锁甲手套","=q4=野蛮角斗士的锁甲护腿","","","","=q4=野蛮角斗士的环甲头盔","=q4=野蛮角斗士的环甲护肩","=q4=野蛮角斗士的环甲护胸","=q4=野蛮角斗士的环甲手套","=q4=野蛮角斗士的环甲护腿"})
Process("Arena4Warlock",13,{"","=q4=野蛮角斗士的鬼纹软帽","=q4=野蛮角斗士的鬼纹护肩","=q4=野蛮角斗士的鬼纹长袍","=q4=野蛮角斗士的鬼纹手套","=q4=野蛮角斗士的鬼纹护腿","","","=q4=野蛮角斗士的邪纹罩帽","=q4=野蛮角斗士的邪纹护肩","=q4=野蛮角斗士的邪纹外衣","=q4=野蛮角斗士的邪纹护手","=q4=野蛮角斗士的邪纹长裤"})
Process("Arena4Warrior",6,{"","=q4=野蛮角斗士的板甲头盔","=q4=野蛮角斗士的板甲护肩","=q4=野蛮角斗士的板甲护胸","=q4=野蛮角斗士的板甲手套","=q4=野蛮角斗士的板甲护腿"})
Process("Arena4Weapons1",27,{"=q4=野蛮角斗士的右拳刃","=q4=野蛮角斗士的左拳刃","=q4=野蛮角斗士的左拳套","=q4=野蛮角斗士的法术之刃","=q4=野蛮角斗士的活跃之刃","=q4=野蛮角斗士的军刺","=q4=野蛮角斗士的切割者","=q4=野蛮角斗士的刺刀","=q4=野蛮角斗士的军刀","=q4=野蛮角斗士的迅捷之刃","=q4=野蛮角斗士的巨剑","=q4=野蛮角斗士的利斧","=q4=野蛮角斗士的切割者","=q4=野蛮角斗士的短斧","=q4=野蛮角斗士的轻斧","=q4=野蛮角斗士的斩首斧","=q4=野蛮角斗士的战斧","=q4=野蛮角斗士的木槌","=q4=野蛮角斗士的拯救","=q4=野蛮角斗士的迅捷审判","=q4=野蛮角斗士的轻锤","=q4=野蛮角斗士的碎骨锤","=q4=野蛮角斗士的碾骨锤","=q4=野蛮角斗士的痛苦之锯","=q4=野蛮角斗士的战斗法杖","=q4=野蛮角斗士的法杖","=q4=野蛮角斗士的战斗法杖"})
Process("Arena4Weapons2",24,{"=q4=野蛮角斗士的屏障","=q4=野蛮角斗士的壁垒","=q4=野蛮角斗士的墙盾","=q4=野蛮角斗士的战刃","=q4=野蛮角斗士的长弓","=q4=野蛮角斗士的重弩","=q4=野蛮角斗士的步枪","=q4=野蛮角斗士的光明法杖","=q4=野蛮角斗士的穿刺之触","=q4=野蛮角斗士的挫败之触","=q4=野蛮角斗士的决战","=q4=野蛮角斗士的魔典","=q4=野蛮角斗士的缓刑","","","=q4=野蛮角斗士的决心神像","=q4=野蛮角斗士的坚定神像","=q4=野蛮角斗士的顽强神像","=q4=野蛮角斗士的坚韧圣契","=q4=野蛮角斗士的公正圣契","=q4=野蛮角斗士的复仇圣契","=q4=野蛮角斗士的无畏图腾","=q4=野蛮角斗士的生存图腾","=q4=野蛮角斗士的狂风图腾"})
Process("ArenaDruid",21,{"","=q4=角斗士的龙皮头盔","=q4=角斗士的龙皮护肩","=q4=角斗士的龙皮外套","=q4=角斗士的龙皮手套","=q4=角斗士的龙皮护腿","","","=q4=角斗士的蟒皮头盔","=q4=角斗士的蟒皮护肩","=q4=角斗士的蟒皮外套","=q4=角斗士的蟒皮手套","=q4=角斗士的蟒皮护腿","","","","=q4=角斗士的科多皮头盔","=q4=角斗士的科多皮护肩","=q4=角斗士的科多皮外套","=q4=角斗士的科多皮手套","=q4=角斗士的科多皮护腿"})
Process("ArenaHunter",6,{"","=q4=角斗士的链甲头盔","=q4=角斗士的链甲护肩","=q4=角斗士的链甲护胸","=q4=角斗士的链甲手套","=q4=角斗士的链甲护腿"})
Process("ArenaMage",6,{"","=q4=角斗士的丝质罩帽","=q4=角斗士的丝质护肩","=q4=角斗士的丝质外衣","=q4=角斗士的丝质护手","=q4=角斗士的丝质长裤"})
Process("ArenaPaladin",21,{"","=q4=角斗士的板层甲头盔","=q4=角斗士的板层甲护肩","=q4=角斗士的板层甲护胸","=q4=角斗士的板层甲手套","=q4=角斗士的板层甲护腿","","","=q4=角斗士的板鳞甲头盔","=q4=角斗士的板鳞甲护肩","=q4=角斗士的板鳞甲护胸","=q4=角斗士的板鳞甲护手","=q4=角斗士的板鳞甲护腿","","","","=q4=角斗士的雕饰板甲头盔","=q4=角斗士的雕饰板甲护肩","=q4=角斗士的雕饰板甲护胸","=q4=角斗士的雕饰板甲手套","=q4=角斗士的雕饰板甲护腿"})
Process("ArenaPriest",13,{"","=q4=角斗士的绸缎软帽","=q4=角斗士的绸缎衬肩","=q4=角斗士的绸缎长袍","=q4=角斗士的绸缎手套","=q4=角斗士的绸缎护腿","","","=q4=角斗士的月布软帽","=q4=角斗士的月布衬肩","=q4=角斗士的月布长袍","=q4=角斗士的月布手套","=q4=角斗士的月布护腿"})
Process("ArenaRogue",6,{"","=q4=角斗士的皮甲头盔","=q4=角斗士的皮甲护肩","=q4=角斗士的皮甲外套","=q4=角斗士的皮甲手套","=q4=角斗士的皮甲护腿"})
Process("ArenaShaman",21,{"","=q4=角斗士的鳞甲头盔","=q4=角斗士的鳞甲护肩","=q4=角斗士的鳞甲护胸","=q4=角斗士的鳞甲手套","=q4=角斗士的鳞甲护腿","","","=q4=角斗士的锁甲头盔","=q4=角斗士的锁甲护肩","=q4=角斗士的锁甲护胸","=q4=角斗士的锁甲手套","=q4=角斗士的锁甲护腿","","","","=q4=角斗士的环甲头盔","=q4=角斗士的环甲护肩","=q4=角斗士的环甲护胸","=q4=角斗士的环甲手套","=q4=角斗士的环甲护腿"})
Process("ArenaWarlock",13,{"","=q4=角斗士的鬼纹软帽","=q4=角斗士的鬼纹护肩","=q4=角斗士的鬼纹长袍","=q4=角斗士的鬼纹手套","=q4=角斗士的鬼纹护腿","","","=q4=角斗士的邪纹罩帽","=q4=角斗士的邪纹护肩","=q4=角斗士的邪纹外衣","=q4=角斗士的邪纹护手","=q4=角斗士的邪纹长裤"})
Process("ArenaWarrior",6,{"","=q4=角斗士的板甲头盔","=q4=角斗士的板甲护肩","=q4=角斗士的板甲护胸","=q4=角斗士的板甲手套","=q4=角斗士的板甲护腿"})
Process("PVP70RepDruid",21,{"","=q3=龙皮头盔","=q3=龙皮护肩","=q3=龙皮长袍","=q3=龙皮手套","=q3=龙皮护腿","","","=q3=蟒皮头盔","=q3=蟒皮护肩","=q3=蟒皮长袍","=q3=蟒皮手套","=q3=蟒皮护腿","","","","=q3=科多皮头盔","=q3=科多皮护肩","=q3=科多皮长袍","=q3=科多皮手套","=q3=科多皮护腿"})
Process("PVP70RepHunter",6,{"","=q3=追猎者的链甲头盔","=q3=追猎者的链甲护肩","=q3=追猎者的链甲护胸","=q3=追猎者的链甲手套","=q3=追猎者的链甲护腿"})
Process("PVP70RepMage",6,{"","=q3=唤魔者的丝质兜帽","=q3=唤魔者的丝质披肩","=q3=唤魔者的丝质外衣","=q3=唤魔者的丝质护手","=q3=唤魔者的丝质长裤"})
Process("PVP70RepPaladin",13,{"","=q3=十字军的板鳞甲头盔","=q3=十字军的板鳞甲护肩","=q3=十字军的板鳞甲护胸","=q3=十字军的板鳞甲护手","=q3=十字军的板鳞甲护腿","","","=q3=十字军的雕饰板甲头盔","=q3=十字军的雕饰板甲护肩","=q3=十字军的雕饰板甲护胸","=q3=十字军的雕饰板甲手套","=q3=十字军的雕饰板甲护腿"})
Process("PVP70RepPriest",13,{"","=q3=绸缎罩帽","=q3=绸缎衬肩","=q3=绸缎长袍","=q3=绸缎手套","=q3=绸缎护腿","","","=q3=月布兜帽","=q3=月布肩垫","=q3=月布罩衣","=q3=月布手套","=q3=月布护腿"})
Process("PVP70RepRogue",6,{"","=q3=投机者的皮甲头盔","=q3=投机者的皮甲护肩","=q3=投机者的皮甲外套","=q3=投机者的皮甲手套","=q3=投机者的皮甲护腿"})
Process("PVP70RepShaman",21,{"","=q3=先知的鳞甲头盔","=q3=先知的鳞甲护肩","=q3=先知的鳞甲护胸","=q3=先知的鳞甲手套","=q3=先知的鳞甲护腿","","","=q3=先知的锁甲头盔","=q3=先知的锁甲护肩","=q3=先知的锁甲护胸","=q3=先知的锁甲护手","=q3=先知的锁甲护腿","","","","=q3=先知的环甲头盔","=q3=先知的环甲护肩","=q3=先知的环甲护胸","=q3=先知的环甲手套","=q3=先知的环甲护腿"})
Process("PVP70RepWarlock",6,{"","=q3=鬼纹兜帽","=q3=鬼纹衬肩","=q3=鬼纹长袍","=q3=鬼纹手套","=q3=鬼纹护腿"})
Process("PVP70RepWarrior",6,{"","=q3=野蛮板甲头盔","=q3=野蛮板甲护肩","=q3=野蛮板甲护胸","=q3=野蛮板甲护手","=q3=野蛮板甲护腿"})
Process("PVPDruid",30,{"","=q4=元帅的龙皮头盔","=q4=元帅的龙皮肩甲","=q4=元帅的龙皮胸甲","=q4=统帅的龙皮手套","=q4=统帅的龙皮腿甲","=q4=统帅的龙皮战靴","","","=q3=少校的龙皮头盔","=q3=少校的龙皮护肩","=q3=骑士队长的龙皮护胸","=q3=骑士中尉的龙皮护手","=q3=骑士队长的龙皮护腿","=q3=骑士中尉的龙皮便鞋","","=q4=督军的龙皮头盔","=q4=督军的龙皮肩饰","=q4=督军的龙皮锁甲","=q4=将军的龙皮手套","=q4=将军的龙皮护腿","=q4=将军的龙皮战靴","","","=q3=勇士的龙皮盔帽","=q3=勇士的龙皮护肩","=q3=军团士兵的龙皮护胸","=q3=血卫士的龙皮手套","=q3=军团士兵的龙皮护腿","=q3=血卫士的龙皮长靴"})
Process("PVPHunter",30,{"","=q4=元帅的链甲头盔","=q4=元帅的链甲护肩","=q4=元帅的链甲护胸","=q4=统帅的链甲护手","=q4=统帅的链甲护腿","=q4=统帅的链甲战靴","","","=q3=少校的链甲头盔","=q3=少校的链甲护肩","=q3=骑士队长的链甲护胸","=q3=骑士中尉的链甲手套","=q3=骑士队长的链甲腿铠","=q3=骑士中尉的链甲长靴","","=q4=督军的链甲头盔","=q4=督军的链甲护肩","=q4=督军的链甲护胸","=q4=将军的链甲手套","=q4=将军的链甲护腿","=q4=将军的链甲战靴","","","=q3=勇士的链甲头盔","=q3=勇士的链甲护肩","=q3=军团士兵的链甲护胸","=q3=血卫士的链甲手套","=q3=军团士兵的链甲护腿","=q3=血卫士的链甲长靴"})
Process("PVPMage",30,{"","=q4=元帅的丝质宝冠","=q4=元帅的丝质肩甲","=q4=元帅的丝质外衣","=q4=统帅的丝质手套","=q4=统帅的丝质护腿","=q4=统帅的丝质裹足","","","=q3=少校的丝质罩帽","=q3=少校的丝质衬肩","=q3=骑士队长的丝质外套","=q3=骑士中尉的丝质裹手","=q3=骑士队长的丝质裹腿","=q3=骑士中尉的丝质便鞋","","=q4=督军的丝质罩帽","=q4=督军的丝质披肩","=q4=督军的丝质外衣","=q4=将军的丝质护手","=q4=将军的丝质长裤","=q4=将军的丝质长靴","","","=q3=勇士的丝质罩帽","=q3=勇士的丝质衬肩","=q3=军团士兵的丝质外套","=q3=血卫士的丝质裹手","=q3=军团士兵的丝质护腿","=q3=血卫士的丝质长靴"})
Process("PVPPaladin",30,{"","=q4=元帅的板层甲头盔","=q4=元帅的板层甲肩铠","=q4=元帅的板层甲护胸","=q4=统帅的板层甲手套","=q4=统帅的板层甲腿铠","=q4=统帅的板层甲战靴","","","=q3=少校的板层甲头盔","=q3=少校的板层甲护肩","=q3=骑士队长的板层甲护胸","=q3=骑士中尉的板层甲护手","=q3=骑士队长的板层甲护腿","=q3=骑士中尉的板层甲马靴","","=q4=督军的板层甲头盔","=q4=督军的板层甲护肩","=q4=督军的板层甲护胸","=q4=将军的板层甲手套","=q4=将军的板层甲护腿","=q4=将军的板层甲战靴","","","=q3=勇士的板层甲头盔","=q3=勇士的板层甲护肩","=q3=军团士兵的板层甲护胸","=q3=血卫士的板层甲手套","=q3=军团士兵的板层甲护腿","=q3=血卫士的板层甲马靴"})
Process("PVPPriest",30,{"","=q4=元帅的头饰","=q4=元帅的绸缎衬肩","=q4=元帅的绸缎外衣","=q4=统帅的绸缎手套","=q4=统帅的绸缎短裤","=q4=统帅的绸缎便鞋","","","=q3=少校的绸缎头巾","=q3=少校的绸缎衬肩","=q3=骑士队长的绸缎外套","=q3=骑士中尉的绸缎裹手","=q3=骑士队长的绸缎护腿","=q3=骑士中尉的绸缎便鞋","","=q4=督军的绸缎罩帽","=q4=督军的绸缎衬肩","=q4=督军的绸缎长袍","=q4=将军的绸缎手套","=q4=将军的绸缎护腿","=q4=将军的绸缎长靴","","","=q3=勇士的绸缎头巾","=q3=勇士的绸缎衬肩","=q3=军团士兵的绸缎外套","=q3=血卫士的绸缎裹手","=q3=军团士兵的绸缎护腿","=q3=血卫士的绸缎长靴"})
Process("PVPRogue",30,{"","=q4=元帅的皮甲面具","=q4=元帅的皮甲肩饰","=q4=元帅的皮甲护胸","=q4=统帅的皮甲护手","=q4=统帅的皮甲护腿","=q4=统帅的皮甲护足","","","=q3=少校的皮甲头盔","=q3=少校的皮甲护肩","=q3=骑士队长的皮甲胸铠","=q3=骑士中尉的皮甲手套","=q3=骑士队长的皮甲护腿","=q3=骑士中尉的皮甲便鞋","","=q4=督军的皮甲头盔","=q4=督军的皮甲肩铠","=q4=督军的皮甲护胸","=q4=将军的皮甲手套","=q4=将军的皮甲护腿","=q4=将军的皮甲战靴","","","=q3=勇士的皮甲头盔","=q3=勇士的皮甲护肩","=q3=军团士兵的皮甲护胸","=q3=血卫士的皮甲护手","=q3=军团士兵的皮甲护腿","=q3=血卫士的皮甲重靴"})
Process("PVPShaman",30,{"","=q4=元帅的锁甲头盔","=q4=元帅的锁甲护肩","=q4=元帅的锁甲护胸","=q4=统帅的锁甲手套","=q4=统帅的锁甲护腿","=q4=统帅的锁甲长靴","","","=q3=少校的锁甲头盔","=q3=少校的锁甲护肩","=q3=骑士队长的锁甲护胸","=q3=骑士中尉的锁甲护手","=q3=骑士队长的锁甲护腿","=q3=骑士中尉的锁甲护胫","","=q4=督军的锁甲头盔","=q4=督军的锁甲肩铠","=q4=督军的锁甲护胸","=q4=将军的锁甲护手","=q4=将军的锁甲护腿","=q4=将军的锁甲战靴","","","=q3=勇士的锁甲头盔","=q3=勇士的锁甲肩铠","=q3=军团士兵的锁甲胸铠","=q3=血卫士的锁甲手套","=q3=军团士兵的锁甲腿铠","=q3=血卫士的锁甲战靴"})
Process("PVPWarlock",30,{"","=q4=元帅的头冠","=q4=元帅的鬼纹护肩","=q4=元帅的鬼纹长袍","=q4=统帅的鬼纹手套","=q4=元帅的鬼纹护腿","=q4=统帅的鬼纹长靴","","","=q3=少校的鬼纹罩帽","=q3=少校的鬼纹肩饰","=q3=骑士队长的鬼纹外套","=q3=骑士中尉的鬼纹裹手","=q3=骑士队长的鬼纹裹腿","=q3=骑士中尉的鬼纹便鞋","","=q4=督军的鬼纹罩帽","=q4=督军的鬼纹衬肩","=q4=督军的鬼纹长袍","=q4=将军的鬼纹手套","=q4=将军的鬼纹短裤","=q4=将军的鬼纹长靴","","","=q3=勇士的鬼纹兜帽","=q3=勇士的鬼纹肩饰","=q3=军团士兵的鬼纹外套","=q3=血卫士的鬼纹裹手","=q3=军团士兵的鬼纹护腿","=q3=血卫士的鬼纹长靴"})
Process("PVPWarrior",30,{"","=q4=元帅的板甲头盔","=q4=元帅的板甲护肩","=q4=元帅的板甲护胸","=q4=统帅的板甲护手","=q4=统帅的板甲护腿","=q4=统帅的板甲战靴","","","=q3=少校的板甲头盔","=q3=少校的板甲护肩","=q3=骑士队长的板甲护胸","=q3=骑士中尉的板甲护手","=q3=骑士队长的板甲护腿","=q3=骑士中尉的板甲战靴","","=q4=督军的板甲头盔","=q4=督军的板甲护肩","=q4=督军的板甲护胸","=q4=将军的板甲护手","=q4=将军的板甲护腿","=q4=将军的板甲战靴","","","=q3=勇士的板甲头盔","=q3=勇士的板甲护肩","=q3=军团士兵的板甲护胸","=q3=血卫士的板甲护手","=q3=军团士兵的板甲护腿","=q3=血卫士的板甲战靴"})
Process("PVPWeapons1",29,{"","=q4=大元帅的右手刃","=q4=大元帅的左手刃","=q4=大元帅的法师之刃","=q4=大元帅的匕首","=q4=大元帅的长剑","=q4=大元帅的迅捷之刃","=q4=大元帅的双刃刀","=q4=大元帅的手斧","=q4=大元帅的斩石斧","=q4=大元帅的战锤","=q4=大元帅的惩戒之锤","=q4=大元帅的战斗重锤","=q4=大元帅的破坏者","","","=q4=高阶督军的右手爪","=q4=高阶督军的左手爪","=q4=高阶督军的法术之刃","=q4=高阶督军的剃刀","=q4=高阶督军之剑","=q4=高阶督军的迅捷之刃","=q4=高阶督军的巨剑","=q4=高阶督军的利斧","=q4=高阶督军的战斧","=q4=高阶督军的战斗钉锤","=q4=高阶督军的大头棒","=q4=高阶督军的粉碎之锤","=q4=高阶督军的毁灭者"})
Process("PVPWeapons2",24,{"","=q4=大元帅的长刀","=q4=大元帅的手杖","=q4=大元帅的庇护之盾","=q4=大元帅的硬弓","=q4=大元帅的强弩","=q4=大元帅的手持火炮","=q4=大元帅的力量之书","=q4=大元帅的恢复之书","","","","","","","","=q4=高阶督军的赶猪棒","=q4=高阶督军的战斗法杖","=q4=高阶督军的墙盾","=q4=高阶督军的弯弓","=q4=高阶督军的弩","=q4=高阶督军的火枪","=q4=高阶督军的毁灭宝典","=q4=高阶督军的治愈之书"})
Process("PvP60Accessories1",30,{"","=q4=黑色军用机械陆行鸟","=q4=黑色战羊","=q4=黑色军用战马缰绳","=q4=黑色军用座虎缰绳","=q4=黑色作战雷象的缰绳","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","=q3=联盟徽记","","=q4=黑色军用科多兽","=q4=黑色军用座狼号角","=q4=红色军用骷髅战马","=q4=黑色军用迅猛龙哨","=q4=迅捷作战陆行鸟","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记","=q3=部落徽记"})
Process("PvP60Accessories2",28,{"=q3=军士的斗篷","=q3=军士的斗篷","=q3=军士的斗篷","","=q3=士官长的丝质护腕","=q3=士官长的丝质护腕","","=q3=士官长的龙皮护腕","=q3=士官长的龙皮护腕","","=q3=士官长的皮甲护腕","=q3=士官长的皮甲护腕","","=q3=士官长的链甲护腕","=q3=士官长的链甲护腕","=q3=士官长的板甲护腕","=q3=士官长的板甲护腕","","=q3=军士长的徽记","=q3=军士长的徽记","=q3=军士长的徽记","","=q1=列兵徽章","=q1=骑士彩带","=q1=联盟军旗","=q1=作战治疗药水","=q1=作战法力药水","=q1=星辰悲歌"})
Process("PvP60Accessories3",28,{"=q3=军士的披风","=q3=军士的披风","=q3=军士的披风","","=q3=一等军士长的丝质护腕","=q3=一等军士长的丝质护腕","","=q3=一等军士长的龙皮护臂","=q3=一等军士长的龙皮护臂","","=q3=一等军士长的皮甲护腕","=q3=一等军士长的皮甲护臂","","=q3=一等军士长的锁甲护腕","=q3=一等军士长的锁甲护腕","=q3=一等军士长的板甲护腕","=q3=一等军士长的板甲护腕","","=q3=高阶军士徽记","=q3=高阶军士徽记","=q3=高阶军士徽记","","=q1=斥候的徽章","=q1=石守卫的纹章","=q1=部落军旗","=q1=作战治疗药水","=q1=作战法力药水","=q1=星辰悲歌"})
Process("PvP70Accessories1",29,{"","=q4=联盟勋章","=q4=联盟护符","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=联盟勋章","=q3=凯旋之戒","=q3=统御之戒","","","=q4=部落勋章","=q4=部落护符","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=部落勋章","=q3=凯旋之戒","=q3=统御之戒"})
Process("PvP70Accessories2",23,{"=q4=朴素红绚石","=q4=圆润精致黎明石","=q4=雕文精致黄宝石","","=q1=特效作战治疗药水","=q1=特效作战治疗药水","=q1=特效作战法力药水","=q1=特效作战法力药水","=q1=星辰之泪","","","","","","","=q4=符文红绚石","=q4=柔光精致黎明石","=q4=高能精致黄宝石","","=q1=特效作战治疗药水","=q1=特效作战治疗药水","=q1=特效作战法力药水","=q1=特效作战法力药水"})
Process("PvP70NonSet1",30,{"=q4=军士的厚重披风","=q4=军士的厚重斗篷","","=q4=护卫者的征服坠饰","=q4=护卫者的统御坠饰","=q4=护卫者的拯救坠饰","=q4=护卫者的缓刑坠饰","=q4=护卫者的镇压坠饰","=q4=护卫者的胜利坠饰","=q4=守备官的征服坠饰","=q4=守备官的统御坠饰","=q4=守备官的拯救坠饰","=q4=守备官的缓刑坠饰","=q4=守备官的镇压坠饰","=q4=守备官的胜利坠饰","=q4=战斗大师的残暴","=q4=战斗大师的堕落","=q4=战斗大师的决心","=q4=战斗大师的活跃","=q4=战斗大师的勇猛","=q4=战斗大师的坚定","","=q4=护卫者的统御指环","=q4=护卫者的拯救指环","=q4=护卫者的镇压指环","=q4=护卫者的胜利指环","=q4=守备官的统御指环","=q4=守备官的拯救指环","=q4=守备官的胜利指环","=q4=守备官的镇压指环"})
Process("PvP70NonSet2",26,{"=q4=护卫者的鬼纹护腕","=q4=护卫者的鬼纹腰带","=q4=护卫者的鬼纹软靴","","=q4=护卫者的月布护腕","=q4=护卫者的月布腰带","=q4=护卫者的月布便鞋","","=q4=护卫者的丝质护腕","=q4=护卫者的丝质腰带","=q4=护卫者的丝质裹足","","","","","=q4=守备官的鬼纹护腕","=q4=守备官的鬼纹腰带","=q4=守备官的鬼纹便鞋","","=q4=守备官的月布护腕","=q4=守备官的月布腰带","=q4=守备官的月布便鞋","","=q4=守备官的丝质护腕","=q4=守备官的丝质腰带","=q4=守备官的丝质护足"})
Process("PvP70NonSet3",30,{"=q4=护卫者的龙皮护腕","=q4=护卫者的龙皮腰带","=q4=护卫者的龙皮长靴","","=q4=护卫者的科多皮护腕","=q4=护卫者的科多皮腰带","=q4=护卫者的科多皮长靴","","=q4=护卫者的皮甲护腕","=q4=护卫者的皮甲腰带","=q4=护卫者的皮甲长靴","","=q4=护卫者的蟒皮护腕","=q4=护卫者的蟒皮腰带","=q4=护卫者的蟒皮长靴","=q4=守备官的龙皮护腕","=q4=守备官的龙皮腰带","=q4=守备官的龙皮长靴","","=q4=守备官的科多皮护腕","=q4=守备官的科多皮腰带","=q4=守备官的科多皮战靴","","=q4=守备官的皮甲护腕","=q4=守备官的皮甲腰带","=q4=守备官的皮甲长靴","","=q4=守备官的蟒皮护腕","=q4=守备官的蟒皮腰带","=q4=守备官的蟒皮长靴"})
Process("PvP70NonSet4",30,{"=q4=护卫者的链甲护腕","=q4=护卫者的链甲束带","=q4=护卫者的链甲战靴","","=q4=护卫者的鳞甲护腕","=q4=护卫者的鳞甲束带","=q4=护卫者的鳞甲战靴","","=q4=护卫者的锁甲护腕","=q4=护卫者的锁甲束带","=q4=护卫者的锁甲战靴","","=q4=护卫者的环甲护腕","=q4=护卫者的环甲束带","=q4=护卫者的环甲战靴","=q4=守备官的链甲护腕","=q4=守备官的链甲束带","=q4=守备官的链甲战靴","","=q4=守备官的鳞甲护腕","=q4=守备官的鳞甲束带","=q4=守备官的鳞甲战靴","","=q4=守备官的锁甲护腕","=q4=守备官的锁甲束带","=q4=守备官的锁甲战靴","","=q4=守备官的环甲护腕","=q4=守备官的环甲束带","=q4=守备官的环甲护胫"})
Process("PvP70NonSet5",30,{"=q4=护卫者的板层甲护腕","=q4=护卫者的板层甲腰带","=q4=护卫者的板层甲护胫","","=q4=护卫者的雕饰板甲护腕","=q4=护卫者的雕饰板甲腰带","=q4=护卫者的雕饰板甲护胫","","=q4=护卫者的板甲护腕","=q4=护卫者的板甲腰带","=q4=护卫者的板甲护胫","","=q4=护卫者的鳞片护腕","=q4=护卫者的鳞片腰带","=q4=护卫者的鳞片护胫","=q4=守备官的板层甲护腕","=q4=守备官的板层甲腰带","=q4=守备官的板层甲护胫","","=q4=守备官的雕饰板甲护腕","=q4=守备官的雕饰板甲腰带","=q4=守备官的雕饰板甲护胫","","=q4=守备官的板甲护腕","=q4=守备官的板甲腰带","=q4=守备官的板甲护胫","","=q4=守备官的板鳞甲护腕","=q4=守备官的板鳞甲腰带","=q4=守备官的板鳞甲护胫"})
end