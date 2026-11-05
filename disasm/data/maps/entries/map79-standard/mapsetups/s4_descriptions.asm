
ms_map79_AreaDescriptions:
                
                move.w  #$10DC,d3       ; "A book...{N}HOW TO KEEP YOUR{N}SCALES HEALTHY{W1}"
                lea     @Defs(pc), a0
                nop
                jmp     DisplayAreaDescription

@Defs:     		msDesc 40, 5, 4, 0      ; Bookshelf + "A book...{N}HOW TO KEEP YOUR{N}SCALES HEALTHY{W1}"
                msDesc 47, 10, 4, 1     ; Bookshelf + "A book...{N}THUNDER MAGIC{N}FOR DUMMIES{W1}"
				msDescFunction 42, 17, Map79_DescFunc0-@Defs
                msDescEnd

                rts

Map79_DescFunc0:
                
				chkFlg 31
				bne.s	@SunnyJoined
				
				txt  4318	; "I'm out, need to refill water{N} - {NAME;31}{W1}"
				bra.s	@Return
				
			@SunnyJoined:
                txt  4319	; "I'm out, fighting against devils{N} - {NAME;31}{W1}"
				
			@Return:
                rts