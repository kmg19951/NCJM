#! /usr/bin/python
# -*- coding: utf-8 -*-

import subprocess, os


def unshadowFunction():
    os.system("sudo unshadow /etc/passwd /etc/shadow > " + os.getcwd() + "/files/john/passwords.l2p")
    return "\n -------------------------------------------------------\n \tUnShadow \n -------------------------------------------------------\n\n The file with the hashes has been generated in: ~/ncjm.v1.x.x/files/john/passwords.l2p"

def singleFunction():
    proc = subprocess.Popen('john --single ' + os.getcwd() + '/files/john/passwords.l2p', shell=True)
    (out, err) = proc.communicate()
    return '\n -------------------------------------------------------\n \tSingle Method Done! \n -------------------------------------------------------\n\n'+'Error:\t'+str(err)+'\n More info at Terminal'

def wordlistFunction(archiveDirectory):
    if(archiveDirectory == '0'):
        archiveDirectory = os.getcwd() + '/files/crunch/crunchList.l2p'
    proc = subprocess.Popen('john --wordlist='+archiveDirectory+' ' + os.getcwd() + '/files/john/passwords.l2p', shell=True)
    (out, err) = proc.communicate()
    return '\n -------------------------------------------------------\n \tWordList Method Done! \n -------------------------------------------------------\n\n'+'Error:\t'+str(err)+'\n More info at Terminal'

def incrementalFunction(typeValue):
    proc = subprocess.Popen('john --incremental:'+typeValue+' ' + os.getcwd() + '/files/john/passwords.l2p', shell=True)
    (out, err) = proc.communicate()
    return '\n -------------------------------------------------------\n \tIncremental Method Done! \n -------------------------------------------------------\n\n'+'Error:\t'+str(err)+'\n More info at Terminal'

def checkCrackedFunction():

    proc = subprocess.Popen('john --show ' + os.getcwd() +'/files/john/passwords.l2p', stdout=subprocess.PIPE, shell=True)
    (out, err) = proc.communicate()
    return str("\n -------------------------------------------------------\n \tCreacked Passwords \n -------------------------------------------------------\n\n The file with the hashes has been generated in: ~/ncjm.v1.x.x/files/john/passwords.l2p\n\n"
 + out)
