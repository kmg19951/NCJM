#############################################################################
# Generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#  May 10, 2019 07:37:39 PM CEST  platform: Linux
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

# vTcl Code to Load User Fonts

vTcl:font:add_font \
    "-family {DejaVu Sans} -size 8 -weight normal -slant roman -underline 0 -overstrike 0" \
    user \
    vTcl:font23
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
        -menu "$top.m43" -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 981x353+430+252
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Medusa"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set site_3_0 $top.m43
    menu $site_3_0 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 10} \
        -foreground {#000000} -tearoff 0 
    ttk::separator $top.tSe46
    vTcl:DefineAlias "$top.tSe46" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text Config 
    vTcl:DefineAlias "$top.lab48" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab49 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Host :} 
    vTcl:DefineAlias "$top.lab49" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {User :} 
    vTcl:DefineAlias "$top.lab50" "Label3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent51 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent51" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent53 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent53" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command checkFromFile -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -text {From file} -variable che54 
    vTcl:DefineAlias "$top.che54" "Checkbutton1" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent55 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent55" "Entry3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but58 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command selectFile -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled \
        -text Select 
    vTcl:DefineAlias "$top.but58" "Button1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab59 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Password Wordlist :} 
    vTcl:DefineAlias "$top.lab59" "Label4" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent60 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent60" "Entry4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but61 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command selectWordlist -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Select 
    vTcl:DefineAlias "$top.but61" "Button2" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab62 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Service :} 
    vTcl:DefineAlias "$top.lab62" "Label5" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent63 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent63" "Entry5" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe65
    vTcl:DefineAlias "$top.tSe65" "TSeparator1_1" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe66
    vTcl:DefineAlias "$top.tSe66" "TSeparator1_2" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab67 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -textvariable medusaCommand 
    vTcl:DefineAlias "$top.lab67" "Label6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but68 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command start -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled \
        -text Start 
    vTcl:DefineAlias "$top.but68" "Button3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but69 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command update -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Update 
    vTcl:DefineAlias "$top.but69" "Button4" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command customPort -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -state active -text {Custom port} -variable che43 
    vTcl:DefineAlias "$top.che43" "Checkbutton2" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent44 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent44" "Entry6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command exit -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Exit 
    vTcl:DefineAlias "$top.but46" "Button5" vTcl:WidgetProc "Toplevel1" 1
    button $top.but49 \
        -background {#d9d9d9} -command help -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text ? 
    vTcl:DefineAlias "$top.but49" "Button6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command createWordlist -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Create 
    vTcl:DefineAlias "$top.but52" "Button2_3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab53 \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 8} \
        -foreground {#000000} -text {Created by: Ivan & Kevin} 
    vTcl:DefineAlias "$top.lab53" "Label7" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tSe46 \
        -in $top -x 60 -y 40 -width 860 -anchor nw -bordermode inside 
    place $top.lab48 \
        -in $top -x 470 -y 10 -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 190 -y 70 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 190 -y 110 -anchor nw -bordermode ignore 
    place $top.ent51 \
        -in $top -x 250 -y 70 -anchor nw -bordermode ignore 
    place $top.ent53 \
        -in $top -x 250 -y 110 -anchor nw -bordermode ignore 
    place $top.che54 \
        -in $top -x 500 -y 110 -anchor nw -bordermode ignore 
    place $top.ent55 \
        -in $top -x 620 -y 110 -anchor nw -bordermode ignore 
    place $top.but58 \
        -in $top -x 784 -y 111 -width 61 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab59 \
        -in $top -x 100 -y 150 -anchor nw -bordermode ignore 
    place $top.ent60 \
        -in $top -x 250 -y 150 -anchor nw -bordermode ignore 
    place $top.but61 \
        -in $top -x 410 -y 140 -width 61 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab62 \
        -in $top -x 172 -y 190 -anchor nw -bordermode ignore 
    place $top.ent63 \
        -in $top -x 250 -y 190 -anchor nw -bordermode ignore 
    place $top.tSe65 \
        -in $top -x 60 -y 240 -width 860 -height 2 -anchor nw \
        -bordermode ignore 
    place $top.tSe66 \
        -in $top -x 60 -y 286 -width 860 -height 2 -anchor nw \
        -bordermode ignore 
    place $top.lab67 \
        -in $top -x 70 -y 250 -width 659 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but68 \
        -in $top -x 820 -y 250 -anchor nw -bordermode ignore 
    place $top.but69 \
        -in $top -x 740 -y 250 -anchor nw -bordermode ignore 
    place $top.che43 \
        -in $top -x 500 -y 190 -anchor nw -bordermode ignore 
    place $top.ent44 \
        -in $top -x 620 -y 190 -anchor nw -bordermode ignore 
    place $top.but46 \
        -in $top -x 460 -y 300 -anchor nw -bordermode ignore 
    place $top.but49 \
        -in $top -x 950 -y 10 -width 21 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but52 \
        -in $top -x 410 -y 160 -width 61 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.lab53 \
        -in $top -x 420 -y 335 -anchor nw -bordermode ignore 

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

