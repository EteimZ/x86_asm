Dump of assembler code for function main:
   0x0000555555555189 <+0>:	endbr64
   0x000055555555518d <+4>:	push   rbp
   0x000055555555518e <+5>:	mov    rbp,rsp
   0x0000555555555191 <+8>:	sub    rsp,0x10
   0x0000555555555195 <+12>:	mov    DWORD PTR [rbp-0x4],edi
   0x0000555555555198 <+15>:	mov    QWORD PTR [rbp-0x10],rsi
   0x000055555555519c <+19>:	cmp    DWORD PTR [rbp-0x4],0x2
   0x00005555555551a0 <+23>:	jne    0x555555555207 <main+126>
   0x00005555555551a2 <+25>:	mov    rax,QWORD PTR [rbp-0x10]
   0x00005555555551a6 <+29>:	add    rax,0x8
   0x00005555555551aa <+33>:	mov    rax,QWORD PTR [rax]
   0x00005555555551ad <+36>:	mov    rsi,rax
   0x00005555555551b0 <+39>:	lea    rax,[rip+0xe4d]        # 0x555555556004
   0x00005555555551b7 <+46>:	mov    rdi,rax
   0x00005555555551ba <+49>:	mov    eax,0x0
   0x00005555555551bf <+54>:	call   0x555555555080 <printf@plt>
   0x00005555555551c4 <+59>:	mov    rax,QWORD PTR [rbp-0x10]
   0x00005555555551c8 <+63>:	add    rax,0x8
   0x00005555555551cc <+67>:	mov    rax,QWORD PTR [rax]
   0x00005555555551cf <+70>:	lea    rdx,[rip+0xe45]        # 0x55555555601b
   0x00005555555551d6 <+77>:	mov    rsi,rdx
   0x00005555555551d9 <+80>:	mov    rdi,rax
   0x00005555555551dc <+83>:	call   0x555555555090 <strcmp@plt>
   0x00005555555551e1 <+88>:	test   eax,eax
   0x00005555555551e3 <+90>:	jne    0x5555555551f6 <main+109>
   0x00005555555551e5 <+92>:	lea    rax,[rip+0xe3c]        # 0x555555556028
   0x00005555555551ec <+99>:	mov    rdi,rax
   0x00005555555551ef <+102>:	call   0x555555555070 <puts@plt>
   0x00005555555551f4 <+107>:	jmp    0x555555555216 <main+141>
   0x00005555555551f6 <+109>:	lea    rax,[rip+0xe3c]        # 0x555555556039
   0x00005555555551fd <+116>:	mov    rdi,rax
   0x0000555555555200 <+119>:	call   0x555555555070 <puts@plt>
=> 0x0000555555555205 <+124>:	jmp    0x555555555216 <main+141>
   0x0000555555555207 <+126>:	lea    rax,[rip+0xe3a]        # 0x555555556048
   0x000055555555520e <+133>:	mov    rdi,rax
   0x0000555555555211 <+136>:	call   0x555555555070 <puts@plt>
   0x0000555555555216 <+141>:	mov    eax,0x0
   0x000055555555521b <+146>:	leave
   0x000055555555521c <+147>:	ret
