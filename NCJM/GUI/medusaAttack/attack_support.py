#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#    May 14, 2019 07:06:28 PM CEST  platform: Linux

import sys,subprocess, os
sys.path.append(os.getcwd() + '/src')
from nmapIP import attackRange as aRange

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

def attack():
    aRange()
    sys.stdout.flush()

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top
    obj2 = w.Entry1
    file = open(os.getcwd() + "/logs/registredLabel.log","r")
    a = file.read()
    obj2.insert(tk.END, a)
    obj = w.Scrolledtext1
    proc = subprocess.Popen("cat " + os.getcwd() + "/files/nmap/medusaRange.l2p", stdout=subprocess.PIPE, shell=True)
    (out, err) = proc.communicate()
    obj.insert(tk.END,out)
    sys.stdout.flush()


def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import attack
    attack.vp_start_gui()
