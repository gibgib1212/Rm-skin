local function load()
    return {
        -- timingvisualizer_colors
        lineColor = "FFFFFFFF",
        PGColor = "00000000",
        GRColor = "00000000",
        GDColor = "00000000",
        BDColor = "00000000",
        PRColor = "00000000",
    },
    {
        -- centerline_colors
        r = 255,
        g = 0,
        b = 0
    },
    {
        -- pg_line_colors
        r = 0,
        g = 191,
        b = 255
    },
    {
        -- gr_line_colors 
        r = 0,
        g = 255,
        b = 0
    }
end

return {
    load = load
}
