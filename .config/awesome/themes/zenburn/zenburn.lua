------------------------------
-- "Zenburn" awesome theme  --
-- By anrxc_at_sysphere_org --
------------------------------

-- {{{ Main
theme = {}
confdir = awful.util.getdir("config")
theme.wallpaper_cmd = { "awsetbg -c /home/leprosys/Look/Wallpapers/Female/my_desktop-1131715078_i_3156_full.jpg" }
theme.menu_height   = "14"
theme.menu_width    = "100"
-- }}}

-- {{{ Colors

-- {{{ Font colors
theme.font          = "Profont 8"

theme.bg_focus      = "#1e2320"
theme.bg_normal     = "#3F3F3F"
theme.bg_urgent     = "#3F3F3F"
--theme.bg_minimize   = "#"

theme.fg_normal     = "#dcdccc"
theme.fg_focus      = "#f0dfaf"
theme.fg_urgent     = "#cc9393"
--theme.fg_minimize   = "#"
-- }}}

-- {{{ Border colors
theme.border_width  = "1"
theme.border_normal = "#3f3f3f"
theme.border_focus  = "#1e2320"
theme.border_marked = "#cc9393"
-- }}}

-- {{{ Titlebar colors
theme.titlebar_bg_focus  = "#3f3f3f"
theme.titlebar_bg_normal = "#3f3f3f"
-- }}}

-- {{{ Widget colors
theme.fg_widget        = "#aecf96"
theme.fg_center_widget = "#88a175"
theme.fg_end_widget    = "#ff5656"
theme.fg_off_widget    = "#494b4F"
theme.fg_netup_widget  = "#7f9f7f"
theme.fg_netdn_widget  = "#cc9393"
theme.bg_widget        = "#3f3f3f"
theme.border_widget    = "#3f3f3f"
-- }}}

-- }}}

-- {{{ Icons
--     - http://sysphere.org/~anrxc/icons-zenburn-anrxc.tar.gz

theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"

-- {{{ Layout icons
theme.layout_fairh      = confdir .. "/themes/zenburn/icons/layouts/fairh.png"
theme.layout_fairv      = confdir .. "/themes/zenburn/icons/layouts/fairv.png"
theme.layout_floating   = confdir .. "/themes/zenburn/icons/layouts/floating.png"
theme.layout_magnifier  = confdir .. "/themes/zenburn/icons/layouts/magnifier.png"
theme.layout_max        = confdir .. "/themes/zenburn/icons/layouts/max.png"
theme.layout_fullscreen = confdir .. "/themes/zenburn/icons/layouts/fullscreen.png"
theme.layout_tilebottom = confdir .. "/themes/zenburn/icons/layouts/tilebottom.png"
theme.layout_tileleft   = confdir .. "/themes/zenburn/icons/layouts/tileleft.png"
theme.layout_tile       = confdir .. "/themes/zenburn/icons/layouts/tile.png"
theme.layout_tiletop    = confdir .. "/themes/zenburn/icons/layouts/tiletop.png"
-- }}}

-- {{{ Awesome icons
theme.awesome_icon           = confdir .. "/themes/zenburn/icons/awesome14.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/sky/layouts/floating.png"
-- }}}

-- {{{ Taglist icons
theme.taglist_squares       = "true"
theme.taglist_squares_sel   = confdir .. "/themes/zenburn/icons/taglist/squarefz.png"
theme.taglist_squares_unsel = confdir .. "/themes/zenburn/icons/taglist/squareza.png"
-- }}}

-- {{{ Titlebar icons
theme.titlebar_close_button        = "true"
theme.titlebar_close_button_focus  = confdir .. "/themes/zenburn/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = confdir .. "/themes/zenburn/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_normal_active   = confdir .. "/themes/zenburn/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = confdir .. "/themes/zenburn/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_inactive = confdir .. "/themes/zenburn/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = confdir .. "/themes/zenburn/icons/titlebar/ontop_focus_inactive.png"

theme.titlebar_sticky_button_focus_inactive  = confdir .. "/themes/zenburn/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = confdir .. "/themes/zenburn/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_active    = confdir .. "/themes/zenburn/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = confdir .. "/themes/zenburn/icons/titlebar/sticky_normal_active.png"

theme.titlebar_floating_button_normal_active   = confdir .. "/themes/zenburn/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = confdir .. "/themes/zenburn/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_inactive = confdir .. "/themes/zenburn/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = confdir .. "/themes/zenburn/icons/titlebar/floating_focus_inactive.png"

theme.titlebar_maximized_button_normal_active   = confdir .. "/themes/zenburn/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = confdir .. "/themes/zenburn/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = confdir .. "/themes/zenburn/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = confdir .. "/themes/zenburn/icons/titlebar/maximized_focus_inactive.png"
-- }}}

-- {{{ Widget icons
theme.widget_cpu    = confdir .. "/themes/zenburn/icons/cpu.png"
theme.widget_bat    = confdir .. "/themes/zenburn/icons/bat.png"
theme.widget_mem    = confdir .. "/themes/zenburn/icons/mem.png"
theme.widget_fs     = confdir .. "/themes/zenburn/icons/disk.png"
theme.widget_net    = confdir .. "/themes/zenburn/icons/down.png"
theme.widget_netup  = confdir .. "/themes/zenburn/icons/up.png"
theme.widget_mail   = confdir .. "/themes/zenburn/icons/mail.png"
theme.widget_vol    = confdir .. "/themes/zenburn/icons/vol.png"
theme.widget_org    = confdir .. "/themes/zenburn/icons/cal.png"
theme.widget_date   = confdir .. "/themes/zenburn/icons/time.png"
theme.widget_crypto = confdir .. "/themes/zenburn/icons/crypto.png"
-- }}}

-- }}}

return theme

