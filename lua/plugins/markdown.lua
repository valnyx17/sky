prequire('render-markdown').setup({
    heading = {
        position = "inline",
        width = "block",
        min_width = 30,
        border = false,
        above = "",
        below = "-",
        -- icons = { "󰼏 ", "󰼐 ", "󰼑 ", "󰼒 ", "󰼓 ", "󰼔 " },
        sign = false,
        backgrounds = { "" },
    },
    code = {
        sign = false,
        width = "block",
        min_width = 45,
        left_pad = 2,
        right_pad = 4,
    },
    -- checkbox = {
    --     unchecked = { icon = "✘" },
    --     checked = { icon = "󰸞" },
    -- },
})

prequire('obsidian').setup({
    workspaces = {
        {
            name = "Universal",
            path = "~/zet",
        },
    },
    templates = {
        folder = "Template",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
    },
    ui = { enable = false },
})
