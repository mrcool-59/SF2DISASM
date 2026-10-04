
; This table allows you to specify an alternative learn message for specific spells.
; For example, the message could be "{D1}{NAME} learned {SPELL}!" if characters learn spell-like abilities.

table_LearnMessageSpells:
		dc.b SPELL_DETOX, dc.w 172	; Example that uses the unused SF1-style learning spell message
		tableEnd.b
