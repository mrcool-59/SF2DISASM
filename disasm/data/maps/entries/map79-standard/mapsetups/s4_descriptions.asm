
ms_map79_AreaDescriptions:
                
                move.w  #$1044,d3       ; TODO: "A statue of beautiful Mitula.{W1}"
                lea     @Defs(pc), a0
                nop
                jmp     DisplayAreaDescription

    ; End of function ms_map1_AreaDescriptions

@Defs:     		msDesc 11, 3, 9, 0      ; "{NAME} investigated{N}the statue.{W2}{CLEAR}"
                                        ; "A statue of beautiful Mitula.{W1}"
                msDescFunction 44, 26, Map79_DescFunc0-@Defs
                msDescEnd
		
	;msDesc:
    ;dc.b \1 ; search x
    ;dc.b \2 ; search y
    ;dc.b \3 ; search text (0-area, 1-, 2-sign, 3-wash basin, 4-bookshelf, 5-well, 6-paper, 7-closet, 8-sign, 9-statue, 10-door)
    ;dc.b \4 ; description text offset
				
                rts
				

				
				

; =============== S U B R O U T I N E =======================================


Map79_DescFunc0:
                
                 
                ;chkFlg  841             ; Set after the Taya join scene has played inside the Mitula Shrine
                ;bne.s   return_5E756
                ;script  cs_5E772
                ;setFlg  841             ; Set after the Taya join scene has played inside the Mitula Shrine
;return_5E756:
                rts