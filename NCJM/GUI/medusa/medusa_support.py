#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#    May 07, 2019 07:00:40 PM CEST  platform: Linux
#    May 07, 2019 07:38:12 PM CEST  platform: Linux
#    May 09, 2019 04:36:16 PM CEST  platform: Linux
#    May 09, 2019 05:23:17 PM CEST  platform: Linux
#    May 09, 2019 05:29:18 PM CEST  platform: Linux
#    May 09, 2019 06:59:45 PM CEST  platform: Linux
#    May 10, 2019 07:37:48 PM CEST  platform: Linux

import sys, subprocess, os

try:
    import Tkinter as tk
    import Tkinter, Tkconstants, tkFileDialog, tkMessageBox
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

def set_Tk_var():
    global che54
    che54 = tk.StringVar()
    global medusaCommand
    medusaCommand = tk.StringVar()
    medusaCommand.set('')
    global che43
    che43 = tk.StringVar()

def createWordlist():
    global on
    on = True
    destroy_window()
    import crunch_interface
    crunch_interface.vp_start_gui()
    import medusa
    medusa.vp_start_gui()
def help():
    os.system('gedit ' + os.getcwd() + '/files/medusa/medusa.help')
    sys.stdout.flush()
def popingUpMssg():
    tkMessageBox.showwarning("Warning","Check more info at Terminal!")

def exit():
    destroy_window()
    sys.stdout.flush()

def customPort():
    obj = w.Entry6
    if(che43.get() == '1'):
        obj.configure(state='normal')
    else:
        obj.configure(state='disabled')
    sys.stdout.flush()

def selectPort():
    print('medusa_support.selectPort')
    sys.stdout.flush()

def varsGlobal():
    global host, user, wordlist, service, fromfile, cport, custFile, custWord
    host = w.Entry1
    user = w.Entry2
    wordlist = w.Entry4
    service = w.Entry5
    fromfile = w.Entry3
    cport = w.Entry6

def checkFromFile():
    obj = w.Entry2
    obj1 = w.Entry3
    obj2 = w.Button1
    if(che54.get() == '1'):
        obj.configure(state='disabled')
        obj1.configure(state='normal')
        obj2.configure(state='normal')
    else:
        obj.configure(state='normal')
        obj1.configure(state='disabled')
        obj2.configure(state='disabled')

    sys.stdout.flush()

def selectFile():
    custFile = openRootFile()
    obj = w.Entry3
    obj.delete(0,tk.END)
    obj.insert(tk.END, custFile)
    fromfile = custFile
    sys.stdout.flush()

def selectWordlist():
    custWord = openRootFile()
    obj = w.Entry4
    obj.delete(0,tk.END)
    obj.insert(tk.END, custWord)
    wordlist = custWord
    sys.stdout.flush()

def start():
    proc = subprocess.Popen(medusaCommand.get(), shell=True)
    (out, err) = proc.communicate()
    text = 'Out:\n\t'+str(out)+'\nError:\n\t'+str(err)
    popingUpMssg()
    sys.stdout.flush()

def update():
    if(che54.get() == '1'):
        usuario = ' -U '+fromfile.get()
    else:
        usuario = ' -u '+user.get()
    if(che43.get() == '1'):
        port = ' -n '+cport.get()
    else:
        port = ''

    medusaCommand.set('medusa -h '+host.get()+usuario+' -P '+wordlist.get()+' -M '+service.get()+port+' -f -b -v 6 -e ns')
    w.Button3.configure(state='normal')
    sys.stdout.flush()

def openRootFile():
    filename = tkFileDialog.askopenfilename(initialdir = "/",title = "Select file",filetypes = (("ncjm extension","*.l2p"),("all files","*.*")))
    return filename

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top
    varsGlobal()
    obj = w.Entry4
    if on == True:
        f = open(os.getcwd() + "/files/crunch/ruta","r")
        a = f.read()
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
on = None

if __name__ == '__main__':
    import medusa
    medusa.vp_start_gui()