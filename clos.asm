;Command Line OS First Release
;v1.0 29/06/2015

title clos

data segment
    hello           db  "BENVENUTO IN COMMAND LINE OS", "$"
    boot            db  "AVVIO DEL SISTEMA OPERATIVO IN CORSO...", "$"
    succboot        db  "SISTEMA OPERATIVO AVVIATO CORRETTAMENTE", "$"
    copyright       db  "Copyright(c) 2015 Niccolo Ciavarella. Tutti i diritti riservati", "$"
    presskey        db  "Premere un tasto per continuare... ", "$"
    mainpage        db  "MAIN PAGE DI COMMAND LINE OS", "$"
    firstentry      db  "1 - Applicazioni", "$"
    secondentry     db  "2 - Giochi", "$"
    thirdentry      db  "3 - Strumenti", "$"
    fourthentry     db  "4 - Spegni il PC", "$"
    fifthentry      db  "5 - Riavvia il PC", "$"
    question        db  ">", "$" 
    answer          db  0
    applicazioni    db  "APPLICAZIONI", "$"
    giochi          db  "GIOCHI", "$"
    strumenti       db  "STRUMENTI", "$"
    noapps          db  "Nessuna Applicazione installata!", "$"
    nogames         db  "Nessun Gioco installato!", "$"
    noutilities     db  "Nessuno Strumento installato!", "$"               

data ends

code segment
    assume cs: code, ds: data
    
    start:          mov ax, data
                    mov ds, ax
            
    ;hello string
    inizio:         mov dx, offset hello
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
            
    ;boot string
                    mov dx, offset boot
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
            
    ;succboot string            
                    mov dx, offset succboot
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    
    ;copyright
                    mov dx, offset copyright
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
            
    ;presskey
                    mov dx, offset presskey
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov ah, 1
                    int 21h
            
    ;clearscreen
                    mov ah, 0h
                    mov al, 3h
                    int 10h
            
    ;menu
    menu:           mov dx, offset mainpage
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset firstentry
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset secondentry
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset thirdentry
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset fourthentry
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset fifthentry
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset question
                    mov ah, 9
                    int 21h
                    mov ah, 1
                    int 21h
                    mov answer, al
                    
    ;inputmenu      
                    mov ah, 0h
                    mov al, 3h
                    int 10h
                    mov al, answer
                    cmp al, 31h
                    jz applications
                    cmp al, 32h
                    jz games
                    cmp al, 33h
                    jz utility
                    cmp al, 34h
                    jz shutdown
                    cmp al, 35h
                    jz reboot
                    jmp menu
            
    ;applications
    applications:   mov ah, 0h
                    mov al, 3h
                    int 10h
                    mov dx, offset applicazioni
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset noapps
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset question
                    mov ah, 9
                    int 21h
                    mov ah, 1
                    int 21h
                    mov ah, 0h
                    mov al, 3h
                    int 10h
                    jmp menu 
    
    ;games
    games:          mov ah, 0h
                    mov al, 3h
                    int 10h
                    mov dx, offset giochi
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset nogames
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset question
                    mov ah, 9
                    int 21h
                    mov ah, 1
                    int 21h
                    mov ah, 0h
                    mov al, 3h
                    int 10h
                    jmp menu
            
    ;utility
    utility:        mov ah, 0h
                    mov al, 3h
                    int 10h
                    mov dx, offset strumenti
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset noutilities
                    mov ah, 9
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dl, 13
                    mov ah, 2
                    int 21h
                    mov dl, 10
                    mov ah, 2
                    int 21h
                    mov dx, offset question
                    mov ah, 9
                    int 21h
                    mov ah, 1
                    int 21h
                    mov ah, 0h
                    mov al, 3h
                    int 10h
                    jmp menu
            
    ;shutdown
    shutdown:       ;mov ax, 1000h
                    ;mov ax, ss
                    ;mov sp, f000h
                    ;mov ax, 5307h
                    ;mov bx, 0001h
                    ;mov cx, 0003h
                    ;int 15h
                    jmp fine
            
    ;reboot
    reboot:         ;db 0eah
                    ;dw 0000h
                    ;dw ffffh
                    mov ah, 0h
                    mov al, 3h
                    int 10h
                    jmp inizio
            
    fine:           mov ah, 0h
                    mov al, 3h
                    int 10h
                    mov ah, 4ch
                    int 21h
code ends
end start
