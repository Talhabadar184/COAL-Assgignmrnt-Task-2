.model small

.stack

.data
 
 msg db 'THIS IS COAL FALL 2023',0
 msg1 db 'The length of the given string is ',0
 
.code
 
 mov AX,@DATA
 mov DS,AX
 
 mov DI,offset msg
 
 
 
 Call Display
 
 mov DX,CX
 
.exit
  

 
 ;procedure for display
 Display proc
  
  ;push ES
  
  mov AX,0XB800
  mov ES,AX
 ; mov DI,0 
  mov SI,0 
  mov cx,0 
  
  
  L2:
  mov DX,[di]
  cmp Dl,0
  je ex
  
  mov ES:[SI],DX
  inc SI
  mov ES:[SI],00000010B
  inc SI
  inc DI ;increment
  inc CX
  jmp L2 
  ex:
  mov si,3300 
  inc di
  L3:
  mov DX,[DI]
  cmp Dl,0
  je exit2
  
  mov ES:[SI],DX
  inc SI
  mov ES:[SI],00000010B
  inc SI
  inc DI ;increment
  jmp L3
  exit2:
  inc di 
  mov ax,0
  mov ax,cx
  mov cx,2
  
 l1:      
          

mov bx,10h 
mov dx, 0
div bx

add dx,30h

push dx
 loop l1    
 mov cx,2
 l4:
    pop dx
  mov ES:[SI],dx
  inc SI
  mov ES:[SI],00000010B
  inc si
         loop l4

  
         
  
  ;pop ES
    
  ret
Display endp