org 	100h

;A de Antonio

section .text
	call 	grafico
	xor 	si, si
	xor 	di, di
    mov 	si, 120d
	mov 	di, 30d
    mov     bx, 120d

	call 	vertical
    mov 	si, 195d
	mov 	di, 30d
    mov     bx, 120d

	call 	vertical
 	mov 	si, 135d
	mov 	di, 50d
    mov     bx, 70d

	call 	vertical
 	mov 	si, 180d
	mov 	di, 50d
    mov     bx, 70d

	call 	vertical
 	mov 	si, 135d
	mov 	di, 90d
    mov     bx, 120d

	call 	vertical
 	mov 	si, 180d
	mov 	di, 90d
    mov     bx, 120d

	call 	vertical
    mov 	si, 120d
	mov 	di, 30d
    mov     bx, 195d

	call 	horizontal
	mov 	si, 135d
	mov 	di, 50d
    mov     bx, 180d

	call 	horizontal
	mov 	si, 135d
	mov 	di, 70d
    mov     bx, 180d

	call 	horizontal
	mov 	si, 135d
	mov 	di, 90d
    mov     bx, 180d

	call 	horizontal
	mov 	si, 120d
	mov 	di, 120d
    mov     bx, 135d

	call 	horizontal
	mov 	si, 180d
	mov 	di, 120d
    mov     bx, 195d

	call 	horizontal
	call 	kb
	int 	20h

grafico:
    mov	    ah, 00h
	mov	    al, 13h
	int 	10h
	ret

pintar_pixel:	
    mov	    ah, 0Ch
	mov 	al, 0100b
	int 	10h
	ret

horizontal: 
lupi_h:	
    mov 	cx, 0d
	add 	cx, si
	mov	    dx, di
	call 	pintar_pixel
	inc 	si
	cmp 	si, bx
	jne 	lupi_h
	ret

vertical:
lupi_v:	
    mov 	cx, si
	mov	    dx, 0d
	add 	dx, di
	call 	pintar_pixel
	inc 	di
	cmp 	di, bx
	jne 	lupi_v
	ret

kb: 	
    mov	    ah, 00h
	int 	16h
	ret

section .data