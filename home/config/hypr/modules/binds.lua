-- Window management
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + V", hl.dsp.window.float({action = "toggle"}))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspaces
for i = 1, 5 do
    local key = i % 5
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "m-1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "m+1" }))

-- Move focus
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))

-- Programs
hl.bind("SUPER + Tab", hl.dsp.exec_cmd("wofi --show drun"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("firefox"))

-- Utilities
hl.bind("SUPER + L", hl.dsp.exec_cmd("swaylock"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("grimshot save screen"))

-- Media keys
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })

-- Keyboard backlight
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })