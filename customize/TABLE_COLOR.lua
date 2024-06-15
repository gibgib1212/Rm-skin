local function load()
    local table_name = main_state.text(1003)
    if main_state.option(290) then
        return {r = 255, g = 130, b = 31}
    elseif string.find(table_name, "難度推定表 EASY") then
        return {r = 163, g = 255, b = 163}
    elseif string.find(table_name, "難度推定表 NORMAL") then
        return {r = 136, g = 206, b = 250}
    elseif string.find(table_name, "難度推定表 HARD") then
        return {r = 255, g = 140, b = 158}
    elseif string.find(table_name, "難度推定表 FC") then
        return {r = 155, g = 230, b = 255}
    elseif string.find(table_name, "★★") then
        return {r = 157, g = 112, b = 219}
    elseif string.find(table_name, "★") then
        return {r = 176, g = 95, b = 219}
    elseif string.find(table_name, "第2発狂難易度") then
        return {r = 255, g = 94, b = 113}
    elseif string.find(table_name, "第2通常難易度") then
        return {r = 255, g = 140, b = 158}
    elseif string.find(table_name, "Stella") then
        return {r = 87, g = 191, b = 255}
    elseif string.find(table_name, "Satellite") then
        return {r = 116, g = 206, b = 250}
    elseif string.find(table_name, "Starlight") then
        return {r = 128, g = 220, b = 250}
    elseif string.find(table_name, "Stardust") then
        return {r = 171, g = 231, b = 255}
    elseif string.find(table_name, "16分乱打難易度表") then
        if string.find(main_state.text(1002), "重") then
            return {r = 112, g = 255, b = 68}
        else
            return {r = 151, g = 255, b = 103}
        end
    elseif
        string.find(table_name, "BMS同梱譜面難易度表") or
            string.find(table_name, "高難易度差分案内所") or
            string.find(table_name, "詰め込み難易度表")
     then
        return {r = 151, g = 255, b = 103}
    elseif
        string.find(table_name, "連打難易度表") or
            string.find(table_name, "DELAY Training Table") or
            string.find(table_name, "LN難易度") or
            string.find(table_name, "Luminous") or
            string.find(table_name, "皿難易度表")
     then
        return {r = 84, g = 255, b = 171}
    elseif string.find(table_name, "PMS難易度") then
        return {r = 255, g = 142, b = 198}
    elseif string.find(table_name, "PMSデータベース") then
        return {r = 255, g = 173, b = 214}
    elseif
        string.find(table_name, "5KEYS AERY") or
            string.find(table_name, "Atharnal BMS TABLE") or
            string.find(table_name, "BAECON難易度表") or
            string.find(table_name, "Dystopia難易度表") or
            string.find(table_name, "EXOPLANET") or
            string.find(table_name, "Mary_Sue難易度表") or
            string.find(table_name, "META-")
     then
        return {r = 255, g = 255, b = 128}
     else
        return nil
    end
end

return {
    load = load
}
