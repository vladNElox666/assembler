a: db [0, 5]
b: db [0, 5]

start:
    mov cl, 0
    mov di, offset a
    
fill:
    mov byte [di], cl
    inc cl
    inc di
    cmp cl, 5
    jl fill
    
mov si, offset a

to_stack:
    mov al, byte [si]
    push ax
    inc si
    dec cl
    cmp cl, 0
    jnz to_stack
    
mov di, offset b

from_stack:
    pop ax
    mov byte [di], al
    inc di
    cmp sp, 0
    jnz from_stack