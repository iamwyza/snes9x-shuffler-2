config = {
    ["hk_complete"] = "Ctrl+Shift+End",
    ["min_swap"] = 10, -- Minimum time in seconds between swaps
    ["max_swap"] = 45, -- Maximum time in seconds between swaps
    ["auto_shuffle"] = true, -- Enable / Disable automatic swapping between games
    ["seed"] = nil, -- If you're racing someone, you should use the same seed.  
    ["completed_games"] = {},
    ["total_swaps"] = 0,
    ["game_count"] = 0,
    ["plugins"] = {
        ["solo-z3r-multiworld"] = {
            ["settings"] = {["swapbutton"] = true}, -- Enables the use of Controller 2 L button to force a swap
            ["state"] = {
                ["meta"] = { },
                ["prev_player"] = 0,
                ["prevL"] = false
            }
        }
    },
    ["shuffle_index"] = -1,
    ["frame_count"] = 0,
    ["game_frame_count"] = { },
    ["game_swaps"] = { },
    ["current_game"] = "",
    ["nseed"] = nil,
    ["sound"] = true
}
