'''
   Implementation of Zwicker algorithm in Python
'''
import math
import csv
import sys

flagin = False
flagout = False

#Set up the initial values for the algorithms
XP = 0.0

#loaded from the data
LT = []
TI = [0] * 11

RAP = [5,55,65,71,80,90,100,120]

#create an 8 x 11 matrix
DLL=[[-32,-24,-16,-10,-5,0,-7,-3,0,-2,0],
     [-29,-22,-15,-10,-4,0,-7,-2,0,-2,0],
     [-27,-19,-14,-9,-4,0,-6,-2,0,-2,0],
     [-25,-17,-12,-9,-3,0,-5,-2,0,-2,0],
     [-23,-16,-11,-7,-3,0,-4,-1,0,-1,0],
     [-20,-14,-10,-6,-3,0,-4,-1,0,-1,0],
     [-18,-12,-9,-6,-2,0,-3,-1,0,-1,0],
     [-15,-10,-8,-4,-2,0,-3,-1,0,-1,0]
    ]

#Critical Band Level
LTQ = [30,18,12,8,7,6,5,4,3,3,3,3,3,3,3,3,3,3,3,3]

# Correction of levels for characteristics of the ear
AO = [0,0,0,0,0,0,0,0,0,0,-0.5,-1.6,-3.2,-5.4,-5.6,-4,-1.6,2,5,12]

#Difference levles from free and diffuse sound fields (DDF)
DDF = [0,0,0.5,0.9,1.2,1.6,2.3,2.8,3,2,0,-1.4,-2,-1.9,-1,0.5,3,4,4.3,4]

#Adaption of 1/3 octave band
DCB = [-0.25,-0.6,-0.8,-0.8,-0.5,0,0.5,1.1,1.5,1.7,1.8,1.8,1.7,1.6,1.4,1.2,0.8,0.5,0,-0.5]

#Upper limits of approx critical bands
ZUP = [0.9,1.8,2.8,3.5,4.4,5.4,6.6,7.9,9.2,10.6,12.3,13.6,15.2,16.7,16.1,19.3,20.6,21.8,22.7,23.6,24.0]

#Range of loudness
RNS = [21.5,18,15.1,11.5,9,6.1,4.4,3.1,2.13,1.36,0.82,0.42,0.30,0.22,0.15,0.1,0.035,0]

#Steepness of the upper slopes of loudness
USL = [
  [13,9,7.8,6.2,4.5,3.7,2.9,2.4,1.95,1.5,0.72,0.59,0.40,0.27,0.16,0.12,0.09,0.06],
  [8.2,7.5,6.7,5.4,3.8,3,2.3,1.7,1.45,1.2,0.07,0.53,0.33,0.21,0.16,0.11,0.08,0.05],
  [6.3,6,5.6,4.6,3.6,2.8,2.1,1.5,1.3,0.94,0.64,0.51,0.26,0.2,0.14,0.1,0.07,0.03],
  [5.5,5.1,4.8,4,3.2,2.35,1,1.35,1.15,0.86,0.63,0.5,0.24,0.18,0.12,0.08,0.06,0.02],
  [5.5,4.5,4.4,3.5,2.9,2.2,1.8,1.3,1.1,0.82,0.62,0.42,0.22,0.17,0.11,0.08,0.06,0.02],
  [5.5,4.5,3.9,3.2,2.7,2.2,1.7,1.3,1.1,0.82,0.62,0.42,0.22,0.17,0.11,0.08,0.06,0.02],
  [5.5,4.5,3.9,3.2,2.7,2.2,1.7,1.3,1.1,0.82,0.62,0.42,0.22,0.17,0.11,0.08,0.06,0.02],
  [5.5,4.5,3.9,3.2,2.7,2.2,1.7,1.3,1.1,0.82,0.62,0.42,0.22,0.17,0.11,0.08,0.05,0.02]
]

GI = [0] * 3
LE = [0] * 21
LCB = [0] * 3
NM = [0] * 21

N = 0
Z1 = 0
N1 = 0
IZ = 0
Z = 0.1
NS = [0] * 271
IZMAX = 0
S = 0.25 #constant value


def get_file_data(fname, LT):
    '''
       Open the file
       
    '''
    with open(fname, 'rb') as fh:
        lcsv = csv.reader(fh, delimiter=' ', quotechar='|')
        for u in lcsv:
            #split the file on ; to get the second column in example file
            spl = u[0].split(';')
            if spl[1] != "SPL":   
                LT.append(float(spl[1]))
    return LT

def _runtopower(lt, dll):
    return math.pow(10, (.1 * (lt + dll)))

def get_TI(LT, RAP, DLL):
    '''

    '''
    #Run Zwicker's algorithm
    for i in range(11):
        j=0
        if LT[i] <=(RAP[j]-DLL[j][i]):
            TI[i] = _runtopower(LT[i], DLL[j][i])
        else:
            j += 1
            if j <= 7:
                TI[i] = _runtopower(LT[i], DLL[j][i])
            else:
                flagout = False
                while j < 7 and flagout is False:
                    if LT[i] <=(RAP[j]-DLL[j][i]):
                        TI[i] = _runtopower(LT[i], DLL[j][i])
                        flagout = True
                    else:
                        j += 1
                if flagout is False:
                    TI[i] = _runtopower(LT[i], DLL[j][i])

    return TI


def set_critical_bands(GI, TI):
    '''

      Determination of the critical bands
    '''
    GI[0] = TI[0] + TI[1] + TI[2] + TI[3] + TI[4] + TI[5]
    GI[1] = TI[6] + TI[7] + TI[8]
    GI[2] = TI[9] + TI[10]

    return GI

def get_lcb(GI):
    '''

    '''
    for i in range(3):
        if GI[i] > 0.0000001:
            LCB[i] = 10 * math.log10(GI[i])
        else:
            LCB[i] = -70
    return LCB

def zwicker_loudness(LE, LT, NM, MS, DDF, ZUP, N, N1, RNS,IZ, IZMAX, Z1, Z):
    #calculation of main loudness
    for i in range(20):
        LE[i] = LT[i + 7]
        if i <= 2:
            LE[i] = LCB[i]

        LE[i] -= AO[i]
    
        NM[i] = 0

        if MS is 'D':
            LE[i] += DDF[i]

        if LE[i] > LTQ[i]:
            LE[i] -= DCB[i]
            MP1 = 0.0635 * math.pow(10, 0.025*LTQ[i])
            MP2 = math.pow(1 - S + S * math.pow(10,0.1*(LE[i]-LTQ[i])), 0.25) - 1
            NM[i] = MP1 * MP2
            if NM[i] <= 0:
                NM[i] = 0

    Korry = 0.4 + 0.32 * math.pow(NM[0], 0.2)
    if Korry > 1:  Korry = 1

    NM[0] = NM[0] * Korry

    for i in range(21):
        ZUP[i] += 0.0001
        IG = i - 7

        if IG > 7: IG=7
        j = 0
        if N1 <= NM[i]:
            if N1 != NM[i]:
                #j = 0
                flagin = True
                while flagin is True and j < 18:
                    if RNS[j] < NM[i]:
                        flagin = False
                    else:
                        j += 1

        Z2 = ZUP[i]
        N2 = NM[i]

        N += N2 * (Z2-Z1)

        # look at this
        # for (k = Z; k < (Z2 + 0.1); k + 0.1)
        k = Z
        for m in range(int(Z2 + 0.1)):
            k += 0.1
            NS[IZ] = N1 - ((k - Z1) * USL[IG][j])
            if IZ < 269:  IZ += 1
        k = Z2 + 0.1
        Z = k
        IZ = IZMAX

        while (N2 <= RNS[j]) and j < 17:
            j += 1
        if (N2 <= RNS[j]) and j >= 17:
            j = 17

        Z1 = Z2
        N1 = N2
        if Z1 < ZUP[i]:
            restart()

        if N < 0:
            N = 0
        # calculatethe loudness for < 40 Phon
        LN = 40 * math.pow(N + 0.0005, 0.35)

        if LN < 3:
            LN = 3
        if N >= 1:
            LN = 10 * math.log(N) / math.log(2) + 40

    return (N, LN)

if __name__ == "__main__":
    
    GI = [0] * 3
    LE = [0] * 21
    LCB = [0] * 3
    NM = [0] * 21

    N = 0
    Z1 = 0
    N1 = 0
    IZ = 0
    Z = 0.1
    NS = [0] * 271
    IZMAX = 0
    S = 0.25 #constant value
    
    if len(sys.argv) < 3:
        print "Usage: zwicker.py <type D or F> <path/to/csv/file>"
        sys.exit()



    MS = sys.argv[1]
    fname = sys.argv[2]
    
    LT = get_file_data(fname, LT)
    TI = get_TI(LT, RAP, DLL)
    GI = set_critical_bands(GI, TI)
    LCB = get_lcb(GI)
    (N,LN) = zwicker_loudness(LE, LT, NM, MS, DDF, ZUP, N, N1, RNS,IZ, IZMAX, Z1, Z)

    print "Results:"
    print "-------------"

    print "Type"
    print MS
    print "Loudness(Sone) "
    print N

    print "Loudness Level (Phon) "
    print LN


    def restart():
        if N1 <= NM[i]:
            if N1 != NM[i]:
                j = 0
                flagin = True
                while flagin is True and j < 18:
                    if RNS[j] < NM[i]:
                        flagin = False
                    else:
                        j += 1

        Z2 = ZUP[i]
        N2 = NM[i]
  
        N += N2 * (Z2-Z1)
        # look at this
        # for (k = Z; k < (Z2 + 0.1); k + 0.1)
        k = Z
        for m in range(Z2 + 0.1):
            k += 0.1
            NS[IZ] = N1 - ((k - Z1) * USL[IG][j])
            if IZ < 269:  IZ += 1
        k = Z2 + 0.1
        Z = k
        IZ = IZMAX
