from Tkinter import *
import Tkinter, Tkconstants, tkFileDialog

def openRootFile():

    filename = tkFileDialog.askopenfilename(initialdir = "/",title = "Select file",filetypes = (("ncjm extension","*.l2p"),("all files","*.*")))
    print (filename)
    return filename

openRootFile()
