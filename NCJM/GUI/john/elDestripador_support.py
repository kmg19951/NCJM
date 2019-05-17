#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#    May 02, 2019 05:34:42 PM CEST  platform: Linux
#    May 02, 2019 07:24:20 PM CEST  platform: Linux
#    May 02, 2019 07:47:11 PM CEST  platform: Linux
#    May 02, 2019 08:24:45 PM CEST  platform: Linux
#    May 06, 2019 05:28:39 PM CEST  platform: Linux
#    May 06, 2019 07:29:34 PM CEST  platform: Linux
#    May 06, 2019 07:32:26 PM CEST  platform: Linux
#    May 07, 2019 04:34:21 PM CEST  platform: Linux
#    May 10, 2019 07:28:40 PM CEST  platform: Linux

import sys, os
sys.path.append(os.getcwd() + '/src')
sys.path.append(os.getcwd() + '/GUI/crunch')
from johnFunctions import *
from crunch_interface import vp_start_gui as crunch_init
from crunch_interface_support import *
try:
    import Tkinter as tk
    import Tkinter, Tkconstants, tkFileDialog
    import tkMessageBox
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

def openAdvancedIncremental():
    os.system('sudo gedit /etc/john/john.conf')
    sys.stdout.flush()

def help():
    os.system('gedit ' + os.getcwd() + '/files/john/john.help')
    sys.stdout.flush()

def openCrunch():
    global crunchWordlist,on
    on = True
    destroy_window()
    crunch_init()
    import elDestripador
    elDestripador.vp_start_gui()
    sys.stdout.flush()

def startBut():
    if(che46.get() == '1'):
        typeValue = w.TCombobox1.get()
        if(typeValue is None or typeValue == "".rstrip()):
            typeValue = 'ASCII'
        #result = incrementalFunction(typeValue)
        obj = w.Scrolledtext1
        obj.delete(1.0,tk.END)
        obj.insert(tk.END, incrementalFunction(typeValue))
    if(che44.get() == '1'):
        #result = singleFunction()
        obj = w.Scrolledtext1
        obj.delete(1.0,tk.END)
        obj.insert(tk.END, singleFunction())
    if(che45.get() == '1'):
        global crunchWordlist
        inputRootFileWordList = crunchWordlist
        if(crunchWordlist is None or crunchWordlist == "".rstrip()):
            inputRootFileWordList = '0'
        obj = w.Scrolledtext1
        obj.delete(1.0,tk.END)
        obj.insert(tk.END, wordlistFunction(inputRootFileWordList))
    sys.stdout.flush()

def clearText():
    obj = w.Scrolledtext1
    obj.delete(1.0,tk.END)
    sys.stdout.flush()

def quit():
    destroy_window()
    sys.stdout.flush()

def crackedPasswd():
    result = checkCrackedFunction()
    obj = w.Scrolledtext1
    obj.delete(1.0,tk.END)
    obj.insert(tk.END, result)
    sys.stdout.flush()

def incrementalCheck():
    obj1 = w.Checkbutton
    obj2 = w.Checkbutton2
    obj22 = w.Entry2
    obj222 = w.Button5
    obj2222 = w.Button2
    obj23 = w.Button4
    if(che46.get() == '1'):
        obj1.configure(state='disabled')
        obj2.configure(state='disabled')
        obj22.configure(state='disabled')
        obj222.configure(state='disabled')
        obj2222.configure(state='normal')
        obj23.configure(state='normal')
    else:
        obj1.configure(state='normal')
        obj2.configure(state='normal')
        obj22.configure(state='normal')
        obj222.configure(state='normal')
        obj2222.configure(state='disabled')
        obj23.configure(state='disabled')
    sys.stdout.flush()

def singleCeck():
    obj1 = w.Checkbutton3
    obj11 = w.TCombobox1
    obj2 = w.Checkbutton2
    obj22 = w.Entry2
    obj222 = w.Button5
    obj2222 = w.Button2
    if(che44.get() == '1'):
        obj1.configure(state='disabled')
        obj11.configure(state='disabled')
        obj2.configure(state='disabled')
        obj22.configure(state='disabled')
        obj222.configure(state='disabled')
        obj2222.configure(state='normal')
    else:
        obj1.configure(state='normal')
        obj11.configure(state='normal')
        obj2.configure(state='normal')
        obj22.configure(state='normal')
        obj222.configure(state='normal')
        obj2222.configure(state='disabled')
    sys.stdout.flush()

def wordlistCheck():
    obj1 = w.Checkbutton
    obj11 = w.Button2
    obj2 = w.Checkbutton3
    obj22 = w.TCombobox1
    obj2222 = w.Button2
    obj23 = w.Button3
    if(che45.get() == '1'):
        obj1.configure(state='disabled')
        obj11.configure(state='disabled')
        obj2.configure(state='disabled')
        obj22.configure(state='disabled')
        obj2222.configure(state='normal')
        obj23.configure(state='normal')
    else:
        obj1.configure(state='normal')
        obj11.configure(state='normal')
        obj2.configure(state='normal')
        obj22.configure(state='normal')
        obj2222.configure(state='disabled')
        obj23.configure(state='disabled')
    sys.stdout.flush()

def customFileCheck():
    global w
    obj = w.Entry1
    obj2 = w.Button6
    obj3 = w.Button1
    if(che50.get() == '1'):
        obj.configure(state='normal')
        obj2.configure(state='normal')
        obj3.configure(state='disabled')
    else:
        obj.configure(state='disabled')
        obj2.configure(state='disabled')
        obj3.configure(state='normal')
    sys.stdout.flush()

def set_Tk_var():
    global che44
    che44 = tk.StringVar()
    global che45
    che45 = tk.StringVar()
    global che46
    che46 = tk.StringVar()
    global che50
    che50 = tk.StringVar()
    global combobox
    combobox = tk.StringVar()

def selectCustomFile():
    global w, rootFile
    rootFile = openRootFile()
    obj = w.Entry1
    obj.delete(0,tk.END)
    obj.insert(tk.END, rootFile)
    os.system('cp '+rootFile+' ' + os.getcwd() + '/files/john/passwords.l2p')
    sys.stdout.flush()

def selectWordlist():
    global crunchWordlist
    crunchWordlist = openRootFile()
    obj = w.Entry2
    obj.delete(0,tk.END)
    obj.insert(tk.END, crunchWordlist)
    sys.stdout.flush()

def unshadow():
    if(che50.get() != '1'):
        result = unshadowFunction()
        obj = w.Scrolledtext1
        obj.delete(1.0,tk.END)
        obj.insert(tk.END, result)
    sys.stdout.flush()

def openRootFile():

    filename = tkFileDialog.askopenfilename(initialdir = "/",title = "Select file",filetypes = (("ncjm extension","*.l2p"),("all files","*.*")))
    return filename

def init(top, gui, *args, **kwargs):
    global w, top_level, root, on
    w = gui
    top_level = top
    root = top
    #crunchWordlist = rutaDeVuelta()
    obj = w.Entry2
    if on == True:
        global crunchWordlist
        f = open(os.getcwd() + "/files/crunch/ruta","r")
        a = f.read()
        crunchWordlist = a
        obj.delete(0,tk.END)
        obj.insert(tk.END, a)
        sys.stdout.flush()
    else:
        obj.delete(0,tk.END)
        sys.stdout.flush()

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None
    on = False

on = False

if __name__ == '__main__':
    import elDestripador
    elDestripador.vp_start_gui()
