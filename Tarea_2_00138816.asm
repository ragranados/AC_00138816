org    100h

;carnet 00138816, 1 + 3 + 8 + 8 + 1 + 6 = 27, promedio 4.5

mov    ax, 0000h
add    ax, 1d
add    ax, 3d
add    ax, 8d
add    ax, 8d
add    ax, 1d
add    ax, 6d
mov    ax, 6d

;frase 4: "me recupero"

mov cl, "M"
mov [202h], cl

mov cl, "E"
mov [203h], cl

mov cl, " "
mov [204h], cl

mov cl, "R"
mov [205h], cl

mov cl, "E"
mov [206h], cl

mov cl, "C"
mov [207h], cl

mov cl, "U"
mov [208h], cl

mov cl, "P"
mov [209h], cl

mov cl, "E"
mov [20Ah], cl

mov cl, "R"
mov [20Bh], cl

mov cl, "O"
mov [20Ch], cl

        mov     ax, 0000h
        mov     al, 2d
        mov     bx, 210h
        mov     cx, 2d
mult:   mul     cx
        mov     [bx], ax
        cmp     ah, 00h
        ja      pos
        je      pre
pos:    add     bx, 2h
        jmp     sig
pre:    add     bx, 1h
sig:    cmp     bx, 21Fh
        jb      mult

int 20h