-- https://darksabun.github.io/table/tablelist.html

local function load()
    local table_name = main_state.text(1003)
    if main_state.option(290) then
        return {r = 255, g = 130, b = 31}
    elseif string.find(table_name, "難度推定表 EASY") then  -- http://walkure.net/hakkyou/for_glassist/bms/?lamp=easy
        return {r = 163, g = 255, b = 163}
    elseif string.find(table_name, "難度推定表 NORMAL") then    -- http://walkure.net/hakkyou/for_glassist/bms/?lamp=normal
        return {r = 136, g = 206, b = 250}
    elseif string.find(table_name, "難度推定表 HARD") then  -- http://walkure.net/hakkyou/for_glassist/bms/?lamp=hard
        return {r = 255, g = 140, b = 158}
    elseif string.find(table_name, "難度推定表 FC") then    -- http://walkure.net/hakkyou/for_glassist/bms/?lamp=fc
        return {r = 155, g = 230, b = 255}
    elseif string.find(table_name, "★★") then -- https://rattoto10.jounin.jp/table_overjoy.html
        return {r = 157, g = 112, b = 219}
    elseif string.find(table_name, "★") then   -- https://darksabun.github.io/table/archive/insane1/
        return {r = 176, g = 95, b = 219}
    elseif string.find(table_name, "第2発狂難易度") then    -- https://rattoto10.jounin.jp/table.html
        return {r = 255, g = 94, b = 113}
    elseif string.find(table_name, "第2通常難易度") then    -- https://rattoto10.jounin.jp/table_insane.html
        return {r = 255, g = 140, b = 158}
    elseif string.find(table_name, "Stella") then   -- https://stellabms.xyz/st/table.html
        return {r = 91, g = 206, b = 255}
    elseif string.find(table_name, "Satellite") then    -- https://stellabms.xyz/sl/table.html
        return {r = 136, g = 221, b = 255}
    elseif string.find(table_name, "Starlight") then    -- https://djkuroakari.github.io/starlighttable.html
        return {r = 171, g = 236, b = 255}
    elseif string.find(table_name, "Stardust") then -- https://mqppppp.neocities.org/ChartView.html?
        return {r = 196, g = 251, b = 255}
    elseif string.find(table_name, "16分乱打難易度表") then -- https://lets-go-time-hell.github.io/code-stream-table/
        if string.find(main_state.text(1002), "重") then
            return {r = 112, g = 255, b = 68}
        else
            return {r = 151, g = 255, b = 103}
        end
    elseif
        string.find(table_name, "BMS同梱譜面難易度表") or   -- https://khibine.tobiiro.jp/table.html
            string.find(table_name, "高難易度差分案内所") or    -- https://darksabun.github.io/table/archive/sabunannai/
            string.find(table_name, "詰め込み難易度表") -- http://irotsuka.web.fc2.com/tsumekomi/tsumekomi.html
     then
        return {r = 151, g = 255, b = 103}
    elseif
        string.find(table_name, "連打難易度表") or  -- http://infinity.s60.xrea.com/bms/gla/
            string.find(table_name, "DELAY Training Table") or  -- https://kamikaze12345.github.io/github.io/delaytrainingtable/table.html
            string.find(table_name, "LN難易度") or  -- http://flowermaster.web.fc2.com/lrnanido/gla/LN.html
            string.find(table_name, "Luminous") or  -- https://ladymade-star.github.io/luminous/table.html
            string.find(table_name, "皿難易度表")   -- http://minddnim.web.fc2.com/sara/3rd_hard/bms_sara_3rd_hard.html
     then
        return {r = 84, g = 255, b = 171}
    elseif string.find(table_name, "PMS難易度") then    -- https://pmsdifficulty.xxxxxxxx.jp/_pastoral_insane_table.html
        return {r = 255, g = 142, b = 198}
    elseif string.find(table_name, "PMSデータベース") then  -- https://pmsdifficulty.xxxxxxxx.jp/insane_PMSdifficulty.html
        return {r = 255, g = 173, b = 214}
    elseif
        string.find(table_name, "5KEYS AERY") or    -- https://hibyethere.github.io/table/
            string.find(table_name, "Atharnal BMS TABLE") or    -- https://atharnal.github.io/diff/table.html
            string.find(table_name, "BAECON難易度表") or    -- http://akred.web.fc2.com/baecon-new.html
            string.find(table_name, "Dystopia難易度表") or  -- https://monibms.github.io/Dystopia/dystopia.html
            string.find(table_name, "EXOPLANET") or -- https://stellabms.xyz/fr/table.html
            string.find(table_name, "Mary_Sue難易度表") or  -- https://darksabun.github.io/Mary_Sue/
            string.find(table_name, "META-") or -- https://metyabo.github.io/META-Table/
            string.find(table_name, "PIANIT")   -- https://pianit.github.io/lxdiff/
     then
        return {r = 255, g = 255, b = 128}
     else
        return nil
    end
end

return {
    load = load
}
