; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; Main CPU definitions
; -------------------------------------------------------------------------

MAINCPU		EQU	1

; -------------------------------------------------------------------------
; Addresses
; -------------------------------------------------------------------------

; Cartridge
CARTRIDGE	EQU	$400000			; Cartridge start
CARTRIDGEE	EQU	$800000			; Cartridge end
CARTRIDGES	EQU	CARTRIDGEE-CARTRIDGE	; Cartridge size
CARTID		EQU	CARTRIDGE+$000001	; RAM cartridge ID
CARTDATA	EQU	CARTRIDGE+$200001	; RAM cartridge data
CARTDATAE	EQU	CARTRIDGE+$300000	; RAM cartridge data end
CARTDATAS	EQU	(CARTDATAE-CARTDATA)/2+1; RAM cartridge data size
CARTWREN	EQU	CARTRIDGE+$3FFFFF	; RAM cartridge write enable
CARTSPECID	EQU	CARTRIDGE+$000010	; Special RAM cartridge ID
CARTSPECPRG	EQU	CARTRIDGE+$000020	; Special RAM cartridge handler

; Expansion
EXPANSION	EQU	$000000			; Expansion memory start
EXPANSIONE	EQU	$400000			; Expansion memory end
EXPANDS		EQU	EXPANSIONE-EXPANSION	; Expansion memory size

; Z80
Z80RAM		EQU	$A00000			; Z80 RAM start
Z80RAME		EQU	$A02000			; Z80 RAM end
Z80RAMS		EQU	Z80RAME-Z80RAM		; Z80 RAM size
Z80BUS		EQU	$A11100			; Z80 bus request
Z80RESET	EQU	$A11200			; Z80 reset

; Work RAM
WORKRAM		EQU	$FF0000			; Work RAM start
WORKRAME	EQU	$1000000		; Work RAM end
WORKRAMS	EQU	WORKRAME-WORKRAM	; Work RAM size

; Sound
YMADDR0		EQU	$A04000			; YM2612 address port 0
YMDATA0		EQU	$A04001			; YM2612 data port 0
YMADDR1		EQU	$A04002			; YM2612 address port 1
YMDATA1		EQU	$A04003			; YM2612 data port 1
PSGCTRL		EQU	$C00011			; PSG control port

; VDP
VDPDATA		EQU	$C00000			; VDP data port
VDPCTRL		EQU	$C00004			; VDP control port
VDPHVCNT	EQU	$C00008			; VDP H/V counter
VDPDEBUG	EQU	$C0001C			; VDP debug register

; I/O
REG_VERSION		EQU	$A10001			; Hardware version
IODATA1		EQU	$A10003			; I/O port 1 data port
IODATA2		EQU	$A10005			; I/O port 2 data port
IODATA3		EQU	$A10007			; I/O port 3 data port
IOCTRL1		EQU	$A10009			; I/O port 1 control port
IOCTRL2		EQU	$A1000B			; I/O port 2 control port
IOCTRL3		EQU	$A1000D			; I/O port 3 control port

; TMSS
TMSSSEGA	EQU	$A14000			; TMSS "SEGA" register
TMSSMODE	EQU	$A14100			; TMSS bus mode

; Mega CD BIOS ROM
CDBIOS		EQU	EXPANSION+$000000	; MCD BIOS ROM start
CDBIOSE		EQU	EXPANSION+$020000	; MCD BIOS ROM end
CDBIOSS		EQU	CDBIOSE-CDBIOS		; MCD BIOS ROM size

; Mega CD PRG-RAM
PRGRAM		EQU	EXPANSION+$020000	; MCD PRG-RAM bank start
PRGRAME		EQU	EXPANSION+$040000	; MCD PRG-RAM bank end
PRGRAMS		EQU	PRGRAME-PRGRAM		; MCD PRG-RAM bank size
SUBPRGRAM	EQU	$000000			; MCD Sub CPU address for PRG-RAM

; Mega CD Word RAM
WORDRAM1M	EQU	EXPANSION+$200000	; MCD Word RAM start (1M/1M)
WORDRAM1ME	EQU	EXPANSION+$220000	; MCD Word RAM end (1M/1M)
WORDRAM1MS	EQU	WORDRAM1ME-WORDRAM1M	; MCD Word RAM size (1M/1M)
WORDRAM2M	EQU	EXPANSION+$200000	; MCD Word RAM start (2M)
WORDRAM2ME	EQU	EXPANSION+$240000	; MCD Word RAM end (2M)
WORDRAM2MS	EQU	WORDRAM2ME-WORDRAM2M	; MCD Word RAM size (2M)
WORDRAMIMG	EQU	EXPANSION+$220000	; MCD VRAM image of Word RAM start (1M/1M)
WORDRAMIMGE	EQU	EXPANSION+$240000	; MCD VRAM image of Word RAM end (1M/1M)
WORDRAMIMGS	EQU	WORDRAMIMGE-WORDRAM1M	; MCD VRAM image of Word RAM size (1M/1M)
SUBWORDRAM2M	EQU	$080000			; MCD Sub CPU address for Word RAM (2M)
SUBWORDRAM1M	EQU	$0C0000			; MCD Sub CPU address for Word RAM (1M/1M)

; Mega CD gate array
GATEARRAY	EQU	$A12000			; Gate array
GAIRQ2		EQU	GATEARRAY+$0000		; IRQ2 send
GARESET		EQU	GATEARRAY+$0001		; Reset
GAPROTECT	EQU	GATEARRAY+$0002		; Write protection
GAMEMMODE	EQU	GATEARRAY+$0003		; Memory mode
GACDCMODE	EQU	GATEARRAY+$0004		; CDC mode/Device destination
GAUSERHINT	EQU	GATEARRAY+$0006		; User H-INT address
GACDCHOST	EQU	GATEARRAY+$0008		; 16-bit CDC data to host
GASTOPWATCH	EQU	GATEARRAY+$000C		; Stopwatch
GACOMFLAGS	EQU	GATEARRAY+$000E		; Communication flags
GAMAINFLAG	EQU	GATEARRAY+$000E		; Main CPU communication flag
GASUBFLAG	EQU	GATEARRAY+$000F		; Sub CPU communication flag
GACOMCMDS	EQU	GATEARRAY+$0010		; Communication commands
GACOMCMD0	EQU	GATEARRAY+$0010		; Communication command 0
GACOMCMD1	EQU	GATEARRAY+$0011		; Communication command 0
GACOMCMD2	EQU	GATEARRAY+$0012		; Communication command 1
GACOMCMD3	EQU	GATEARRAY+$0013		; Communication command 1
GACOMCMD4	EQU	GATEARRAY+$0014		; Communication command 2
GACOMCMD5	EQU	GATEARRAY+$0015		; Communication command 2
GACOMCMD6	EQU	GATEARRAY+$0016		; Communication command 3
GACOMCMD7	EQU	GATEARRAY+$0017		; Communication command 3
GACOMCMD8	EQU	GATEARRAY+$0018		; Communication command 4
GACOMCMD9	EQU	GATEARRAY+$0019		; Communication command 4
GACOMCMDA	EQU	GATEARRAY+$001A		; Communication command 5
GACOMCMDB	EQU	GATEARRAY+$001B		; Communication command 5
GACOMCMDC	EQU	GATEARRAY+$001C		; Communication command 6
GACOMCMDD	EQU	GATEARRAY+$001D		; Communication command 6
GACOMCMDE	EQU	GATEARRAY+$001E		; Communication command 7
GACOMCMDF	EQU	GATEARRAY+$001F		; Communication command 7
GACOMSTATS	EQU	GATEARRAY+$0020		; Communication statuses
GACOMSTAT0	EQU	GATEARRAY+$0020		; Communication status 0
GACOMSTAT1	EQU	GATEARRAY+$0021		; Communication status 0
GACOMSTAT2	EQU	GATEARRAY+$0022		; Communication status 1
GACOMSTAT3	EQU	GATEARRAY+$0023		; Communication status 1
GACOMSTAT4	EQU	GATEARRAY+$0024		; Communication status 2
GACOMSTAT5	EQU	GATEARRAY+$0025		; Communication status 2
GACOMSTAT6	EQU	GATEARRAY+$0026		; Communication status 3
GACOMSTAT7	EQU	GATEARRAY+$0027		; Communication status 3
GACOMSTAT8	EQU	GATEARRAY+$0028		; Communication status 4
GACOMSTAT9	EQU	GATEARRAY+$0029		; Communication status 4
GACOMSTATA	EQU	GATEARRAY+$002A		; Communication status 5
GACOMSTATB	EQU	GATEARRAY+$002B		; Communication status 5
GACOMSTATC	EQU	GATEARRAY+$002C		; Communication status 6
GACOMSTATD	EQU	GATEARRAY+$002D		; Communication status 6
GACOMSTATE	EQU	GATEARRAY+$002E		; Communication status 7
GACOMSTATF	EQU	GATEARRAY+$002F		; Communication status 7

; BIOS functions
BIOS_SetVDPRegs	EQU	CDBIOS+$2B0		; Set up VDP registers
BIOS_DMA68k	EQU	CDBIOS+$2D4		; DMA 68000 data to VDP memory

; CD Work RAM assignments
_EXCPT		EQU	$FFFFFD00		; Exception
_LEVEL6		EQU	$FFFFFD06		; V-INT
_LEVEL4		EQU	$FFFFFD0C		; H-INT
_LEVEL2		EQU	$FFFFFD12		; EXT-INT
_TRAP00		EQU	$FFFFFD18		; TRAP #00
_TRAP01		EQU	$FFFFFD1E		; TRAP #01
_TRAP02		EQU	$FFFFFD24		; TRAP #02
_TRAP03		EQU	$FFFFFD2A		; TRAP #03
_TRAP04		EQU	$FFFFFD30		; TRAP #04
_TRAP05		EQU	$FFFFFD36		; TRAP #05
_TRAP06		EQU	$FFFFFD3C		; TRAP #06
_TRAP07		EQU	$FFFFFD42		; TRAP #07
_TRAP08		EQU	$FFFFFD48		; TRAP #08
_TRAP09		EQU	$FFFFFD4E		; TRAP #09
_TRAP10		EQU	$FFFFFD54		; TRAP #10
_TRAP11		EQU	$FFFFFD5A		; TRAP #11
_TRAP12		EQU	$FFFFFD60		; TRAP #12
_TRAP13		EQU	$FFFFFD66		; TRAP #13
_TRAP14		EQU	$FFFFFD6C		; TRAP #14
_TRAP15		EQU	$FFFFFD72		; TRAP #15
_CHKERR		EQU	$FFFFFD78		; CHK exception
_ADRERR		EQU	$FFFFFD7E		; Address error
_CODERR		EQU	$FFFFFD7E		; Illegal instruction
_DIVERR		EQU	$FFFFFD84		; Division by zero
_TRPERR		EQU	$FFFFFD8A		; TRAPV
_NOCOD0		EQU	$FFFFFD90		; Line A emulator
_NOCOD1		EQU	$FFFFFD96		; Line F emulator
_SPVERR		EQU	$FFFFFD9C		; Privilege violation
_TRACE		EQU	$FFFFFDA2		; TRACE exception
_BURAM		EQU	$FFFFFDAE		; Cartridge Backup RAM handler

; -------------------------------------------------------------------------
; BIOS function codes
; -------------------------------------------------------------------------

BRMINIT		EQU	$00
BRMSTAT		EQU	$01
BRMSERCH	EQU	$02
BRMREAD		EQU	$03
BRMWRITE	EQU	$04
BRMDEL		EQU	$05
BRMFORMAT	EQU	$06
BRMDIR		EQU	$07
BRMVERIFY	EQU	$08

; -------------------------------------------------------------------------
; Constants
; -------------------------------------------------------------------------

PALLNCOLORS	EQU	$10			; Colors per palette line
PALLINES	EQU	4			; Number of palette lines
VSCRLCNT	EQU	$14			; Number of vertial scroll entries
HSCRLCNT	EQU	$E0			; Number of horizontal scroll entries
SPRITECNT	EQU	$50			; Nunber of sprites

; -------------------------------------------------------------------------
; Palette line structure
; -------------------------------------------------------------------------

	; rsreset
	; RSRPT.W	palCol, PALLNCOLORS, 1		; Palette entries
; PALLINESZ	rs.b	0			; Structure size
palCol0 = 0
palCol1 = 1
palCol2 = 2
palCol3 = 3
palCol4 = 4
palCol5 = 5
palCol6 = 6
palCol7 = 7
palCol8 = 8
palCol9 = 9
palCol10 = 10
palCol11 = 11
palCol12 = 12
palCol13 = 13
palCol14 = 14
palCol15 = 15
PALLINESZ = 16

; -------------------------------------------------------------------------
; Palette structure
; -------------------------------------------------------------------------

	; rsreset
	; RSRPT.B	palLn, PALLINES, PALLINESZ	; Palette lines
; PALETTESZ	rs.b	0			; Structure size
palLn0 = 0
palLn1 = 32
palLn2 = 64
palLn3 = 96
PALETTESZ = 128

; -------------------------------------------------------------------------
; Scroll entry structure
; -------------------------------------------------------------------------

	; rsreset
; scrlFG		rs.w	1			; Foreground entry
; scrlBG		rs.w	1			; Background entry
; SCRLENTRYSZ	rs.b	0			; Structure size
scrlFG = 0
scrlBG = 2
SCRLENTRYSZ = 4

; -------------------------------------------------------------------------
; Vertical scroll structure
; -------------------------------------------------------------------------

	; rsreset
	; RSRPT.B	vscrl, VSCRLCNT, SCRLENTRYSZ	; Scroll entries
; VSCROLLSZ	rs.b	0			; Structure size
vscrl0 = 0
vscrl1 = 4
vscrl2 = 8
vscrl3 = 12
vscrl4 = 16
vscrl5 = 20
vscrl6 = 24
vscrl7 = 28
vscrl8 = 32
vscrl9 = 36
vscrl10 = 40
vscrl11 = 44
vscrl12 = 48
vscrl13 = 52
vscrl14 = 56
vscrl15 = 64
vscrl16 = 68
vscrl17 = 72
vscrl18 = 76
vscrl19 = 80
VSCROLLSZ = 84

; -------------------------------------------------------------------------
; Horizontal scroll structure
; -------------------------------------------------------------------------

	; rsreset
	; RSRPT.B	hscrl, HSCRLCNT, SCRLENTRYSZ	; Scroll entries
; HSCROLLSZ	rs.b	0			; Structure size
hscrl0 = 0*SCRLENTRYSZ
hscrl1 = 1*SCRLENTRYSZ
hscrl2 = 2*SCRLENTRYSZ
hscrl3 = 3*SCRLENTRYSZ
hscrl4 = 4*SCRLENTRYSZ
hscrl5 = 5*SCRLENTRYSZ
hscrl6 = 6*SCRLENTRYSZ
hscrl7 = 7*SCRLENTRYSZ
hscrl8 = 8*SCRLENTRYSZ
hscrl9 = 9*SCRLENTRYSZ
hscrl10 = 10*SCRLENTRYSZ
hscrl11 = 11*SCRLENTRYSZ
hscrl12 = 12*SCRLENTRYSZ
hscrl13 = 13*SCRLENTRYSZ
hscrl14 = 14*SCRLENTRYSZ
hscrl15 = 15*SCRLENTRYSZ
hscrl16 = 16*SCRLENTRYSZ
hscrl17 = 17*SCRLENTRYSZ
hscrl18 = 18*SCRLENTRYSZ
hscrl19 = 19*SCRLENTRYSZ
hscrl20 = 20*SCRLENTRYSZ
hscrl21 = 21*SCRLENTRYSZ
hscrl22 = 22*SCRLENTRYSZ
hscrl23 = 23*SCRLENTRYSZ
hscrl24 = 24*SCRLENTRYSZ
hscrl25 = 25*SCRLENTRYSZ
hscrl26 = 26*SCRLENTRYSZ
hscrl27 = 27*SCRLENTRYSZ
hscrl28 = 28*SCRLENTRYSZ
hscrl29 = 29*SCRLENTRYSZ
hscrl30 = 30*SCRLENTRYSZ
hscrl31 = 31*SCRLENTRYSZ
hscrl32 = 32*SCRLENTRYSZ
hscrl33 = 33*SCRLENTRYSZ
hscrl34 = 34*SCRLENTRYSZ
hscrl35 = 35*SCRLENTRYSZ
hscrl36 = 36*SCRLENTRYSZ
hscrl37 = 37*SCRLENTRYSZ
hscrl38 = 38*SCRLENTRYSZ
hscrl39 = 39*SCRLENTRYSZ
hscrl40 = 40*SCRLENTRYSZ
hscrl41 = 41*SCRLENTRYSZ
hscrl42 = 42*SCRLENTRYSZ
hscrl43 = 43*SCRLENTRYSZ
hscrl44 = 44*SCRLENTRYSZ
hscrl45 = 45*SCRLENTRYSZ
hscrl46 = 46*SCRLENTRYSZ
hscrl47 = 47*SCRLENTRYSZ
hscrl48 = 48*SCRLENTRYSZ
hscrl49 = 49*SCRLENTRYSZ
hscrl50 = 50*SCRLENTRYSZ
hscrl51 = 51*SCRLENTRYSZ
hscrl52 = 52*SCRLENTRYSZ
hscrl53 = 53*SCRLENTRYSZ
hscrl54 = 54*SCRLENTRYSZ
hscrl55 = 55*SCRLENTRYSZ
hscrl56 = 56*SCRLENTRYSZ
hscrl57 = 57*SCRLENTRYSZ
hscrl58 = 58*SCRLENTRYSZ
hscrl59 = 59*SCRLENTRYSZ
hscrl60 = 60*SCRLENTRYSZ
hscrl61 = 61*SCRLENTRYSZ
hscrl62 = 62*SCRLENTRYSZ
hscrl63 = 63*SCRLENTRYSZ
hscrl64 = 64*SCRLENTRYSZ
hscrl65 = 65*SCRLENTRYSZ
hscrl66 = 66*SCRLENTRYSZ
hscrl67 = 67*SCRLENTRYSZ
hscrl68 = 68*SCRLENTRYSZ
hscrl69 = 69*SCRLENTRYSZ
hscrl70 = 70*SCRLENTRYSZ
hscrl71 = 71*SCRLENTRYSZ
hscrl72 = 72*SCRLENTRYSZ
hscrl73 = 73*SCRLENTRYSZ
hscrl74 = 74*SCRLENTRYSZ
hscrl75 = 75*SCRLENTRYSZ
hscrl76 = 76*SCRLENTRYSZ
hscrl77 = 77*SCRLENTRYSZ
hscrl78 = 78*SCRLENTRYSZ
hscrl79 = 79*SCRLENTRYSZ
hscrl80 = 80*SCRLENTRYSZ
hscrl81 = 81*SCRLENTRYSZ
hscrl82 = 82*SCRLENTRYSZ
hscrl83 = 83*SCRLENTRYSZ
hscrl84 = 84*SCRLENTRYSZ
hscrl85 = 85*SCRLENTRYSZ
hscrl86 = 86*SCRLENTRYSZ
hscrl87 = 87*SCRLENTRYSZ
hscrl88 = 88*SCRLENTRYSZ
hscrl89 = 89*SCRLENTRYSZ
hscrl90 = 90*SCRLENTRYSZ
hscrl91 = 91*SCRLENTRYSZ
hscrl92 = 92*SCRLENTRYSZ
hscrl93 = 93*SCRLENTRYSZ
hscrl94 = 94*SCRLENTRYSZ
hscrl95 = 95*SCRLENTRYSZ
hscrl96 = 96*SCRLENTRYSZ
hscrl97 = 97*SCRLENTRYSZ
hscrl98 = 98*SCRLENTRYSZ
hscrl99 = 99*SCRLENTRYSZ
hscrl100 = 100*SCRLENTRYSZ
hscrl101 = 101*SCRLENTRYSZ
hscrl102 = 102*SCRLENTRYSZ
hscrl103 = 103*SCRLENTRYSZ
hscrl104 = 104*SCRLENTRYSZ
hscrl105 = 105*SCRLENTRYSZ
hscrl106 = 106*SCRLENTRYSZ
hscrl107 = 107*SCRLENTRYSZ
hscrl108 = 108*SCRLENTRYSZ
hscrl109 = 109*SCRLENTRYSZ
hscrl110 = 110*SCRLENTRYSZ
hscrl111 = 111*SCRLENTRYSZ
hscrl112 = 112*SCRLENTRYSZ
hscrl113 = 113*SCRLENTRYSZ
hscrl114 = 114*SCRLENTRYSZ
hscrl115 = 115*SCRLENTRYSZ
hscrl116 = 116*SCRLENTRYSZ
hscrl117 = 117*SCRLENTRYSZ
hscrl118 = 118*SCRLENTRYSZ
hscrl119 = 119*SCRLENTRYSZ
hscrl120 = 120*SCRLENTRYSZ
hscrl121 = 121*SCRLENTRYSZ
hscrl122 = 122*SCRLENTRYSZ
hscrl123 = 123*SCRLENTRYSZ
hscrl124 = 124*SCRLENTRYSZ
hscrl125 = 125*SCRLENTRYSZ
hscrl126 = 126*SCRLENTRYSZ
hscrl127 = 127*SCRLENTRYSZ
hscrl128 = 128*SCRLENTRYSZ
hscrl129 = 129*SCRLENTRYSZ
hscrl130 = 130*SCRLENTRYSZ
hscrl131 = 131*SCRLENTRYSZ
hscrl132 = 132*SCRLENTRYSZ
hscrl133 = 133*SCRLENTRYSZ
hscrl134 = 134*SCRLENTRYSZ
hscrl135 = 135*SCRLENTRYSZ
hscrl136 = 136*SCRLENTRYSZ
hscrl137 = 137*SCRLENTRYSZ
hscrl138 = 138*SCRLENTRYSZ
hscrl139 = 139*SCRLENTRYSZ
hscrl140 = 140*SCRLENTRYSZ
hscrl141 = 141*SCRLENTRYSZ
hscrl142 = 142*SCRLENTRYSZ
hscrl143 = 143*SCRLENTRYSZ
hscrl144 = 144*SCRLENTRYSZ
hscrl145 = 145*SCRLENTRYSZ
hscrl146 = 146*SCRLENTRYSZ
hscrl147 = 147*SCRLENTRYSZ
hscrl148 = 148*SCRLENTRYSZ
hscrl149 = 149*SCRLENTRYSZ
hscrl150 = 150*SCRLENTRYSZ
hscrl151 = 151*SCRLENTRYSZ
hscrl152 = 152*SCRLENTRYSZ
hscrl153 = 153*SCRLENTRYSZ
hscrl154 = 154*SCRLENTRYSZ
hscrl155 = 155*SCRLENTRYSZ
hscrl156 = 156*SCRLENTRYSZ
hscrl157 = 157*SCRLENTRYSZ
hscrl158 = 158*SCRLENTRYSZ
hscrl159 = 159*SCRLENTRYSZ
hscrl160 = 160*SCRLENTRYSZ
hscrl161 = 161*SCRLENTRYSZ
hscrl162 = 162*SCRLENTRYSZ
hscrl163 = 163*SCRLENTRYSZ
hscrl164 = 164*SCRLENTRYSZ
hscrl165 = 165*SCRLENTRYSZ
hscrl166 = 166*SCRLENTRYSZ
hscrl167 = 167*SCRLENTRYSZ
hscrl168 = 168*SCRLENTRYSZ
hscrl169 = 169*SCRLENTRYSZ
hscrl170 = 170*SCRLENTRYSZ
hscrl171 = 171*SCRLENTRYSZ
hscrl172 = 172*SCRLENTRYSZ
hscrl173 = 173*SCRLENTRYSZ
hscrl174 = 174*SCRLENTRYSZ
hscrl175 = 175*SCRLENTRYSZ
hscrl176 = 176*SCRLENTRYSZ
hscrl177 = 177*SCRLENTRYSZ
hscrl178 = 178*SCRLENTRYSZ
hscrl179 = 179*SCRLENTRYSZ
hscrl180 = 180*SCRLENTRYSZ
hscrl181 = 181*SCRLENTRYSZ
hscrl182 = 182*SCRLENTRYSZ
hscrl183 = 183*SCRLENTRYSZ
hscrl184 = 184*SCRLENTRYSZ
hscrl185 = 185*SCRLENTRYSZ
hscrl186 = 186*SCRLENTRYSZ
hscrl187 = 187*SCRLENTRYSZ
hscrl188 = 188*SCRLENTRYSZ
hscrl189 = 189*SCRLENTRYSZ
hscrl190 = 190*SCRLENTRYSZ
hscrl191 = 191*SCRLENTRYSZ
hscrl192 = 192*SCRLENTRYSZ
hscrl193 = 193*SCRLENTRYSZ
hscrl194 = 194*SCRLENTRYSZ
hscrl195 = 195*SCRLENTRYSZ
hscrl196 = 196*SCRLENTRYSZ
hscrl197 = 197*SCRLENTRYSZ
hscrl198 = 198*SCRLENTRYSZ
hscrl199 = 199*SCRLENTRYSZ
hscrl200 = 200*SCRLENTRYSZ
hscrl201 = 201*SCRLENTRYSZ
hscrl202 = 202*SCRLENTRYSZ
hscrl203 = 203*SCRLENTRYSZ
hscrl204 = 204*SCRLENTRYSZ
hscrl205 = 205*SCRLENTRYSZ
hscrl206 = 206*SCRLENTRYSZ
hscrl207 = 207*SCRLENTRYSZ
hscrl208 = 208*SCRLENTRYSZ
hscrl209 = 209*SCRLENTRYSZ
hscrl210 = 210*SCRLENTRYSZ
hscrl211 = 211*SCRLENTRYSZ
hscrl212 = 212*SCRLENTRYSZ
hscrl213 = 213*SCRLENTRYSZ
hscrl214 = 214*SCRLENTRYSZ
hscrl215 = 215*SCRLENTRYSZ
hscrl216 = 216*SCRLENTRYSZ
hscrl217 = 217*SCRLENTRYSZ
hscrl218 = 218*SCRLENTRYSZ
hscrl219 = 219*SCRLENTRYSZ
hscrl220 = 220*SCRLENTRYSZ
hscrl221 = 221*SCRLENTRYSZ
hscrl222 = 222*SCRLENTRYSZ
hscrl223 = 223*SCRLENTRYSZ
HSCROLLSZ = 224*SCRLENTRYSZ

; -------------------------------------------------------------------------
; Sprite table entry structure
; -------------------------------------------------------------------------

	; rsreset
; sprY		rs.w	1			; Y position
; sprSize		rs.b	1			; Sprite size
; sprLink		rs.b	1			; Link data
; sprTile		rs.w	1			; Tile attributes
; sprX		rs.w	1			; X position
; SPRENTRYSZ	rs.b	0			; Structure size
sprY = 0
sprSize = 2
sprLink = 3
sprTile = 4
sprX = 6
SPRENTRYSZ = 8

; -------------------------------------------------------------------------
; Sprite table structure
; -------------------------------------------------------------------------

	; rsreset
	; RSRPT.B	spr, SPRITECNT, SPRENTRYSZ	; Sprite entries
; SPRTABLESZ	rs.b	0			; Structure size
spr0 = 0*SPRENTRYSZ
spr1 = 1*SPRENTRYSZ
spr2 = 2*SPRENTRYSZ
spr3 = 3*SPRENTRYSZ
spr4 = 4*SPRENTRYSZ
spr5 = 5*SPRENTRYSZ
spr6 = 6*SPRENTRYSZ
spr7 = 7*SPRENTRYSZ
spr8 = 8*SPRENTRYSZ
spr9 = 9*SPRENTRYSZ
spr10 = 10*SPRENTRYSZ
spr11 = 11*SPRENTRYSZ
spr12 = 12*SPRENTRYSZ
spr13 = 13*SPRENTRYSZ
spr14 = 14*SPRENTRYSZ
spr15 = 15*SPRENTRYSZ
spr16 = 16*SPRENTRYSZ
spr17 = 17*SPRENTRYSZ
spr18 = 18*SPRENTRYSZ
spr19 = 19*SPRENTRYSZ
spr20 = 20*SPRENTRYSZ
spr21 = 21*SPRENTRYSZ
spr22 = 22*SPRENTRYSZ
spr23 = 23*SPRENTRYSZ
spr24 = 24*SPRENTRYSZ
spr25 = 25*SPRENTRYSZ
spr26 = 26*SPRENTRYSZ
spr27 = 27*SPRENTRYSZ
spr28 = 28*SPRENTRYSZ
spr29 = 29*SPRENTRYSZ
spr30 = 30*SPRENTRYSZ
spr31 = 31*SPRENTRYSZ
spr32 = 32*SPRENTRYSZ
spr33 = 33*SPRENTRYSZ
spr34 = 34*SPRENTRYSZ
spr35 = 35*SPRENTRYSZ
spr36 = 36*SPRENTRYSZ
spr37 = 37*SPRENTRYSZ
spr38 = 38*SPRENTRYSZ
spr39 = 39*SPRENTRYSZ
spr40 = 40*SPRENTRYSZ
spr41 = 41*SPRENTRYSZ
spr42 = 42*SPRENTRYSZ
spr43 = 43*SPRENTRYSZ
spr44 = 44*SPRENTRYSZ
spr45 = 45*SPRENTRYSZ
spr46 = 46*SPRENTRYSZ
spr47 = 47*SPRENTRYSZ
spr48 = 48*SPRENTRYSZ
spr49 = 49*SPRENTRYSZ
spr50 = 50*SPRENTRYSZ
spr51 = 51*SPRENTRYSZ
spr52 = 52*SPRENTRYSZ
spr53 = 53*SPRENTRYSZ
spr54 = 54*SPRENTRYSZ
spr55 = 55*SPRENTRYSZ
spr56 = 56*SPRENTRYSZ
spr57 = 57*SPRENTRYSZ
spr58 = 58*SPRENTRYSZ
spr59 = 59*SPRENTRYSZ
spr60 = 60*SPRENTRYSZ
spr61 = 61*SPRENTRYSZ
spr62 = 62*SPRENTRYSZ
spr63 = 63*SPRENTRYSZ
spr64 = 64*SPRENTRYSZ
spr65 = 65*SPRENTRYSZ
spr66 = 66*SPRENTRYSZ
spr67 = 67*SPRENTRYSZ
spr68 = 68*SPRENTRYSZ
spr69 = 69*SPRENTRYSZ
spr70 = 70*SPRENTRYSZ
spr71 = 71*SPRENTRYSZ
spr72 = 72*SPRENTRYSZ
spr73 = 73*SPRENTRYSZ
spr74 = 74*SPRENTRYSZ
spr75 = 75*SPRENTRYSZ
spr76 = 76*SPRENTRYSZ
spr77 = 77*SPRENTRYSZ
spr78 = 78*SPRENTRYSZ
spr79 = 79*SPRENTRYSZ
SPRTABLESZ = 80*SPRENTRYSZ

; -------------------------------------------------------------------------
; YM2612 register bank structure
; -------------------------------------------------------------------------
	
	; rsreset
; ymAddr		rs.b	1			; Address
; ymData		rs.b	1			; Data
; YMREGSZ		rs.b	0			; Structure size
ymAddr = 0
ymData = 1
YMREGSZ = 2

; -------------------------------------------------------------------------
; Request Z80 bus access
; -------------------------------------------------------------------------

Z80REQ macro
	move.w	#$100,Z80BUS			; Request Z80 bus access
	endm

; -------------------------------------------------------------------------
; Wait for Z80 bus request acknowledgement
; -------------------------------------------------------------------------

Z80WAIT macro
.Wait\@:
	btst	#0,Z80BUS			; Was the request acknowledged?
	bne.s	.Wait\@				; If not, wait
	endm

; -------------------------------------------------------------------------
; Request Z80 bus access
; -------------------------------------------------------------------------

Z80STOP macro
	Z80REQ					; Request Z80 bus access
	Z80WAIT					; Wait for acknowledgement
	endm

; -------------------------------------------------------------------------
; Release the Z80 bus
; -------------------------------------------------------------------------

Z80START macro
	move.w	#0,Z80BUS			; Release the bus
	endm

; -------------------------------------------------------------------------
; Request Z80 reset
; -------------------------------------------------------------------------

Z80RESON macro
	move.w	#0,Z80RESET			; Request Z80 reset
	ror.b	#8,d0				; Delay
	endm

; -------------------------------------------------------------------------
; Cancel Z80 reset
; -------------------------------------------------------------------------

Z80RESOFF macro
	move.w	#$100,Z80RESET			; Cancel Z80 reset
	endm

; -------------------------------------------------------------------------
; Wait for DMA to finish
; -------------------------------------------------------------------------
; PARAMETERS:
;	ctrl - (OPTIONAL) VDP control port address register
; -------------------------------------------------------------------------

DMAWAIT macro ctrl
.Wait\@:
	if narg>0
		btst	#1,1(\ctrl)		; Is DMA active?
	else
		move.w	VDPCTRL,d0		; Is DMA active?
		btst	#1,d0
	endif
	bne.s	.Wait\@				; If so, wait
	endm

; -------------------------------------------------------------------------
; VDP command instruction
; -------------------------------------------------------------------------
; PARAMETERS:
;	addr - Address in VDP memory
;	type - Type of VDP memory
;	rwd  - VDP command
;	end  - Destination, or modifier if end2 is defined
;	end2 - Destination if defined
; -------------------------------------------------------------------------

VRAMWRITE	EQU	$40000000		; VRAM write
CRAMWRITE	EQU	$C0000000		; CRAM write
VSRAMWRITE	EQU	$40000010		; VSRAM write
VRAMREAD	EQU	$00000000		; VRAM read
CRAMREAD	EQU	$00000020		; CRAM read
VSRAMREAD	EQU	$00000010		; VSRAM read
VRAMDMA		EQU	$40000080		; VRAM DMA
CRAMDMA		EQU	$C0000080		; CRAM DMA
VSRAMDMA	EQU	$40000090		; VSRAM DMA
VRAMCOPY	EQU	$000000C0		; VRAM DMA copy

; -------------------------------------------------------------------------

VDPCMD macro ins, addr, type, rwd, end, end2
	local	cmd
cmd	= (\type\\rwd\)|(((\addr)&$3FFF)<<16)|((\addr)/$4000)
	if narg=5
		\ins	#\#cmd,\end
	elseif narg>=6
		\ins	#(\#cmd)\end,\end2
	else
		\ins	cmd
	endif
	endm

; -------------------------------------------------------------------------
; VDP DMA from 68000 memory to VDP memory
; -------------------------------------------------------------------------
; PARAMETERS:
;	src  - Source address in 68000 memory
;	dest - Destination address in VDP memory
;	len  - Length of data in bytes
;	type - Type of VDP memory
;	a6.l - VDP control port
; -------------------------------------------------------------------------

DMA68K2 macro src, dest, len, type
	; DMA data
	move.l	#$93009400|((((\len)/2)&$FF00)>>8)|((((\len)/2)&$FF)<<16),(a6)
	move.l	#$95009600|((((\src)/2)&$FF00)>>8)|((((\src)/2)&$FF)<<16),(a6)
	move.w	#$9700|(((\src)>>17)&$7F),(a6)
	VDPCMD	move.w,\dest,\type,DMA,>>16,(a6)
	VDPCMD	move.w,\dest,\type,DMA,&$FFFF,-(sp)
	move.w	(sp)+,(a6)

	; Manually write first word
	VDPCMD	move.l,\dest,\type,WRITE,(a6)
	move.w	\src,VDPDATA
	endm

; -------------------------------------------------------------------------
; VDP DMA from 68000 memory to VDP memory
; (Automatically sets VDP control port in a6)
; -------------------------------------------------------------------------
; PARAMETERS:
;	src  - Source address in 68000 memory
;	dest - Destination address in VDP memory
;	len  - Length of data in bytes
;	type - Type of VDP memory
; -------------------------------------------------------------------------

DMA68K macro src, dest, len, type
	lea	VDPCTRL,a6
	DMA68K2	\src,\dest,\len,\type
	endm

; -------------------------------------------------------------------------
; VDP DMA fill VRAM with byte
; -------------------------------------------------------------------------
; PARAMETERS:
;	addr - Address in VRAM
;	len  - Length of fill in bytes
;	byte - Byte to fill VRAM with
; -------------------------------------------------------------------------

DMAFILL macro addr, len, byte
	; DMA fill
	lea	VDPCTRL,a6
	move.w	#$8F01,(a6)
	move.l	#$93009400|((((\len)-1)&$FF00)>>8)|((((\len)-1)&$FF)<<16),(a6)
	move.w	#$9780,(a6)
	VDPCMD	move.l,\addr,VRAM,DMA,(a6)
	move.w	#(\byte)<<8,VDPDATA
	DMAWAIT	a6
	
	; Manually write first word
	VDPCMD	move.l,\addr,VRAM,WRITE,(a6)
	move.w	#((\byte)<<8)|(\byte),VDPDATA
	move.w	#$8F02,(a6)
	endm

; -------------------------------------------------------------------------
; VDP DMA copy region of VRAM to another location in VRAM
; Auto-increment should be set to 1 beforehand.
; -------------------------------------------------------------------------
; PARAMETERS:
;	src  - Source address in VRAM
;	dest - Destination address in VRAM
;	len  - Length of copy in bytes
; -------------------------------------------------------------------------

DMACOPY macro src, dest, len
	lea	VDPCTRL,a6
	move.w	#$8F01,(a6)
	move.l	#$93009400|((((\len)-1)&$FF00)>>8)|((((\len)-1)&$FF)<<16),(a6)
	move.l	#$95009600|(((\src)&$FF00)>>8)|(((\src)&$FF)<<16),(a6)
	move.w	#$97C0,(a6)
	VDPCMD	move.l,\addr,VRAM,COPY,(a6)
	DMAWAIT	a6
	move.w	#$8F02,(a6)
	endm

; -------------------------------------------------------------------------
; Copy image buffer to VRAM
; -------------------------------------------------------------------------
; PARAMETERS:
;	src  - Source address
;	buf  - Buffer ID
;	part - Buffer part ID
; -------------------------------------------------------------------------

COPYIMG macro src, buf, part
	local off, len, vadr
	
	if (\part)=0
		off: = 0
		len: = IMGV1LEN
	else
		off: = IMGV1LEN
		len: = IMGLENGTH-IMGV1LEN
	endif
	
	vadr: = IMGVRAM+((\buf)*IMGLENGTH)
	if (\part)<>0
		vadr: = vadr+IMGV1LEN
	endif

	DMA68K	(\src)+off,vadr,\#len,VRAM
	endm

; -------------------------------------------------------------------------
