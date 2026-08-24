
   cpu z80
   listing off
   phase    0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h+6000h
    
pt_SFX:         
    dw Sfx_1	; #65 - SFX_MENU_SWITCH
    dw Sfx_2	; #66 - SFX_MENU_SELECTION
    dw Sfx_3	; #67 - SFX_VALIDATION
    dw Sfx_4	; #68 - SFX_REFUSAL
    dw Sfx_5	; #69 - SFX_DIALOG_BLEEP_1
    dw Sfx_6	; #70 - SFX_DIALOG_BLEEP_2
    dw Sfx_7	; #71 - SFX_DIALOG_BLEEP_3
    dw Sfx_8	; #72 - SFX_DIALOG_BLEEP_4
    dw Sfx_9	; #73 - SFX_DIALOG_BLEEP_5
    dw Sfx_10	; #74 - SFX_DIALOG_BLEEP_6
    dw Sfx_11	; #75 - SFX_DIALOG_BLEEP_7
    dw Sfx_12	; #76 - SFX_DIALOG_BLEEP_8
    dw Sfx_13	; #77 - SFX_SPELL_CAST
    dw Sfx_14	; #78 - SFX_DOOR_OPEN_HIGH_PITCH
    dw Sfx_15	; #79 - SFX_WALKING
    dw Sfx_16	; #80 - SFX_UNUSED_FROM_LANDSTALKER
    dw Sfx_17	; #81 - SFX_LIGHTNING_1
    dw Sfx_18	; #82 - SFX_LIGHTNING_2
    dw Sfx_19	; #83 - SFX_HIT_1
    dw Sfx_20	; #84 - SFX_HIT_2
    dw Sfx_21	; #85 - SFX_BLAST
    dw Sfx_22	; #86 - SFX_SWORDS_HIT
    dw Sfx_23	; #87 - SFX_JUMP
    dw Sfx_24	; #88 - SFX_FALLING
    dw Sfx_25	; #89 - SFX_WARP
    dw Sfx_26	; #90 - SFX_CHIRRUP_SANDALS
    dw Sfx_27	; #91 - SFX_MONSTER_DIALOG_BLEEP
    dw Sfx_28	; #92 - SFX_DOOR_OPEN
    dw Sfx_29	; #93 - SFX_BIG_DOOR_RUMBLE
    dw Sfx_30	; #94 - SFX_MONSTER_SCREAM
    dw Sfx_31	; #95 - SFX_BUUBOBI
    dw Sfx_32	; #96 - SFX_SECRET_PATH_ROCK
    dw Sfx_33	; #97 - SFX_PSH
    dw Sfx_34	; #98 - SFX_PSHHH
    dw Sfx_35	; #99 - SFX_BLOAB
    dw Sfx_36	; #100 - SFX_BLO
    dw Sfx_37	; #101 - SFX_LANDSTALKER_ITEM
    dw Sfx_38	; #102 - SFX_LEVEL_UP
    dw Sfx_39	; #103 - SFX_PRISM_LASER_LOADING
    dw Sfx_40	; #104 - SFX_SPAWN
    dw Sfx_41	; #105 - SFX_SFCD_STATUES
    dw Sfx_42	; #106 - SFX_DESOUL
    dw Sfx_43	; #107 - SFX_SITD_HOWL
    dw Sfx_44	; #108 - SFX_PRISM_LASER_FIRING
    dw Sfx_45	; #109 - SFX_BOOST
    dw Sfx_46	; #110 - SFX_DESOUL_HOVERING
    dw Sfx_47	; #111 - SFX_PRISM_LASER_CUTSCENE_FIRING
    dw Sfx_48	; #112 - SFX_TAROS_DIALOG_BLEEP
    dw Sfx_49	; #113 - SFX_HEALING
    dw Sfx_50	; #114 - SFX_BLAST_SPELL
    dw Sfx_51	; #115 - SFX_WING_FLAP
    dw Sfx_52	; #116 - SFX_BATTLEFIELD_DEATH
    dw Sfx_53	; #117 - SFX_DEMON_BREATH
    dw Sfx_54	; #118 - SFX_INTRO_LIGHTNING
    dw Sfx_55	; #119 - SFX_BOLT_SPELL
    dw Sfx_56	; #120 - SFX_TINKLING
Sfx_1:
		db 2	; SFX type
		dw Sfx_1_Channel_6
		dw Sfx_1_Channel_6
		dw Sfx_1_Channel_6

Sfx_1_Channel_6:
		channel_end
Sfx_2:
		db 2	; SFX type
		dw Sfx_2_Channel_6
		dw Sfx_2_Channel_6
		dw Sfx_2_Channel_6

Sfx_2_Channel_6:
		channel_end
Sfx_3:
		db 2	; SFX type
		dw Sfx_3_Channel_6
		dw Sfx_3_Channel_6
		dw Sfx_3_Channel_6

Sfx_3_Channel_6:
		channel_end
Sfx_4:
		db 2	; SFX type
		dw Sfx_4_Channel_6
		dw Sfx_4_Channel_6
		dw Sfx_4_Channel_6

Sfx_4_Channel_6:
		channel_end
Sfx_5:
		db 2	; SFX type
		dw Sfx_5_Channel_6
		dw Sfx_5_Channel_6
		dw Sfx_5_Channel_6

Sfx_5_Channel_6:
		channel_end
Sfx_6:
		db 2	; SFX type
		dw Sfx_6_Channel_6
		dw Sfx_6_Channel_6
		dw Sfx_6_Channel_6

Sfx_6_Channel_6:
		channel_end
Sfx_7:
		db 2	; SFX type
		dw Sfx_7_Channel_6
		dw Sfx_7_Channel_6
		dw Sfx_7_Channel_6

Sfx_7_Channel_6:
		channel_end
Sfx_8:
		db 2	; SFX type
		dw Sfx_8_Channel_6
		dw Sfx_8_Channel_6
		dw Sfx_8_Channel_6

Sfx_8_Channel_6:
		channel_end
Sfx_9:
		db 2	; SFX type
		dw Sfx_9_Channel_6
		dw Sfx_9_Channel_6
		dw Sfx_9_Channel_6

Sfx_9_Channel_6:
		channel_end
Sfx_10:
		db 2	; SFX type
		dw Sfx_10_Channel_6
		dw Sfx_10_Channel_6
		dw Sfx_10_Channel_6

Sfx_10_Channel_6:
		channel_end
Sfx_11:
		db 2	; SFX type
		dw Sfx_11_Channel_6
		dw Sfx_11_Channel_6
		dw Sfx_11_Channel_6

Sfx_11_Channel_6:
		channel_end
Sfx_12:
		db 2	; SFX type
		dw Sfx_12_Channel_6
		dw Sfx_12_Channel_6
		dw Sfx_12_Channel_6

Sfx_12_Channel_6:
		channel_end
Sfx_13:
		db 2	; SFX type
		dw Sfx_13_Channel_6
		dw Sfx_13_Channel_6
		dw Sfx_13_Channel_6

Sfx_13_Channel_6:
		channel_end
Sfx_14:
		db 2	; SFX type
		dw Sfx_14_Channel_6
		dw Sfx_14_Channel_6
		dw Sfx_14_Channel_6

Sfx_14_Channel_6:
		channel_end
Sfx_15:
		db 2	; SFX type
		dw Sfx_15_Channel_6
		dw Sfx_15_Channel_6
		dw Sfx_15_Channel_6

Sfx_15_Channel_6:
		channel_end
Sfx_16:
		db 2	; SFX type
		dw Sfx_16_Channel_6
		dw Sfx_16_Channel_6
		dw Sfx_16_Channel_6

Sfx_16_Channel_6:
		channel_end
Sfx_17:
		db 2	; SFX type
		dw Sfx_17_Channel_6
		dw Sfx_17_Channel_6
		dw Sfx_17_Channel_6

Sfx_17_Channel_6:
		channel_end
Sfx_18:
		db 2	; SFX type
		dw Sfx_18_Channel_6
		dw Sfx_18_Channel_6
		dw Sfx_18_Channel_6

Sfx_18_Channel_6:
		channel_end
Sfx_19:
		db 2	; SFX type
		dw Sfx_19_Channel_6
		dw Sfx_19_Channel_6
		dw Sfx_19_Channel_6

Sfx_19_Channel_6:
		channel_end
Sfx_20:
		db 2	; SFX type
		dw Sfx_20_Channel_6
		dw Sfx_20_Channel_6
		dw Sfx_20_Channel_6

Sfx_20_Channel_6:
		channel_end
Sfx_21:
		db 2	; SFX type
		dw Sfx_21_Channel_6
		dw Sfx_21_Channel_6
		dw Sfx_21_Channel_6

Sfx_21_Channel_6:
		channel_end
Sfx_22:
		db 2	; SFX type
		dw Sfx_22_Channel_6
		dw Sfx_22_Channel_6
		dw Sfx_22_Channel_6

Sfx_22_Channel_6:
		channel_end
Sfx_23:
		db 2	; SFX type
		dw Sfx_23_Channel_6
		dw Sfx_23_Channel_6
		dw Sfx_23_Channel_6

Sfx_23_Channel_6:
		channel_end
Sfx_24:
		db 2	; SFX type
		dw Sfx_24_Channel_6
		dw Sfx_24_Channel_6
		dw Sfx_24_Channel_6

Sfx_24_Channel_6:
		channel_end
Sfx_25:
		db 2	; SFX type
		dw Sfx_25_Channel_6
		dw Sfx_25_Channel_6
		dw Sfx_25_Channel_6

Sfx_25_Channel_6:
		channel_end
Sfx_26:
		db 2	; SFX type
		dw Sfx_26_Channel_6
		dw Sfx_26_Channel_6
		dw Sfx_26_Channel_6

Sfx_26_Channel_6:
		channel_end
Sfx_27:
		db 2	; SFX type
		dw Sfx_27_Channel_6
		dw Sfx_27_Channel_6
		dw Sfx_27_Channel_6

Sfx_27_Channel_6:
		channel_end
Sfx_28:
		db 2	; SFX type
		dw Sfx_28_Channel_6
		dw Sfx_28_Channel_6
		dw Sfx_28_Channel_6

Sfx_28_Channel_6:
		channel_end
Sfx_29:
		db 2	; SFX type
		dw Sfx_29_Channel_6
		dw Sfx_29_Channel_6
		dw Sfx_29_Channel_6

Sfx_29_Channel_6:
		channel_end
Sfx_30:
		db 2	; SFX type
		dw Sfx_30_Channel_6
		dw Sfx_30_Channel_6
		dw Sfx_30_Channel_6

Sfx_30_Channel_6:
		channel_end
Sfx_31:
		db 2	; SFX type
		dw Sfx_31_Channel_6
		dw Sfx_31_Channel_6
		dw Sfx_31_Channel_6

Sfx_31_Channel_6:
		channel_end
Sfx_32:
		db 2	; SFX type
		dw Sfx_32_Channel_6
		dw Sfx_32_Channel_6
		dw Sfx_32_Channel_6

Sfx_32_Channel_6:
		channel_end
Sfx_33:
		db 2	; SFX type
		dw Sfx_33_Channel_6
		dw Sfx_33_Channel_6
		dw Sfx_33_Channel_6

Sfx_33_Channel_6:
		channel_end
Sfx_34:
		db 2	; SFX type
		dw Sfx_34_Channel_6
		dw Sfx_34_Channel_6
		dw Sfx_34_Channel_6

Sfx_34_Channel_6:
		channel_end
Sfx_35:
		db 2	; SFX type
		dw Sfx_35_Channel_6
		dw Sfx_35_Channel_6
		dw Sfx_35_Channel_6

Sfx_35_Channel_6:
		channel_end
Sfx_36:
		db 2	; SFX type
		dw Sfx_36_Channel_6
		dw Sfx_36_Channel_6
		dw Sfx_36_Channel_6

Sfx_36_Channel_6:
		channel_end
Sfx_37:
		db 2	; SFX type
		dw Sfx_37_Channel_6
		dw Sfx_37_Channel_6
		dw Sfx_37_Channel_6

Sfx_37_Channel_6:
		channel_end
Sfx_38:
		db 2	; SFX type
		dw Sfx_38_Channel_6
		dw Sfx_38_Channel_6
		dw Sfx_38_Channel_6

Sfx_38_Channel_6:
		channel_end
Sfx_39:
		db 2	; SFX type
		dw Sfx_39_Channel_6
		dw Sfx_39_Channel_6
		dw Sfx_39_Channel_6

Sfx_39_Channel_6:
		channel_end
Sfx_40:
		db 2	; SFX type
		dw Sfx_40_Channel_6
		dw Sfx_40_Channel_6
		dw Sfx_40_Channel_6

Sfx_40_Channel_6:
		channel_end
Sfx_41:
		db 2	; SFX type
		dw Sfx_41_Channel_6
		dw Sfx_41_Channel_6
		dw Sfx_41_Channel_6

Sfx_41_Channel_6:
		channel_end
Sfx_42:
		db 2	; SFX type
		dw Sfx_42_Channel_6
		dw Sfx_42_Channel_6
		dw Sfx_42_Channel_6

Sfx_42_Channel_6:
		channel_end
Sfx_43:
		db 2	; SFX type
		dw Sfx_43_Channel_6
		dw Sfx_43_Channel_6
		dw Sfx_43_Channel_6

Sfx_43_Channel_6:
		channel_end
Sfx_44:
		db 2	; SFX type
		dw Sfx_44_Channel_6
		dw Sfx_44_Channel_6
		dw Sfx_44_Channel_6

Sfx_44_Channel_6:
		channel_end
Sfx_45:
		db 2	; SFX type
		dw Sfx_45_Channel_6
		dw Sfx_45_Channel_6
		dw Sfx_45_Channel_6

Sfx_45_Channel_6:
		channel_end
Sfx_46:
		db 2	; SFX type
		dw Sfx_46_Channel_6
		dw Sfx_46_Channel_6
		dw Sfx_46_Channel_6

Sfx_46_Channel_6:
		channel_end
Sfx_47:
		db 2	; SFX type
		dw Sfx_47_Channel_6
		dw Sfx_47_Channel_6
		dw Sfx_47_Channel_6

Sfx_47_Channel_6:
		channel_end
Sfx_48:
		db 2	; SFX type
		dw Sfx_48_Channel_6
		dw Sfx_48_Channel_6
		dw Sfx_48_Channel_6

Sfx_48_Channel_6:
		channel_end
Sfx_49:
		db 2	; SFX type
		dw Sfx_49_Channel_6
		dw Sfx_49_Channel_6
		dw Sfx_49_Channel_6

Sfx_49_Channel_6:
		channel_end
Sfx_50:
		db 2	; SFX type
		dw Sfx_50_Channel_6
		dw Sfx_50_Channel_6
		dw Sfx_50_Channel_6

Sfx_50_Channel_6:
		channel_end
Sfx_51:
		db 2	; SFX type
		dw Sfx_51_Channel_6
		dw Sfx_51_Channel_6
		dw Sfx_51_Channel_6

Sfx_51_Channel_6:
		channel_end
Sfx_52:
		db 2	; SFX type
		dw Sfx_52_Channel_6
		dw Sfx_52_Channel_6
		dw Sfx_52_Channel_6

Sfx_52_Channel_6:
		channel_end
Sfx_53:
		db 2	; SFX type
		dw Sfx_53_Channel_6
		dw Sfx_53_Channel_6
		dw Sfx_53_Channel_6

Sfx_53_Channel_6:
		channel_end
Sfx_54:
		db 2	; SFX type
		dw Sfx_54_Channel_6
		dw Sfx_54_Channel_6
		dw Sfx_54_Channel_6

Sfx_54_Channel_6:
		channel_end
Sfx_55:
		db 2	; SFX type
		dw Sfx_55_Channel_6
		dw Sfx_55_Channel_6
		dw Sfx_55_Channel_6

Sfx_55_Channel_6:
		channel_end
Sfx_56:
		db 2	; SFX type
		dw Sfx_56_Channel_6
		dw Sfx_56_Channel_6
		dw Sfx_56_Channel_6

Sfx_56_Channel_6:
		channel_end
