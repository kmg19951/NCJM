#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#    Apr 29, 2019 07:00:55 PM CEST  platform: Linux
#    Apr 29, 2019 07:41:58 PM CEST  platform: Linux

import sys, subprocess, os



try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

def quit():
    destroy_window()

def init(top, gui, *args, **kwargs):
    global w, top_level, root, proc
    w = gui
    top_level = top
    root = top
    load_instalation_info()

def open_log_tab():
    os.system('gedit '  + os.getcwd() +  '/logs/update-repo.log')
    sys.stdout.flush()

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

def load_instalation_info():
    global w, proc
    obj = w.Scrolledtext1
    obj.delete(1.0,tk.END)
    proc = subprocess.Popen(os.getcwd() + 'src/update-repo.sh', stdout=subprocess.PIPE, shell=True)
    (out, err) = proc.communicate()
    obj.insert(tk.END, out)
    f = open(os.getcwd() + 'logs/update-repo.log','w')
    f.write(out)

if __name__ == '__main__':
    import instalation_progress_GUI
    instalation_progress_GUI.vp_start_gui()
