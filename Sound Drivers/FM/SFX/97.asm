SonicCD_97_Header:
	smpsHeaderStartSong	06h
	smpsHeaderVoice		SonicCD_97_Voices
	smpsHeaderTempoSFX	01h
	smpsHeaderChanSFX	01h
	smpsHeaderSFXChannel	cFM2, SonicCD_97_FM2, 0Ch, 00h

SonicCD_97_FM2:
	smpsSetvoice	00h
	db	nRst, 01h, nBb2, 05h, smpsNoAttack, nB2, 26h
	smpsStop

SonicCD_97_Voices:
;	Voice 00h
;	30h
;	30h, 30h, 30h, 30h,	9Eh, 0A8h, 0ACh, 0DCh,	0Eh, 0Ah, 04h, 05h
;	08h, 08h, 08h, 08h,	0BFh, 0BFh, 0BFh, 0BFh,	04h, 2Ch, 14h, 80h
	smpsVcAlgorithm		00h
	smpsVcFeedback		06h
	smpsVcUnusedBits	00h
	smpsVcDetune		03h, 03h, 03h, 03h
	smpsVcCoarseFreq	00h, 00h, 00h, 00h
	smpsVcRateScale		03h, 02h, 02h, 02h
	smpsVcAttackRate	1Ch, 2Ch, 28h, 1Eh
	smpsVcAmpMod		00h, 00h, 00h, 00h
	smpsVcDecayRate1	05h, 04h, 0Ah, 0Eh
	smpsVcDecayLevel	0Bh, 0Bh, 0Bh, 0Bh
	smpsVcDecayRate2	08h, 08h, 08h, 08h
	smpsVcReleaseRate	0Fh, 0Fh, 0Fh, 0Fh
	smpsVcTotalLevel	80h, 14h, 2Ch, 04h
	