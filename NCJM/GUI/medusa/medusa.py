#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#    May 10, 2019 07:37:41 PM CEST  platform: Linux

import sys

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

import medusa_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = tk.Tk()
    medusa_support.set_Tk_var()
    top = Toplevel1 (root)
    medusa_support.init(root, top)
    root.mainloop()

w = None
def create_Toplevel1(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = tk.Toplevel (root)
    medusa_support.set_Tk_var()
    top = Toplevel1 (w)
    medusa_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_Toplevel1():
    global w
    w.destroy()
    w = None

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85'
        _ana2color = '#ececec' # Closest X11 color: 'gray92'
        font21 = "-family {DejaVu Sans} -size 10"
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("981x353+430+252")
        top.title("Medusa")
        top.configure(highlightcolor="black")

        self.menubar = tk.Menu(top, font=('DejaVu Sans', 10, ), bg=_bgcolor
                ,fg=_fgcolor)
        top.configure(menu = self.menubar)

        self.TSeparator1 = ttk.Separator(top)
        self.TSeparator1.place(relx=0.061, rely=0.113, relwidth=0.877)

        self.Label1 = tk.Label(top)
        self.Label1.place(relx=0.479, rely=0.028, height=21, width=46)
        self.Label1.configure(activebackground="#f9f9f9")
        self.Label1.configure(text='''Config''')

        self.Label2 = tk.Label(top)
        self.Label2.place(relx=0.194, rely=0.198, height=21, width=42)
        self.Label2.configure(activebackground="#f9f9f9")
        self.Label2.configure(text='''Host :''')

        self.Label3 = tk.Label(top)
        self.Label3.place(relx=0.194, rely=0.312, height=21, width=42)
        self.Label3.configure(activebackground="#f9f9f9")
        self.Label3.configure(text='''User :''')

        self.Entry1 = tk.Entry(top)
        self.Entry1.place(relx=0.255, rely=0.198,height=23, relwidth=0.169)
        self.Entry1.configure(background="white")
        self.Entry1.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry1.configure(selectbackground="#c4c4c4")

        self.Entry2 = tk.Entry(top)
        self.Entry2.place(relx=0.255, rely=0.312,height=23, relwidth=0.169)
        self.Entry2.configure(background="white")
        self.Entry2.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry2.configure(selectbackground="#c4c4c4")

        self.Checkbutton1 = tk.Checkbutton(top)
        self.Checkbutton1.place(relx=0.51, rely=0.312, relheight=0.065
                , relwidth=0.088)
        self.Checkbutton1.configure(activebackground="#f9f9f9")
        self.Checkbutton1.configure(command=medusa_support.checkFromFile)
        self.Checkbutton1.configure(justify='left')
        self.Checkbutton1.configure(text='''From file''')
        self.Checkbutton1.configure(variable=medusa_support.che54)

        self.Entry3 = tk.Entry(top)
        self.Entry3.place(relx=0.632, rely=0.312,height=23, relwidth=0.169)
        self.Entry3.configure(background="white")
        self.Entry3.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry3.configure(selectbackground="#c4c4c4")
        self.Entry3.configure(state='disabled')

        self.Button1 = tk.Button(top)
        self.Button1.place(relx=0.795, rely=0.312, height=21, width=61)
        self.Button1.configure(activebackground="#f9f9f9")
        self.Button1.configure(command=medusa_support.selectFile)
        self.Button1.configure(state='disabled')
        self.Button1.configure(text='''Select''')

        self.Label4 = tk.Label(top)
        self.Label4.place(relx=0.102, rely=0.425, height=21, width=132)
        self.Label4.configure(activebackground="#f9f9f9")
        self.Label4.configure(text='''Password Wordlist :''')

        self.Entry4 = tk.Entry(top)
        self.Entry4.place(relx=0.255, rely=0.425,height=23, relwidth=0.169)
        self.Entry4.configure(background="white")
        self.Entry4.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry4.configure(selectbackground="#c4c4c4")

        self.Button2 = tk.Button(top)
        self.Button2.place(relx=0.418, rely=0.397, height=21, width=61)
        self.Button2.configure(activebackground="#f9f9f9")
        self.Button2.configure(command=medusa_support.selectWordlist)
        self.Button2.configure(text='''Select''')

        self.Label5 = tk.Label(top)
        self.Label5.place(relx=0.173, rely=0.538, height=21, width=60)
        self.Label5.configure(activebackground="#f9f9f9")
        self.Label5.configure(text='''Service :''')

        self.Entry5 = tk.Entry(top)
        self.Entry5.place(relx=0.255, rely=0.538,height=23, relwidth=0.169)
        self.Entry5.configure(background="white")
        self.Entry5.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry5.configure(selectbackground="#c4c4c4")

        self.TSeparator1_1 = ttk.Separator(top)
        self.TSeparator1_1.place(relx=0.061, rely=0.68, relwidth=0.877)

        self.TSeparator1_2 = ttk.Separator(top)
        self.TSeparator1_2.place(relx=0.061, rely=0.807, relwidth=0.877)

        self.Label6 = tk.Label(top)
        self.Label6.place(relx=0.071, rely=0.708, height=31, width=659)
        self.Label6.configure(activebackground="#f9f9f9")
        self.Label6.configure(textvariable=medusa_support.medusaCommand)

        self.Button3 = tk.Button(top)
        self.Button3.place(relx=0.836, rely=0.708, height=31, width=59)
        self.Button3.configure(activebackground="#f9f9f9")
        self.Button3.configure(command=medusa_support.start)
        self.Button3.configure(state='disabled')
        self.Button3.configure(text='''Start''')

        self.Button4 = tk.Button(top)
        self.Button4.place(relx=0.754, rely=0.708, height=31, width=75)
        self.Button4.configure(activebackground="#f9f9f9")
        self.Button4.configure(command=medusa_support.update)
        self.Button4.configure(text='''Update''')

        self.Checkbutton2 = tk.Checkbutton(top)
        self.Checkbutton2.place(relx=0.51, rely=0.538, relheight=0.065
                , relwidth=0.109)
        self.Checkbutton2.configure(activebackground="#f9f9f9")
        self.Checkbutton2.configure(command=medusa_support.customPort)
        self.Checkbutton2.configure(justify='left')
        self.Checkbutton2.configure(state='active')
        self.Checkbutton2.configure(text='''Custom port''')
        self.Checkbutton2.configure(variable=medusa_support.che43)

        self.Entry6 = tk.Entry(top)
        self.Entry6.place(relx=0.632, rely=0.538,height=23, relwidth=0.169)
        self.Entry6.configure(background="white")
        self.Entry6.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.Entry6.configure(selectbackground="#c4c4c4")
        self.Entry6.configure(state='disabled')

        self.Button5 = tk.Button(top)
        self.Button5.place(relx=0.469, rely=0.85, height=31, width=53)
        self.Button5.configure(activebackground="#f9f9f9")
        self.Button5.configure(command=medusa_support.exit)
        self.Button5.configure(text='''Exit''')

        self.Button6 = tk.Button(top)
        self.Button6.place(relx=0.968, rely=0.028, height=21, width=21)
        self.Button6.configure(command=medusa_support.help)
        self.Button6.configure(text='''?''')
        self.Button6.configure(width=21)

        self.Button2_3 = tk.Button(top)
        self.Button2_3.place(relx=0.418, rely=0.453, height=21, width=61)
        self.Button2_3.configure(activebackground="#f9f9f9")
        self.Button2_3.configure(command=medusa_support.createWordlist)
        self.Button2_3.configure(text='''Create''')

        self.Label7 = tk.Label(top)
        self.Label7.place(relx=0.428, rely=0.949, height=17, width=137)
        self.Label7.configure(font="-family {DejaVu Sans} -size 8")
        self.Label7.configure(text='''Created by: Ivan & Kevin''')

    @staticmethod
    def popup1(event, *args, **kwargs):
        Popupmenu1 = tk.Menu(root, tearoff=0)
        Popupmenu1.configure(activebackground="#f9f9f9")
        Popupmenu1.post(event.x_root, event.y_root)

if __name__ == '__main__':
    vp_start_gui()





