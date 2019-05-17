#############################################################################
# Generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#  May 10, 2019 07:28:28 PM CEST  platform: Linux
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
    vTcl:font19
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
        set tagslist {_TopLevel _vTclBalloon}
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
    wm geometry $top 853x581+512+208
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 950
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "John The Ripper"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    ttk::separator $top.tSe44
    vTcl:DefineAlias "$top.tSe44" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command unshadow -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Unshadow 
    vTcl:DefineAlias "$top.but43" "Button1" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command singleCeck -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -text Single -variable che44 
    vTcl:DefineAlias "$top.che44" "Checkbutton" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command wordlistCheck -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -text Wordlist -variable che45 
    vTcl:DefineAlias "$top.che45" "Checkbutton2" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command incrementalCheck -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -text Incremental -variable che46 
    vTcl:DefineAlias "$top.che46" "Checkbutton3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent48 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent48" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command customFileCheck -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -justify left \
        -text {Custom file} -variable che50 
    vTcl:DefineAlias "$top.che50" "Checkbutton4" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $top.tCo55 \
        \
        -values {'ASCII' 'Alnum' 'Alpha' 'LowerNum' 'UpperNum' 'LowerSpace' 'Lower' 'Upper' 'Digits'} \
        -font TkTextFont -textvariable combobox -foreground {#000000} \
        -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo55" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent66 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$top.ent66" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but68 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command selectWordlist -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Select 
    vTcl:DefineAlias "$top.but68" "Button5" vTcl:WidgetProc "Toplevel1" 1
    button $top.but69 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command selectCustomFile -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled \
        -text Select 
    vTcl:DefineAlias "$top.but69" "Button6" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd $top.scr70 \
        -background {#d9d9d9} -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr70" "Scrolledtext1" vTcl:WidgetProc "Toplevel1" 1

    $top.scr70.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    button $top.but44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command crackedPasswd -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black \
        -text {Show cracked passwords} 
    vTcl:DefineAlias "$top.but44" "Button7" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkDefaultFont -foreground {#000000} \
        -highlightcolor black -text Config 
    vTcl:DefineAlias "$top.lab45" "Label1" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe46
    vTcl:DefineAlias "$top.tSe46" "TSeparator2" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe47 \
        -orient vertical 
    vTcl:DefineAlias "$top.tSe47" "TSeparator3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command startBut \
        -font {-family {DejaVu Sans} -size 20} -foreground {#000000} \
        -highlightcolor black -state disabled -text Start 
    vTcl:DefineAlias "$top.but48" "Button2" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe49
    vTcl:DefineAlias "$top.tSe49" "TSeparator4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command openCrunch -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -state disabled \
        -text {Generate Wordlist} 
    vTcl:DefineAlias "$top.but50" "Button3" vTcl:WidgetProc "Toplevel1" 1
    button $top.but51 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command openAdvancedIncremental \
        -font TkDefaultFont -foreground {#000000} -highlightcolor black \
        -state disabled -text Advanced 
    vTcl:DefineAlias "$top.but51" "Button4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command clearText -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Clear 
    vTcl:DefineAlias "$top.but52" "Button8" vTcl:WidgetProc "Toplevel1" 1
    button $top.but53 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -command quit -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text Quit 
    vTcl:DefineAlias "$top.but53" "Button9" vTcl:WidgetProc "Toplevel1" 1
    button $top.but47 \
        -background {#d9d9d9} -command help -font TkDefaultFont \
        -foreground {#000000} -highlightcolor black -text ? 
    vTcl:DefineAlias "$top.but47" "Button10" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab48 \
        -background {#d9d9d9} -font {-family {DejaVu Sans} -size 8} \
        -foreground {#000000} -text {Created by: Ivan & Kevin} 
    vTcl:DefineAlias "$top.lab48" "Label2" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tSe44 \
        -in $top -x 50 -y 40 -width 750 -anchor nw -bordermode inside 
    place $top.but43 \
        -in $top -x 200 -y 50 -width 96 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.che44 \
        -in $top -x 100 -y 100 -anchor nw -bordermode ignore 
    place $top.che45 \
        -in $top -x 100 -y 140 -anchor nw -bordermode ignore 
    place $top.che46 \
        -in $top -x 100 -y 180 -anchor nw -bordermode ignore 
    place $top.ent48 \
        -in $top -x 240 -y 140 -anchor nw -bordermode ignore 
    place $top.che50 \
        -in $top -x 460 -y 55 -anchor nw -bordermode ignore 
    place $top.tCo55 \
        -in $top -x 240 -y 180 -width 217 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent66 \
        -in $top -x 590 -y 55 -width 156 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but68 \
        -in $top -x 404 -y 140 -width 58 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but69 \
        -in $top -x 740 -y 55 -width 58 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.scr70 \
        -in $top -x 50 -y 280 -width 748 -relwidth 0 -height 227 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but44 \
        -in $top -x 330 -y 240 -anchor nw -bordermode ignore 
    place $top.lab45 \
        -in $top -x 400 -y 10 -anchor nw -bordermode ignore 
    place $top.tSe46 \
        -in $top -x 50 -y 90 -width 750 -anchor nw -bordermode inside 
    place $top.tSe47 \
        -in $top -x 420 -y 40 -height 50 -anchor nw -bordermode inside 
    place $top.but48 \
        -in $top -x 660 -y 130 -width 109 -relwidth 0 -height 61 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tSe49 \
        -in $top -x 50 -y 220 -width 750 -anchor nw -bordermode inside 
    place $top.but50 \
        -in $top -x 490 -y 140 -width 131 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but51 \
        -in $top -x 490 -y 180 -width 82 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but52 \
        -in $top -x 50 -y 530 -anchor nw -bordermode ignore 
    place $top.but53 \
        -in $top -x 750 -y 530 -anchor nw -bordermode ignore 
    place $top.but47 \
        -in $top -x 820 -y 10 -width 21 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 350 -y 560 -anchor nw -bordermode ignore 

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

