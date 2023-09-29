result: db 0
arr: db [0,10]

def fill {
    mov di, offset arr
    mov cl, 1
    repeat:
        mov byte [di], cl
        inc di 
        inc cl
        cmp cl, 11
        jnz repeat
    ret
}

def summ{
    mov si, offset arr
    mov ax, 0
    mov cl, 0
    read:
        add al, byte [si]
        inc si 
        inc cl
        cmp cl, 10
        jnz read
 ret
}

start:
call fill
call summ