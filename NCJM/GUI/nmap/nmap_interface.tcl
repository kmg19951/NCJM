#############################################################################
# Generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#  May 14, 2019 04:56:36 PM CEST  platform: Linux
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
        -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 962x624+489+200
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
    wm title $top "Nmap Finder"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    button $top.but43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command nmap -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Search 
    vTcl:DefineAlias "$top.but43" "Button1" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent44 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent44" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd $top.scr46 \
        -background {#d9d9d9} -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr46" "Scrolledtext1" vTcl:WidgetProc "Toplevel1" 1

    $top.scr46.01 configure -background white \
        -font font9 \
        -foreground black \
        -height 3 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ttk::separator $top.tSe47 \
        -orient vertical 
    vTcl:DefineAlias "$top.tSe47" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Basic Nmap Scan} 
    vTcl:DefineAlias "$top.lab48" "Label1" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe49
    vTcl:DefineAlias "$top.tSe49" "TSeparator2" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe50
    vTcl:DefineAlias "$top.tSe50" "TSeparator3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab51 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {sudo nmap -A } 
    vTcl:DefineAlias "$top.lab51" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Port Status Finder} 
    vTcl:DefineAlias "$top.lab52" "Label3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab53 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Find port: } 
    vTcl:DefineAlias "$top.lab53" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Find service name:} 
    vTcl:DefineAlias "$top.lab54" "Label5" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab55 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text {Find Protocol:} 
    vTcl:DefineAlias "$top.lab55" "Label6" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent56 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent56" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent57 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent57" "Entry3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent58 \
        -background white -font {-family {DejaVu Sans Mono} -size 10} \
        -foreground {#000000} -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent58" "Entry4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but59 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command port -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled -text Go 
    vTcl:DefineAlias "$top.but59" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $top.but60 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command service -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled -text Go 
    vTcl:DefineAlias "$top.but60" "Button3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but61 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command protocol -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled -text Go 
    vTcl:DefineAlias "$top.but61" "Button4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but62 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text ? 
    vTcl:DefineAlias "$top.but62" "Button5" vTcl:WidgetProc "Toplevel1" 1
    button $top.but63 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command exit -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Exit 
    vTcl:DefineAlias "$top.but63" "Button6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but64 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command clear -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Clear 
    vTcl:DefineAlias "$top.but64" "Button7" vTcl:WidgetProc "Toplevel1" 1
    button $top.but54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command attackMedusaSimple -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Medusa 
    vTcl:DefineAlias "$top.but54" "Button8" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab56 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 8} \
        -foreground {#000000} -highlightcolor black \
        -text {Created by: Ivan & Kevin} 
    vTcl:DefineAlias "$top.lab56" "Label7" vTcl:WidgetProc "Toplevel1" 1
    button $top.but44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command attackMedusaCompo -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black \
        -text {Attack Range from Ports} 
    vTcl:DefineAlias "$top.but44" "Button8_1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but45 \
        -background {#d9d9d9} -command hardMode -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text {Hard Mode} 
    vTcl:DefineAlias "$top.but45" "Button9" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but43 \
        -in $top -x 380 -y 140 -anchor nw -bordermode ignore 
    place $top.ent44 \
        -in $top -x 200 -y 90 -width 256 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.scr46 \
        -in $top -x 50 -y 210 -width 868 -relwidth 0 -height 357 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tSe47 \
        -in $top -x 490 -y 50 -height 130 -anchor nw -bordermode inside 
    place $top.lab48 \
        -in $top -x 220 -y 20 -anchor nw -bordermode ignore 
    place $top.tSe49 \
        -in $top -x 50 -y 50 -width 440 -anchor nw -bordermode inside 
    place $top.tSe50 \
        -in $top -x 490 -y 50 -width 420 -anchor nw -bordermode inside 
    place $top.lab51 \
        -in $top -x 80 -y 90 -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 640 -y 20 -anchor nw -bordermode ignore 
    place $top.lab53 \
        -in $top -x 520 -y 70 -anchor nw -bordermode ignore 
    place $top.lab54 \
        -in $top -x 520 -y 100 -anchor nw -bordermode ignore 
    place $top.lab55 \
        -in $top -x 520 -y 130 -anchor nw -bordermode ignore 
    place $top.ent56 \
        -in $top -x 680 -y 70 -width 126 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $top.ent57 \
        -in $top -x 680 -y 100 -width 126 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $top.ent58 \
        -in $top -x 680 -y 130 -width 126 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but59 \
        -in $top -x 840 -y 70 -height 25 -relheight 0 -anchor nw \
        -bordermode ignore 
    place $top.but60 \
        -in $top -x 840 -y 100 -width 46 -relwidth 0 -height 25 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but61 \
        -in $top -x 840 -y 130 -width 46 -relwidth 0 -height 25 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but62 \
        -in $top -x 920 -y 10 -width 25 -relwidth 0 -height 25 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but63 \
        -in $top -x 870 -y 580 -anchor nw -bordermode ignore 
    place $top.but64 \
        -in $top -x 50 -y 580 -anchor nw -bordermode ignore 
    place $top.but54 \
        -in $top -x 520 -y 170 -anchor nw -bordermode ignore 
    place $top.lab56 \
        -in $top -x 400 -y 608 -anchor nw -bordermode ignore 
    place $top.but44 \
        -in $top -x 680 -y 170 -width 207 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but45 \
        -in $top -x 50 -y 30 -width 91 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 

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
