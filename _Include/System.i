; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By RalakiMUS 2021
; -------------------------------------------------------------------------
; System definitions
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; File IDs
; -------------------------------------------------------------------------

	; rsreset
FID_R11A	= 0			; Palmtree Panic Act 1 Present
FID_R11B	= 1			; Palmtree Panic Act 1 Past
FID_R11C	= 2			; Palmtree Panic Act 1 Good Future
FID_R11D	= 3			; Palmtree Panic Act 1 Bad Future
FID_MDINIT	= 4			; Mega Drive initialization
FID_SNDTEST	= 5			; Sound test
FID_STAGESEL	= 6			; Stage select
FID_R12A	= 7			; Palmtree Panic Act 2 Present
FID_R12B	= 8			; Palmtree Panic Act 2 Past
FID_R12C	= 9			; Palmtree Panic Act 2 Good Future
FID_R12D	= 10			; Palmtree Panic Act 2 Bad Future
FID_TITLEMAIN	= 11			; Title screen (Main CPU)
FID_TITLESUB	= 12			; Title screen (Sub CPU)
FID_WARP	= 13			; Warp sequence
FID_TIMEATKMAIN	= 14			; Time attack menu (Main CPU)
FID_TIMEATKSUB	= 15			; Time attack menu (Sub CPU)
FID_IPX		= 16			; Main program
FID_PENCILSTM	= 17			; Pencil test FMV data
FID_OPENSTM	= 18			; Opening FMV data
FID_BADENDSTM	= 19			; Bad ending FMV data
FID_GOODENDSTM	= 20			; Good ending FMV data
FID_OPENMAIN	= 21			; Opening FMV (Main CPU)
FID_OPENSUB	= 22			; Opening FMV (Sub CPU)
FID_COMINSOON	= 23			; "Comin' Soon" screen
FID_DAGARDMAIN	= 24			; D.A. Garden (Main CPU)
FID_DAGARDSUB	= 25			; D.A. Garden (Sub CPU)
FID_R31A	= 26			; Collision Chaos Act 1 Present
FID_R31B	= 27			; Collision Chaos Act 1 Past
FID_R31C	= 28			; Collision Chaos Act 1 Good Future
FID_R31D	= 29			; Collision Chaos Act 1 Bad Future
FID_R32A	= 30			; Collision Chaos Act 2 Present 
FID_R32B	= 31			; Collision Chaos Act 2 Past 
FID_R32C	= 32			; Collision Chaos Act 2 Good Future 
FID_R32D	= 33			; Collision Chaos Act 2 Bad Future 
FID_R33C	= 34			; Collision Chaos Act 3 Good Future 
FID_R33D	= 35			; Collision Chaos Act 3 Bad Future 
FID_R13C	= 36			; Palmtree Panic Act 3 Good Future
FID_R13D	= 37			; Palmtree Panic Act 3 Bad Future 
FID_R41A	= 38			; Tidal Tempest Act 1 Present
FID_R41B	= 39			; Tidal Tempest Act 1 Past
FID_R41C	= 40			; Tidal Tempest Act 1 Good Future
FID_R41D	= 41			; Tidal Tempest Act 1 Bad Future
FID_R42A	= 42			; Tidal Tempest Act 2 Present 
FID_R42B	= 43			; Tidal Tempest Act 2 Past 
FID_R42C	= 44			; Tidal Tempest Act 2 Good Future 
FID_R42D	= 45			; Tidal Tempest Act 2 Bad Future 
FID_R43C	= 46			; Tidal Tempest Act 3 Good Future 
FID_R43D	= 47			; Tidal Tempest Act 3 Bad Future 
FID_R51A	= 48			; Quartz Quadrant Act 1 Present
FID_R51B	= 49			; Quartz Quadrant Act 1 Past
FID_R51C	= 50			; Quartz Quadrant Act 1 Good Future
FID_R51D	= 51			; Quartz Quadrant Act 1 Bad Future
FID_R52A	= 52			; Quartz Quadrant Act 2 Present 
FID_R52B	= 53			; Quartz Quadrant Act 2 Past 
FID_R52C	= 54			; Quartz Quadrant Act 2 Good Future 
FID_R52D	= 55			; Quartz Quadrant Act 2 Bad Future 
FID_R53C	= 56			; Quartz Quadrant Act 3 Good Future 
FID_R53D	= 57			; Quartz Quadrant Act 3 Bad Future 
FID_R61A	= 58			; Wacky Workbench Act 1 Present
FID_R61B	= 59			; Wacky Workbench Act 1 Past
FID_R61C	= 60			; Wacky Workbench Act 1 Good Future
FID_R61D	= 61			; Wacky Workbench Act 1 Bad Future
FID_R62A	= 62			; Wacky Workbench Act 2 Present 
FID_R62B	= 63			; Wacky Workbench Act 2 Past 
FID_R62C	= 64			; Wacky Workbench Act 2 Good Future 
FID_R62D	= 65			; Wacky Workbench Act 2 Bad Future 
FID_R63C	= 66			; Wacky Workbench Act 3 Good Future 
FID_R63D	= 67			; Wacky Workbench Act 3 Bad Future 
FID_R71A	= 68			; Stardust Speedway Act 1 Present
FID_R71B	= 69			; Stardust Speedway Act 1 Past
FID_R71C	= 70			; Stardust Speedway Act 1 Good Future
FID_R71D	= 71			; Stardust Speedway Act 1 Bad Future
FID_R72A	= 72			; Stardust Speedway Act 2 Present 
FID_R72B	= 73			; Stardust Speedway Act 2 Past 
FID_R72C	= 74			; Stardust Speedway Act 2 Good Future 
FID_R72D	= 75			; Stardust Speedway Act 2 Bad Future 
FID_R73C	= 76			; Stardust Speedway Act 3 Good Future 
FID_R73D	= 77			; Stardust Speedway Act 3 Bad Future 
FID_R81A	= 78			; Metallic Madness Act 1 Present
FID_R81B	= 79			; Metallic Madness Act 1 Past
FID_R81C	= 80			; Metallic Madness Act 1 Good Future
FID_R81D	= 81			; Metallic Madness Act 1 Bad Future
FID_R82A	= 82			; Metallic Madness Act 2 Present 
FID_R82B	= 83			; Metallic Madness Act 2 Past 
FID_R82C	= 84			; Metallic Madness Act 2 Good Future 
FID_R82D	= 85			; Metallic Madness Act 2 Bad Future 
FID_R83C	= 86			; Metallic Madness Act 3 Good Future 
FID_R83D	= 87			; Metallic Madness Act 3 Bad Future 
FID_SPECMAIN	= 88			; Special Stage (Main CPU)
FID_SPECSUB	= 89			; Special Stage (Sub CPU)
FID_R1PCM	= 90			; PCM driver (Palmtree Panic)
FID_R3PCM	= 91			; PCM driver (Collision Chaos)
FID_R4PCM	= 92			; PCM driver (Tidal Tempest)
FID_R5PCM	= 93			; PCM driver (Quartz Quadrant)
FID_R6PCM	= 94			; PCM driver (Wacky Workbench)
FID_R7PCM	= 95			; PCM driver (Stardust Speedway)
FID_R8PCM	= 96			; PCM driver (Metallic Madness)
FID_BOSSPCM	= 97			; PCM driver (Boss)
FID_FINALPCM	= 98			; PCM driver (Final boss)
FID_DAGARDDATA	= 99			; D.A. Garden data
FID_R11ADEMO	= 100			; Palmtree Panic Act 1 Good Future demo
FID_VISMODE	= 101			; Visual Mode
FID_BURAMINIT	= 102			; Backup RAM initialization
FID_BURAMSUB	= 103			; Backup RAM functions
FID_BURAMMAIN	= 104			; Backup RAM manager
FID_THANKSMAIN	= 105			; "Thank You" screen (Main CPU)
FID_THANKSSUB	= 106			; "Thank You" screen (Sub CPU)
FID_THANKSDATA	= 107			; "Thank You" screen  data
FID_ENDMAIN	= 108			; Ending FMV (Main CPU)
FID_BADENDSUB	= 109			; Bad ending FMV (Sub CPU, not a typo)
FID_GOODENDSUB	= 110			; Good ending FMV (Sub CPU, not a typo)
FID_FUNISINF	= 111			; "Fun is infinite" screen
FID_SS8CREDS	= 112			; Special stage 8 credits
FID_MCSONIC	= 113			; M.C. Sonic screen
FID_TAILS	= 114			; Tails screen
FID_BATMAN	= 115			; Batman Sonic screen
FID_CUTESONIC	= 116			; Cute Sonic screen
FID_STAFFTIMES	= 117			; Best staff times screen
FID_DUMMY5	= 118			; Copy of sound test (Unused)
FID_DUMMY6	= 119			; Copy of sound test (Unused)
FID_DUMMY7	= 120			; Copy of sound test (Unused)
FID_DUMMY8	= 121			; Copy of sound test (Unused)
FID_DUMMY9	= 122			; Copy of sound test (Unused)
FID_PENCILMAIN	= 123			; Pencil test FMV (Main CPU)
FID_PENCILSUB	= 124			; Pencil test FMV (Sub CPU)
FID_R43CDEMO	= 125			; Tidal Tempest Act 3 Good Future demo
FID_R82ADEMO	= 126			; Metallic Madness Act 2 Present demo

; -------------------------------------------------------------------------
; Sub CPU commands
; -------------------------------------------------------------------------

	; rsset	1
SCMD_R11A = 1			; Load Palmtree Panic Act 1 Present
SCMD_R11B = 2			; Load Palmtree Panic Act 1 Past
SCMD_R11C = 3			; Load Palmtree Panic Act 1 Good Future
SCMD_R11D = 4			; Load Palmtree Panic Act 1 Bad Future
SCMD_MDINIT = 5			; Load Mega Drive initialization
SCMD_STAGESEL = 6			; Load stage select
SCMD_R12A = 7			; Load Palmtree Panic Act 2 Present
SCMD_R12B = 8			; Load Palmtree Panic Act 2 Past
SCMD_R12C = 9			; Load Palmtree Panic Act 2 Good Future
SCMD_R12D = 10			; Load Palmtree Panic Act 2 Bad Future
SCMD_TITLE = 11			; Load title screen
SCMD_WARP = 12			; Load warp sequence
SCMD_TIMEATK = 13			; Load time attack menu
SCMD_FADECDA = 14			; Fade out CDDA music
SCMD_R1AMUS = 15			; Play Palmtree Panic Present music
SCMD_R1CMUS = 16			; Play Palmtree Panic Good Future music
SCMD_R1DMUS = 17			; Play Palmtree Panic Bad Future music
SCMD_R3AMUS = 18			; Play Collision Chaos Present music
SCMD_R3CMUS = 19			; Play Collision Chaos Good Future music
SCMD_R3DMUS = 20			; Play Collision Chaos Bad Future music
SCMD_R4AMUS = 21			; Play Tidal Tempest Present music
SCMD_R4CMUS = 22			; Play Tidal Tempest Good Future music
SCMD_R4DMUS = 23			; Play Tidal Tempest Bad Future music
SCMD_R5AMUS = 24			; Play Quartz Quadrant Present music
SCMD_R5CMUS = 25			; Play Quartz Quadrant Good Future music
SCMD_R5DMUS = 26			; Play Quartz Quadrant Bad Future music
SCMD_R6AMUS = 27			; Play Wacky Workbench Present music
SCMD_R6CMUS = 28			; Play Wacky Workbench Good Future music
SCMD_R6DMUS = 29			; Play Wacky Workbench Bad Future music
SCMD_R7AMUS = 30			; Play Stardust Speedway Present music
SCMD_R7CMUS = 31			; Play Stardust Speedway Good Future music
SCMD_R7DMUS = 32			; Play Stardust Speedway Bad Future music
SCMD_R8AMUS = 33			; Play Metallic Madness Present music
SCMD_R8CMUS = 34			; Play Metallic Madness Good Future music
SCMD_IPX = 35			; Load main program
SCMD_R43CDEMO = 36			; Load Tidal Tempest Act 3 Good Future demo
SCMD_R82ADEMO = 37			; Load Metallic Madness Act 2 Present demo
SCMD_SNDTEST = 38			; Load sound test
		; rs.b	1			; Invalid
SCMD_R31A = 40			; Load Collision Chaos Act 1 Present
SCMD_R31B = 41			; Load Collision Chaos Act 1 Past
SCMD_R31C = 42			; Load Collision Chaos Act 1 Good Future
SCMD_R31D = 43			; Load Collision Chaos Act 1 Bad Future
SCMD_R32A = 44			; Load Collision Chaos Act 2 Present 
SCMD_R32B = 45			; Load Collision Chaos Act 2 Past 
SCMD_R32C = 46			; Load Collision Chaos Act 2 Good Future 
SCMD_R32D = 47			; Load Collision Chaos Act 2 Bad Future 
SCMD_R33C = 48			; Load Collision Chaos Act 3 Good Future 
SCMD_R33D = 49			; Load Collision Chaos Act 3 Bad Future 
SCMD_R13C = 50			; Load Palmtree Panic Act 3 Good Future
SCMD_R13D = 51			; Load Palmtree Panic Act 3 Bad Future 
SCMD_R41A = 52			; Load Tidal Tempest Act 1 Present
SCMD_R41B = 53			; Load Tidal Tempest Act 1 Past
SCMD_R41C = 54			; Load Tidal Tempest Act 1 Good Future
SCMD_R41D = 55			; Load Tidal Tempest Act 1 Bad Future
SCMD_R42A = 56			; Load Tidal Tempest Act 2 Present 
SCMD_R42B = 57			; Load Tidal Tempest Act 2 Past 
SCMD_R42C = 58			; Load Tidal Tempest Act 2 Good Future 
SCMD_R42D = 59			; Load Tidal Tempest Act 2 Bad Future 
SCMD_R43C = 60			; Load Tidal Tempest Act 3 Good Future 
SCMD_R43D = 61			; Load Tidal Tempest Act 3 Bad Future 
SCMD_R51A = 62			; Load Quartz Quadrant Act 1 Present
SCMD_R51B = 63			; Load Quartz Quadrant Act 1 Past
SCMD_R51C = 64			; Load Quartz Quadrant Act 1 Good Future
SCMD_R51D = 65			; Load Quartz Quadrant Act 1 Bad Future
SCMD_R52A = 66			; Load Quartz Quadrant Act 2 Present 
SCMD_R52B = 67			; Load Quartz Quadrant Act 2 Past 
SCMD_R52C = 68			; Load Quartz Quadrant Act 2 Good Future 
SCMD_R52D = 69			; Load Quartz Quadrant Act 2 Bad Future 
SCMD_R53C = 70			; Load Quartz Quadrant Act 3 Good Future 
SCMD_R53D = 71			; Load Quartz Quadrant Act 3 Bad Future 
SCMD_R61A = 72			; Load Wacky Workbench Act 1 Present
SCMD_R61B = 73			; Load Wacky Workbench Act 1 Past
SCMD_R61C = 74			; Load Wacky Workbench Act 1 Good Future
SCMD_R61D = 75			; Load Wacky Workbench Act 1 Bad Future
SCMD_R62A = 76			; Load Wacky Workbench Act 2 Present 
SCMD_R62B = 77			; Load Wacky Workbench Act 2 Past 
SCMD_R62C = 78			; Load Wacky Workbench Act 2 Good Future 
SCMD_R62D = 79			; Load Wacky Workbench Act 2 Bad Future 
SCMD_R63C = 80			; Load Wacky Workbench Act 3 Good Future 
SCMD_R63D = 81			; Load Wacky Workbench Act 3 Bad Future 
SCMD_R71A = 82			; Load Stardust Speedway Act 1 Present
SCMD_R71B = 83			; Load Stardust Speedway Act 1 Past
SCMD_R71C = 84			; Load Stardust Speedway Act 1 Good Future
SCMD_R71D = 85			; Load Stardust Speedway Act 1 Bad Future
SCMD_R72A = 86			; Load Stardust Speedway Act 2 Present 
SCMD_R72B = 87			; Load Stardust Speedway Act 2 Past 
SCMD_R72C = 88			; Load Stardust Speedway Act 2 Good Future 
SCMD_R72D = 89			; Load Stardust Speedway Act 2 Bad Future 
SCMD_R73C = 90			; Load Stardust Speedway Act 3 Good Future 
SCMD_R73D = 91			; Load Stardust Speedway Act 3 Bad Future 
SCMD_R81A = 92			; Load Metallic Madness Act 1 Present
SCMD_R81B = 93			; Load Metallic Madness Act 1 Past
SCMD_R81C = 94			; Load Metallic Madness Act 1 Good Future
SCMD_R81D = 95			; Load Metallic Madness Act 1 Bad Future
SCMD_R82A = 96			; Load Metallic Madness Act 2 Present 
SCMD_R82B = 97			; Load Metallic Madness Act 2 Past 
SCMD_R82C = 98			; Load Metallic Madness Act 2 Good Future 
SCMD_R82D = 99			; Load Metallic Madness Act 2 Bad Future 
SCMD_R83C = 100			; Load Metallic Madness Act 3 Good Future 
SCMD_R83D = 101			; Load Metallic Madness Act 3 Bad Future 
SCMD_R8DMUS = 102			; Play Metallic Madness Bad Future music
SCMD_BOSSMUS = 103			; Play boss music
SCMD_FINALMUS = 104			; Play final boss music
SCMD_TITLEMUS = 105			; Play title screen music
SCMD_TMATKMUS = 106			; Play time attack menu music
SCMD_RESULTMUS = 107			; Play results music
SCMD_SHOESMUS = 108			; Play speed shoes music
SCMD_INVINCMUS = 109			; Play invincibility music
SCMD_GMOVERMUS = 110			; Play game over music
SCMD_SPECMUS = 111			; Play special stage music
SCMD_DAGRDNMUS = 112			; Play D.A. Garden music
SCMD_PROTOWARP = 113			; Play prototype warp sound
SCMD_INTROMUS = 114			; Play opening music
SCMD_ENDINGMUS = 115			; Play ending music
SCMD_STOPCDDA = 116			; Stop CDDA music
SCMD_SPECSTAGE = 117			; Load special stage
SCMD_FUTURESFX = 118			; Play "Future" voice clip
SCMD_PASTSFX = 119			; Play "Past" voice clip
SCMD_ALRIGHTSFX = 120			; Play "Alright" voice clip
SCMD_GIVEUPSFX = 121			; Play "I'm outta here" voice clip
SCMD_YESSFX = 122			; Play "Yes" voice clip
SCMD_YEAHSFX = 123			; Play "Yeah" voice clip
SCMD_GIGGLESFX = 124			; Play Amy giggle voice clip
SCMD_YELPSFX = 125			; Play Amy yelp voice clip
SCMD_STOMPSFX = 126			; Play mech stomp sound
SCMD_BUMPERSFX = 127			; Play bumper sound
SCMD_PASTMUS = 128			; Play Past music
SCMD_DAGARDEN = 129			; Load D.A. Garden
SCMD_FADEPCM = 130			; Fade out PCM
SCMD_STOPPCM = 131			; Stop PCM
SCMD_R11ADEMO = 132			; Load Palmtree Panic Act 1 Present demo
SCMD_VISMODE = 133			; Load Visual Mode menu
SCMD_INITSS2 = 134			; Reset special stage flags
SCMD_READSAVE = 135			; Read save data
SCMD_WRITESAVE = 136			; Write save data
SCMD_BURAMINIT = 137			; Load Backup RAM initialization
SCMD_INITSS = 138			; Reset special stage flags
SCMD_RDTEMPSAVE = 139			; Read temporary save data
SCMD_WRTEMPSAVE = 140			; Write temporary save data
SCMD_THANKYOU = 141			; Load "Thank You" screen
SCMD_BURAMMGR = 142			; Load Backup RAM manager
SCMD_RESETVOL = 143			; Reset CDDA music volume
SCMD_PAUSEPCM = 144			; Pause PCM
SCMD_UNPAUSEPCM = 145			; Unpause PCM
SCMD_BREAKSFX = 146			; Play glass break sound
SCMD_BADEND = 147			; Load bad ending FMV
SCMD_GOODEND = 148			; Load good ending FMV
SCMD_R1AMUST = 149			; Play Palmtree Panic Present music (sound test)
SCMD_R1CMUST = 150			; Play Palmtree Panic Good Future music (sound test)
SCMD_R1DMUST = 151			; Play Palmtree Panic Bad Future music (sound test)
SCMD_R3AMUST = 152			; Play Collision Chaos Present music (sound test)
SCMD_R3CMUST = 153			; Play Collision Chaos Good Future music (sound test)
SCMD_R3DMUST = 154			; Play Collision Chaos Bad Future music (sound test)
SCMD_R4AMUST = 155			; Play Tidal Tempest Present music (sound test)
SCMD_R4CMUST = 156			; Play Tidal Tempest Good Future music (sound test)
SCMD_R4DMUST = 157			; Play Tidal Tempest Bad Future music (sound test)
SCMD_R5AMUST = 158			; Play Quartz Quadrant Present music (sound test)
SCMD_R5CMUST = 159			; Play Quartz Quadrant Good Future music (sound test)
SCMD_R5DMUST = 160			; Play Quartz Quadrant Bad Future music (sound test)
SCMD_R6AMUST = 161			; Play Wacky Workbench Present music (sound test)
SCMD_R6CMUST = 162			; Play Wacky Workbench Good Future music (sound test)
SCMD_R6DMUST = 163			; Play Wacky Workbench Bad Future music (sound test)
SCMD_R7AMUST = 164			; Play Stardust Speedway Present music (sound test)
SCMD_R7CMUST = 165			; Play Stardust Speedway Good Future music (sound test)
SCMD_R7DMUST = 166			; Play Stardust Speedway Bad Future music (sound test)
SCMD_R8AMUST = 167			; Play Metallic Madness Present music (sound test)
SCMD_R8CMUST = 168			; Play Metallic Madness Good Future music (sound test)
SCMD_R8DMUST = 169			; Play Metallic Madness Bad Future music (sound test)
SCMD_BOSSMUST = 170			; Play boss music (sound test)
SCMD_FINALMUST = 171			; Play final boss music (sound test)
SCMD_TITLEMUST = 172			; Play title screen music (sound test)
SCMD_TMATKMUST = 173			; Play time attack music (sound test)
SCMD_RESULTMUST = 174			; Play results music (sound test)
SCMD_SHOESMUST = 175			; Play speed shoes music (sound test)
SCMD_INVINCMUST = 176			; Play invincibility music (sound test)
SCMD_GMOVERMUST = 177			; Play game over music (sound test)
SCMD_SPECMUST = 178			; Play special stage music (sound test)
SCMD_DAGRDNMUST = 179			; Play D.A. Garden music (sound test)
SCMD_PROTOWARPT = 180			; Play prototype warp sound (sound test)
SCMD_INTROMUST = 181			; Play opening music (sound test)
SCMD_ENDINGMUST = 182			; Play ending music (sound test)
SCMD_FUTURESFXT = 183			; Play "Future" voice clip (sound test)
SCMD_PASTSFXT = 184			; Play "Past" voice clip (sound test)
SCMD_ALRGHTSFXT = 185			; Play "Alright" voice clip (sound test)
SCMD_GIVEUPSFXT = 186			; Play "I'm outta here" voice clip (sound test)
SCMD_YESSFXT = 187			; Play "Yes" voice clip (sound test)
SCMD_YEAHSFXT = 188			; Play "Yeah" voice clip (sound test)
SCMD_GIGGLESFXT = 189			; Play Amy giggle voice clip (sound test)
SCMD_YELPSFXT = 190			; Play Amy yelp voice clip (sound test)
SCMD_STOMPSFXT = 191			; Play mech stomp sound (sound test)
SCMD_BUMPERSFXT = 192			; Play bumper sound (sound test)
SCMD_R1BMUST = 193			; Play Palmtree Panic Past music (sound test)
SCMD_R3BMUST = 194			; Play Collision Chaos Past music (sound test)
SCMD_R4BMUST = 195			; Play Tidal Tempest Past music (sound test)
SCMD_R5BMUST = 196			; Play Quartz Quadrant Past music (sound test)
SCMD_R6BMUST = 197			; Play Palmtree Panic Past music (sound test)
SCMD_R7BMUST = 198			; Play Palmtree Panic Past music (sound test)
SCMD_R8BMUST = 199			; Play Palmtree Panic Past music (sound test)
SCMD_FUNISINF = 200			; Load "Fun is infinite" screen
SCMD_SS8CREDS = 201			; Load special stage 8 credits
SCMD_MCSONIC = 202			; Load M.C. Sonic screen
SCMD_TAILS = 203			; Load Tails screen
SCMD_BATMAN = 204			; Load Batman Sonic screen
SCMD_CUTESONIC = 205			; Load cute Sonic screen
SCMD_STAFFTIMES = 206			; Load best staff times screen
SCMD_DUMMY1 = 207			; Load dummy file (unused)
SCMD_DUMMY2 = 208			; Load dummy file (unused)
SCMD_DUMMY3 = 209			; Load dummy file (unused)
SCMD_DUMMY4 = 210			; Load dummy file (unused)
SCMD_DUMMY5 = 211			; Load dummy file (unused)
SCMD_PENCILTEST = 212			; Load pencil test FMV
SCMD_PAUSECDA = 213			; Pause CDDA music
SCMD_UNPAUSECDA = 214			; Unpause CDDA music
SCMD_OPENING = 215			; Load opening FMV
SCMD_COMINSOON = 216			; Load "Comin' Soon" screen

; -------------------------------------------------------------------------

	ifdef SUBCPU

; -------------------------------------------------------------------------
; Addresses
; -------------------------------------------------------------------------

; System program
SPVariables	EQU	$7000			; Variables
SaveDataTemp	EQU	$7400			; Temporary save data buffer
SPIRQ2		EQU	$7700			; IRQ2 handler
LoadFile	EQU	$7800			; Load file
GetFileName	EQU	$7840			; Get file name
FileFunc	EQU	$7880			; File engine function handler
FileVars	EQU	$8C00			; File engine variables

; System program extension
SPX		EQU	$B800			; SPX start location
SPXFileTable	EQU	SPX			; SPX file table
SPXStart	EQU	SPX+$800		; SPX code start
Stack		EQU	$10000			; Stack base

; FMV
FMVPCMBUF	EQU	PRGRAM+$40000		; PCM data buffer
FMVGFXBUF	EQU	WORDRAM1M		; Graphics data buffer

; -------------------------------------------------------------------------
; Constants
; -------------------------------------------------------------------------

; File engine functions
	rsreset
FFUNC_INIT	rs.b	1			; Initialize
FFUNC_OPER	rs.b	1			; Perform operation
FFUNC_STATUS	rs.b	1			; Get status
FFUNC_GETFILES	rs.b	1			; Get files
FFUNC_LOADFILE	rs.b	1			; Load file
FFUNC_FINDFILE	rs.b	1			; Find file
FFUNC_LOADFMV	rs.b	1			; Load FMV
FFUNC_RESET	rs.b	1			; Reset
FFUNC_LOADFMVM	rs.b	1			; Load FMV (mute)

; File engine operation modes
	rsreset
FMODE_NONE	rs.b	1			; No function
FMODE_GETFILES	rs.b	1			; Get files
FMODE_LOADFILE	rs.b	1			; Load file
FMODE_LOADFMV	rs.b	1			; Load FMV
FMODE_LOADFMVM	rs.b	1			; Load FMV (mute)

; File engine statuses
FSTAT_OK	EQU	100			; OK
FSTAT_GETFAIL	EQU	-1			; File get failed
FSTAT_NOTFOUND	EQU	-2			; File not found
FSTAT_LOADFAIL	EQU	-3			; File load failed
FSTAT_READFAIL	EQU	-100			; Failed
FSTAT_FMVFAIL	EQU	-111			; FMV load failed

; FMV data types
FMVT_PCM	EQU	0			; PCM data type
FMVT_GFX	EQU	1			; Graphics data type

; FMV flags
FMVF_INIT	EQU	3			; Initialized flag
FMVF_PBUF	EQU	4			; PCM buffer ID
FMVF_READY	EQU	5			; Ready flag
FMVF_SECT	EQU	7			; Reading data section 1 flag

; File data
FILENAMESZ	EQU	12			; File name length

; -------------------------------------------------------------------------
; SP variables
; -------------------------------------------------------------------------

	rsset	SPVariables
curPCMDriver	rs.l	1			; Current PCM driver
ssFlagsCopy	rs.b	1			; Special stage flags copy
pcmDrvFlags	rs.b	1			; PCM driver flags
		rs.b	$400-__rs
SPVARSSZ	rs.b	1			; Size of structure

; -------------------------------------------------------------------------
; File engine variables structure
; -------------------------------------------------------------------------

	rsreset
feOperMark	rs.l	1			; Operation bookmark
feSector	rs.l	1			; Sector to read from
feSectorCnt	rs.l	1			; Number of sectors to read
feReturnAddr	rs.l	1			; Return address for CD read functions
feReadBuffer	rs.l	1			; Read buffer address
feReadTime	rs.b	0			; Time of read sector
feReadMin	rs.b	1			; Read sector minute
feReadSec	rs.b	1			; Read sector second
feReadFrame	rs.b	1			; Read sector frame
		rs.b	1
feDirSectors	rs.b	0			; Directory size in sectors
feFileSize	rs.l	1			; File size buffer
feOperMode	rs.w	1			; Operation mode
feStatus	rs.w	1			; Status code
feFileCount	rs.w	1			; File count
feWaitTime	rs.w	1			; Wait timer
feRetries	rs.w	1			; Retry counter
feSectorsRead	rs.w	1			; Number of sectors read
feCDC		rs.b	1			; CDC mode
feSectorFrame	rs.b	1			; Sector frame
feFileName	rs.b	FILENAMESZ		; File name buffer
		rs.b	$100-__rs
feFileList	rs.b	$2000			; File list
feDirReadBuf	rs.b	$900			; Directory read buffer
feFMVSectFrame	rs.w	1			; FMV sector frame
feFMVDataType	rs.b	1			; FMV read data type
feFMV		rs.b	1			; FMV flags
feFMVFailCount	rs.b	1			; FMV fail counter
FILEVARSSZ	rs.b	0			; Size of structure

; -------------------------------------------------------------------------
; File entry structure
; -------------------------------------------------------------------------

	rsreset
fileName	rs.b	FILENAMESZ		; File name
		rs.b	$17-__rs
fileFlags	rs.b	1			; File flags
fileSector	rs.l	1			; File sector
fileLength	rs.l	1			; File size
FILEENTRYSZ	rs.b	0			; Size of structure
	endif

; -------------------------------------------------------------------------
