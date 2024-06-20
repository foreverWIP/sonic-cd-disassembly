; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; Palmtree Panic Act 1 object layout
; -------------------------------------------------------------------------

ObjectLayouts:
	dc.w	.Layout-ObjectLayouts
	dc.w	.Null-ObjectLayouts

; -------------------------------------------------------------------------

	dc.w	$FFFF, 0, 0, 0
	
.Layout:
	binclude	"Level/Palmtree Panic/Data/Objects (Act 1).bin"

.Null:
	dc.w	$FFFF, 0, 0

; -------------------------------------------------------------------------
