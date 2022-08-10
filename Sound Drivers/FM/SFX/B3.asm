SonicCD_B3_Header:
	smpsHeaderStartSong	06h
	smpsHeaderVoice		SonicCD_B3_Voices
	smpsHeaderTempoSFX	01h
	smpsHeaderChanSFX	01h
	smpsHeaderSFXChannel	cFM6, SonicCD_B3_FM6, 0FFh, 00h

SonicCD_B3_FM6:
	smpsSetvoice	00h
	db	nB5, 06h
	smpsModSet	01h, 01h, 0F4h, 40h

SonicCD_B3_Loop1:
	db	nEb5, 02h, smpsNoAttack
	smpsFMAlterVol	01h
	smpsLoop	00h, 11h, SonicCD_B3_Loop1
	smpsStop

SonicCD_B3_Voices:
;	Voice 00h
;	34h
;	0Ch, 73h, 10h, 0Ch,	0AFh, 0FFh, 0ACh, 0D5h,	06h, 02h, 00h, 01h
;	02h, 04h, 0Ah, 08h,	0BFh, 0BFh, 0BFh, 0BFh,	00h, 80h, 08h, 80h
	smpsVcAlgorithm		04h
	smpsVcFeedback		06h
	smpsVcUnusedBits	00h
	smpsVcDetune		00h, 01h, 07h, 00h
	smpsVcCoarseFreq	0Ch, 00h, 03h, 0Ch
	smpsVcRateScale		03h, 02h, 03h, 02h
	smpsVcAttackRate	15h, 2Ch, 3Fh, 2Fh
	smpsVcAmpMod		00h, 00h, 00h, 00h
	smpsVcDecayRate1	01h, 00h, 02h, 06h
	smpsVcDecayLevel	0Bh, 0Bh, 0Bh, 0Bh
	smpsVcDecayRate2	08h, 0Ah, 04h, 02h
	smpsVcReleaseRate	0Fh, 0Fh, 0Fh, 0Fh
	smpsVcTotalLevel	80h, 08h, 80h, 00h
	