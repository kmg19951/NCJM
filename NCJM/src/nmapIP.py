#!/usr/bin/python3
import subprocess,os

#principal
def nmapbase():
    f = open(os.getcwd() + '/files/nmap/nmapbase.l2p','r')
    f2 = open(os.getcwd() + '/files/nmap/allnmapfilt.l2p','w')
    string = ''
    for line in f:
        l_1 = line.split()
        if l_1[0] == '|':
            continue
        if 'Nmap' in line:
            if len(l_1) == 6:
                string += '\n' + l_1[5][1:-1]
            else:
                string += '\n' + l_1[4]
        else:
            string += ',' + l_1[0]
            string += ',' + l_1[1]
            string += ',' + l_1[2]
            if len(l_1) > 3:
                string += ',' + l_1[3]
    f2.write(string[1:])
    return string[1:]

#global encotrar todo
def IPfinder_all(n):
    f = open(os.getcwd() + '/files/nmap/nmapbase.l2p','r')
    string = ''
    string_w = ''
    if n == 'port':
        string+='\n ------------------------------------------\n \tThe Ports \n ------------------------------------------\n\n'
    if n == 'service':
        string+='\n ------------------------------------------\n \tThe Services \n ------------------------------------------\n\n'
    if n == 'protocol':
        string+='\n ------------------------------------------\n \tThe Protocols \n ------------------------------------------\n\n'
    for line in f:
        l_1 = line.split()
        if l_1[0] == '|':
            continue
        if 'Nmap' in line:
            if len(l_1) == 6:
                string_w += '\n' + l_1[5][1:-1]
                string += '\n' + 'IP ' + l_1[5][1:-1] + ' have this open ' + n +': \n'
            else:
                string_w += '\n' + l_1[4]
                string += '\n' + 'IP ' + l_1[4] + '  have this open ' + n +': \n'
        elif n == 'port':
            string_w += ',' + str(l_1[0]).split('/')[0]
            string += str(l_1[0]).split('/')[0] + '\n'
        elif n == 'protocol':
            string_w += ',' + str(l_1[0])
            string += str(l_1[0]) + '\n'
        elif n == 'service':
            if len(l_1[2]) > 13:
                string_w += ',' + str(l_1[2]) + ',' + str(l_1[0]).split('/')[0]
                string += str(l_1[2]) + '\t\t---> ' + str(l_1[0]).split('/')[0] + '\n'
            else:
                string_w += ',' + str(l_1[2]) + ',' + str(l_1[0]).split('/')[0]
                string += str(l_1[2]) + '\t\t\t---> ' + str(l_1[0]).split('/')[0] + '\n'


    if n == 'port':
        string_w+='\n'
        f2 = open(os.getcwd() + '/files/nmap/save' + n + '.l2p','w')
        f2.write(string_w[1:])
    if n == 'service':
        string_w+='\n'
        f2 = open(os.getcwd() + '/files/nmap/save' + n + '.l2p','w')
        f2.write(string_w[1:])
    if n == 'protocol':
        string_w+='\n'
        f2 = open(os.getcwd() + '/files/nmap/save' + n + '.l2p','w')
        f2.write(string_w[1:])

    return string

#buscar por puerto
def IPfinder_all_f(port,type):
    string = ''
    port = str(port)
    if port == ''.strip() or port == '*':
        return IPfinder_all(type)
    else:
        IPfinder_all(type)
        f2 = open(os.getcwd() + '/files/nmap/save' + type + '.l2p','r')
        contador1 = 0
        if type == 'protocol':
            string+='\n ------------------------------------------\n \tThe Protocols \n ------------------------------------------\n\n'
            for line in f2:
                l1 = line.split(',')
                if port in l1[1].split('/'):
                    string += 'IP ' + l1[0] + ' have ' + type + ' ' + port + ' open on this ports: \n'
                    for i in l1[1:]:
                        string+=i + '\n'
                    contador1+=1
            if (contador1 == 0):
                return ('\n ------------------------------------------\n' +'This ' + type + ' "' + port + '"' + " doesn't exist" + '\n ------------------------------------------\n')
        if type == 'port':
            string+='\n ------------------------------------------\n \tThe Ports \n ------------------------------------------\n\n'
            for line in f2:
                l1 = line.split(',')
                if port in l1:
                    string += 'IP ' + l1[0] + ' have port '+ port + ' open and this other ports: \n'
                    for i in l1[1:]:
                        string+=i + '\n'
                    contador1+=1
            if (contador1 == 0):
                return ('\n ------------------------------------------\n' +'This ' + type + ' "' + port + '"' + " doesn't exist" + '\n ------------------------------------------\n')
        if type == 'service':
            string+='\n ------------------------------------------\n \tThe Services \n ------------------------------------------\n\n'
            contador = 0
            var = ''
            for line in f2:
                l1 = line.split(',')
                if port in l1:
                    string += 'IP ' + l1[0] + ' have port '+ port + ' open and this other ports: \n'
                    for a in l1[1:]:
                        if contador%2 == 0:
                            var = a
                        else:
                            a = a.rstrip('\n')
                            #string += ( a + '--' + var + '\n')
                            if len(var) > 12:
                                string += str(var) + '\t---> ' + a + '\n'
                            else:
                                string += str(var) + '\t\t---> ' + a + '\n'
                        contador += 1
                        contador1+=1
                string += '\n'
            if (contador1 == 0):
                return ('\n ------------------------------------------\n' +'This ' + type + ' "' + port + '"' + " doesn't exist" + '\n ------------------------------------------\n')

    f3 = open('/home/alumne/Escriptori/TF/logs/' + type + '.log','w')
    f3.write(string[:-1])
    return string[:-1]

def ipForMedusen(cosa):
    contador1 = 1
    string=""
    f2 = open(os.getcwd() + '/files/nmap/saveservice.l2p','r')
    for line in f2:
        l1 = line.split(',')
        if cosa in l1:
            string+=l1[0] + "," + l1[l1.index(cosa)] + "\n"
    f3 = open(os.getcwd() + '/files/nmap/medusaRange.l2p','w')
    f3.write(string)
    return string[:-1]

def attackRange():
    f2 = open(os.getcwd() + '/files/nmap/medusaRange.l2p','r')
    for line in f2:
        l1 = line.split(',')
        os.system('medusa -h '+l1[0]+' -U ' + os.getcwd() + '/files/medusa/medusa_users.l2p -P ' + os.getcwd() + '/files/crunch/listAttack.l2p '+' -M '+l1[1].rstrip('\n')+' -f -b -v 6 -e ns')
