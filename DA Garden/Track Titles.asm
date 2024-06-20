; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; DA Garden track titles
; -------------------------------------------------------------------------

	include	"_Include/Common.i"
	include	"_Include/Main CPU.i"

; -------------------------------------------------------------------------

	org	$12C00
DAGrdnTrkTitles:
	obj	WORDRAM2M+*
Art_TrkBoss:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Boss).nem"
	even
Art_TrkCCZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Collision Chaos).nem"
	even
Art_TrkCCZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Collision Chaos B Mix).nem"
	even
Art_TrkCCZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Collision Chaos G Mix).nem"
	even
Art_TrkFinal:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Final Fever).nem"
	even
Art_TrkGameOver:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Game Over).nem"
	even
Art_TrkInvincible:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Invincible).nem"
	even
Art_TrkLittlePlanet:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Little Planet).nem"
	even
Art_TrkMMZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Metallic Madness).nem"
	even
Art_TrkMMZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Metallic Madness B Mix).nem"
	even
Art_TrkMMZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Metallic Madness G Mix).nem"
	even
Art_TrkPPZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Palmtree Panic).nem"
	even
Art_TrkPPZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Palmtree Panic B Mix).nem"
	even
Art_TrkPPZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Palmtree Panic G Mix).nem"
	even
Art_TrkQQZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Quartz Quadrant).nem"
	even
Art_TrkQQZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Quartz Quadrant B Mix).nem"
	even
Art_TrkQQZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Quartz Quadrant G Mix).nem"
	even
Art_TrkSpecStg:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Special Stage).nem"
	even
Art_TrkSpeedUp:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Speed Up).nem"
	even
Art_TrkSSZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Stardust Speedway).nem"
	even
Art_TrkSSZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Stardust Speedway B Mix).nem"
	even
Art_TrkSSZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Stardust Speedway G Mix).nem"
	even
Art_TrkTitle:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Title).nem"
	even
	
	; Unknown amalgamation of track names
	binclude	"DA Garden/Objects/Track Title/Data/Art (Unknown).nem"
	even
	
Art_TrkTTZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Tidal Tempest).nem"
	even
Art_TrkTTZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Tidal Tempest B Mix).nem"
	even
Art_TrkTTZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Tidal Tempest G Mix).nem"
	even
Art_TrkWWZ:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Wacky Workbench).nem"
	even
Art_TrkWWZB:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Wacky Workbench B Mix).nem"
	even
Art_TrkWWZG:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Wacky Workbench G Mix).nem"
	even
Art_TrkZoneClear:
	binclude	"DA Garden/Objects/Track Title/Data/Art (Zone Clear).nem"
	even
	
	if REGION=USA
Art_TrkOpening:
		binclude	"DA Garden/Objects/Track Title/Data/Art (Opening, USA).nem"
		even
Art_TrkEnding:
		binclude	"DA Garden/Objects/Track Title/Data/Art (Ending, USA).nem"
		even
	else
Art_TrkOpening:
		binclude	"DA Garden/Objects/Track Title/Data/Art (Opening, Japan, Europe).nem"
		even
Art_TrkEnding:
		binclude	"DA Garden/Objects/Track Title/Data/Art (Ending, Japan, Europe).nem"
		even
	endif
	objend

; -------------------------------------------------------------------------
