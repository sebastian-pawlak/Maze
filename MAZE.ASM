; "Maze", Atari XL/XE Intro 16B
; (15 bytes of code + 6 bytes of header)
; code by tr1x / Agenda
; requirements: original Atari XL/XE 64KB PAL
; version: 1.0
; release date: 2022-02-13

color2	equ $02c6
random	equ $d20a
osprint	equ $f1a4


        org $80

loop	lda random
	and #$08
	adc #$0d
        jsr osprint
	stx color2
	bne loop