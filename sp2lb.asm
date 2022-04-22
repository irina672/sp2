global _start
section .data
        arr1 db 01011001b, 01010100b, 00011010b, 10000111b, 01001001b, 01000100b, 00011010b, 10010111b, 00110101b, 00110101b

section .text
_start:
        mov ecx, 10   ; регистр общего назначения 
        mov esi, arr1 ; индекс источника
        xor eax, eax  ; обнуление
        xor edi, edi 


loop1:
        lodsb                  ;загружает в eax байт из ячейки памяти указанной в индексе исто>
        mov edi, eax
        and eax, 01000100b     ;умножаем число на маску
        cmp eax, 01000100b     ;сравниваем получивщееся число с маской 
        je loop2               ;мереходим в метку , если у нас байты равны
        loop loop1             ;возвращаемся в цикл
        jmp end                ;переход к концу программы 

loop2:
        add ebx, edi           ;
        push ebx
        loop loop1             ;

end:
        mov eax, 1
        mov ebx, 0
        int 0x80
