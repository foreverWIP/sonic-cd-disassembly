; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; Palmtree Panic Act 1 Good Future palette data
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; Palette table
; -------------------------------------------------------------------------

PaletteTable:
	dc.l	Pal_S1SegaBG			; Sonic 1 SEGA screen background (leftover)
	dc.w	palette
	dc.w	$1F
	dc.l	Pal_S1Title			; Sonic 1 title screen (leftover)
	dc.w	palette
	dc.w	$1F
	dc.l	Pal_S1LevSel			; Sonic 1 level select screen (leftover)
	dc.w	palette
	dc.w	$1F
	dc.l	Pal_Sonic			; Sonic
	dc.w	palette
	dc.w	7
	dc.l	Pal_Level			; Level
	dc.w	palette+$20
	dc.w	$17
	dc.l	Pal_UnkCapsule			; Unknown flower capsule
	dc.w	palette+$20
	dc.w	7

; -------------------------------------------------------------------------

; Sonic 1 SEGA screen background (leftover, data completely removed)
Pal_S1SegaBG:

; Sonic 1 title screen (leftover)
Pal_S1Title:
	binclude	"Level/_Data/Palette (Sonic 1 Title).bin"
	even

; Sonic 1 level select screen (leftover)
Pal_S1LevSel:
	binclude	"Level/_Data/Palette (Sonic 1 Level Select).bin"
	even

; Sonic palette
Pal_Sonic:
	binclude	"Level/_Objects/Sonic/Data/Palette.bin"
	even

; Level palette
Pal_Level:
	binclude	"Level/Palmtree Panic/Data/Palette (Good Future).bin"
	even

; Unknown flower capsule palette
Pal_UnkCapsule:
	binclude	"Level/Palmtree Panic/Data/Unused/Palette (Flower Capsule, Good Future).bin"
	even

; -------------------------------------------------------------------------
