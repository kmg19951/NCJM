#############################################################################
# Generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#  May 13, 2019 08:22:23 PM CEST  platform: Linux
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set desc "-family {DejaVu Sans} -size 10"
set vTcl(actual_gui_font_text_desc) $desc
set vTcl(actual_gui_font_text_name) [font create {*}$desc]
set desc "-family {DejaVu Sans Mono} -size 10"
set vTcl(actual_gui_font_fixed_desc) $desc
set vTcl(actual_gui_font_fixed_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 10"
set vTcl(actual_gui_font_menu_desc) $desc
set vTcl(actual_gui_font_menu_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 10"
set vTcl(actual_gui_font_tooltip_desc) $desc
set vTcl(actual_gui_font_tooltip_name) [font create {*}$desc]
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#
    menu .pop43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkMenuFont -foreground black -tearoff 1 
    vTcl:DefineAlias ".pop43" "Popupmenu1" vTcl:WidgetProc "" 1

proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m51" -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 336x474+766+288
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 972
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    button $top.but44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command install -font TkDefaultFont \
        -foreground {#000000} -height 31 -highlightcolor black \
        -state disabled -text {Install Requisites} 
    vTcl:DefineAlias "$top.but44" "Butcamp" vTcl:WidgetProc "Toplevel1" 1
    button $top.but45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command callnmap -font TkDefaultFont \
        -foreground {#000000} -height 31 -highlightcolor black -text {Nmap  } \
        -width 140 
    vTcl:DefineAlias "$top.but45" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $top.but46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command crunch -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Crunch -width 140 
    vTcl:DefineAlias "$top.but46" "Button3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command quit -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Exit 
    vTcl:DefineAlias "$top.but47" "Button4" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab48 \
        -activebackground {#000000} -activeforeground {#1aef28} \
        -background {#262626} -font {-family {DejaVu Sans} -size 24} \
        -foreground {#000000} -highlightcolor black -state active -text NCJM 
    button $top.but43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command john -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -takefocus 0 \
        -text {John De Ripper} 
    vTcl:DefineAlias "$top.but43" "Button1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command medusa -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -takefocus 0 -text Medusa 
    vTcl:DefineAlias "$top.but50" "Button6" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.m51
    menu $site_3_0 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 10} \
        -foreground {#000000} -tearoff 0 
    button $top.but52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command help -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -takefocus 0 -text ? 
    vTcl:DefineAlias "$top.but52" "Button7" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 8} \
        -foreground {#000000} -highlightcolor black \
        -text {Created by: Ivan & Keivn} 
    vTcl:DefineAlias "$top.lab43" "Label1" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but44 \
        -in $top -x 100 -y 130 -width 140 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but45 \
        -in $top -x 100 -y 180 -width 140 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but46 \
        -in $top -x 100 -y 230 -width 140 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but47 \
        -in $top -x 140 -y 410 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 50 -y 30 -width 247 -relwidth 0 -height 81 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but43 \
        -in $top -x 100 -y 280 -width 140 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but50 \
        -in $top -x 100 -y 330 -width 140 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $top.but52 \
        -in $top -x 313 -y 2 -width 20 -relwidth 0 -height 20 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab43 \
        -in $top -x 100 -y 450 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}
