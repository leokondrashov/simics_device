
build/digits.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000015a8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000006c  08001668  08001668  00011668  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080016d4  080016d4  000116d4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080016dc  080016dc  000116dc  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000048c  20000000  080016e0  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000003c  2000048c  08001b6c  0002048c  2**2  ALLOC
  7 ._user_heap_stack 00000600  200004c8  08001b6c  000204c8  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  0002048c  2**0  CONTENTS, READONLY
  9 .comment          000000ca  00000000  00000000  000204b4  2**0  CONTENTS, READONLY
 10 .debug_info       000042b2  00000000  00000000  0002057e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_abbrev     00001090  00000000  00000000  00024830  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_loc        00001138  00000000  00000000  000258c0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_aranges    00000370  00000000  00000000  000269f8  2**3  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_ranges     00000248  00000000  00000000  00026d68  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_line       000018bb  00000000  00000000  00026fb0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_str        00001433  00000000  00000000  0002886b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_frame      00000908  00000000  00000000  00029ca0  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	4804      	ldr	r0, [pc, #16]	; (80000d4 <deregister_tm_clones+0x14>)
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	b510      	push	{r4, lr}
 80000c6:	4283      	cmp	r3, r0
 80000c8:	d003      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000ca:	4b04      	ldr	r3, [pc, #16]	; (80000dc <deregister_tm_clones+0x1c>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d000      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000d0:	4798      	blx	r3
 80000d2:	bd10      	pop	{r4, pc}
 80000d4:	2000048c 	.word	0x2000048c
 80000d8:	2000048c 	.word	0x2000048c
 80000dc:	00000000 	.word	0x00000000

080000e0 <register_tm_clones>:
 80000e0:	4806      	ldr	r0, [pc, #24]	; (80000fc <register_tm_clones+0x1c>)
 80000e2:	4907      	ldr	r1, [pc, #28]	; (8000100 <register_tm_clones+0x20>)
 80000e4:	1a09      	subs	r1, r1, r0
 80000e6:	1089      	asrs	r1, r1, #2
 80000e8:	0fcb      	lsrs	r3, r1, #31
 80000ea:	1859      	adds	r1, r3, r1
 80000ec:	b510      	push	{r4, lr}
 80000ee:	1049      	asrs	r1, r1, #1
 80000f0:	d003      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f2:	4b04      	ldr	r3, [pc, #16]	; (8000104 <register_tm_clones+0x24>)
 80000f4:	2b00      	cmp	r3, #0
 80000f6:	d000      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f8:	4798      	blx	r3
 80000fa:	bd10      	pop	{r4, pc}
 80000fc:	2000048c 	.word	0x2000048c
 8000100:	2000048c 	.word	0x2000048c
 8000104:	00000000 	.word	0x00000000

08000108 <__do_global_dtors_aux>:
 8000108:	b510      	push	{r4, lr}
 800010a:	4c07      	ldr	r4, [pc, #28]	; (8000128 <__do_global_dtors_aux+0x20>)
 800010c:	7823      	ldrb	r3, [r4, #0]
 800010e:	2b00      	cmp	r3, #0
 8000110:	d109      	bne.n	8000126 <__do_global_dtors_aux+0x1e>
 8000112:	f7ff ffd5 	bl	80000c0 <deregister_tm_clones>
 8000116:	4b05      	ldr	r3, [pc, #20]	; (800012c <__do_global_dtors_aux+0x24>)
 8000118:	2b00      	cmp	r3, #0
 800011a:	d002      	beq.n	8000122 <__do_global_dtors_aux+0x1a>
 800011c:	4804      	ldr	r0, [pc, #16]	; (8000130 <__do_global_dtors_aux+0x28>)
 800011e:	e000      	b.n	8000122 <__do_global_dtors_aux+0x1a>
 8000120:	bf00      	nop
 8000122:	2301      	movs	r3, #1
 8000124:	7023      	strb	r3, [r4, #0]
 8000126:	bd10      	pop	{r4, pc}
 8000128:	2000048c 	.word	0x2000048c
 800012c:	00000000 	.word	0x00000000
 8000130:	08001650 	.word	0x08001650

08000134 <frame_dummy>:
 8000134:	4b05      	ldr	r3, [pc, #20]	; (800014c <frame_dummy+0x18>)
 8000136:	b510      	push	{r4, lr}
 8000138:	2b00      	cmp	r3, #0
 800013a:	d003      	beq.n	8000144 <frame_dummy+0x10>
 800013c:	4904      	ldr	r1, [pc, #16]	; (8000150 <frame_dummy+0x1c>)
 800013e:	4805      	ldr	r0, [pc, #20]	; (8000154 <frame_dummy+0x20>)
 8000140:	e000      	b.n	8000144 <frame_dummy+0x10>
 8000142:	bf00      	nop
 8000144:	f7ff ffcc 	bl	80000e0 <register_tm_clones>
 8000148:	bd10      	pop	{r4, pc}
 800014a:	46c0      	nop			; (mov r8, r8)
 800014c:	00000000 	.word	0x00000000
 8000150:	20000490 	.word	0x20000490
 8000154:	08001650 	.word	0x08001650

08000158 <__udivsi3>:
 8000158:	2200      	movs	r2, #0
 800015a:	0843      	lsrs	r3, r0, #1
 800015c:	428b      	cmp	r3, r1
 800015e:	d374      	bcc.n	800024a <__udivsi3+0xf2>
 8000160:	0903      	lsrs	r3, r0, #4
 8000162:	428b      	cmp	r3, r1
 8000164:	d35f      	bcc.n	8000226 <__udivsi3+0xce>
 8000166:	0a03      	lsrs	r3, r0, #8
 8000168:	428b      	cmp	r3, r1
 800016a:	d344      	bcc.n	80001f6 <__udivsi3+0x9e>
 800016c:	0b03      	lsrs	r3, r0, #12
 800016e:	428b      	cmp	r3, r1
 8000170:	d328      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000172:	0c03      	lsrs	r3, r0, #16
 8000174:	428b      	cmp	r3, r1
 8000176:	d30d      	bcc.n	8000194 <__udivsi3+0x3c>
 8000178:	22ff      	movs	r2, #255	; 0xff
 800017a:	0209      	lsls	r1, r1, #8
 800017c:	ba12      	rev	r2, r2
 800017e:	0c03      	lsrs	r3, r0, #16
 8000180:	428b      	cmp	r3, r1
 8000182:	d302      	bcc.n	800018a <__udivsi3+0x32>
 8000184:	1212      	asrs	r2, r2, #8
 8000186:	0209      	lsls	r1, r1, #8
 8000188:	d065      	beq.n	8000256 <__udivsi3+0xfe>
 800018a:	0b03      	lsrs	r3, r0, #12
 800018c:	428b      	cmp	r3, r1
 800018e:	d319      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000190:	e000      	b.n	8000194 <__udivsi3+0x3c>
 8000192:	0a09      	lsrs	r1, r1, #8
 8000194:	0bc3      	lsrs	r3, r0, #15
 8000196:	428b      	cmp	r3, r1
 8000198:	d301      	bcc.n	800019e <__udivsi3+0x46>
 800019a:	03cb      	lsls	r3, r1, #15
 800019c:	1ac0      	subs	r0, r0, r3
 800019e:	4152      	adcs	r2, r2
 80001a0:	0b83      	lsrs	r3, r0, #14
 80001a2:	428b      	cmp	r3, r1
 80001a4:	d301      	bcc.n	80001aa <__udivsi3+0x52>
 80001a6:	038b      	lsls	r3, r1, #14
 80001a8:	1ac0      	subs	r0, r0, r3
 80001aa:	4152      	adcs	r2, r2
 80001ac:	0b43      	lsrs	r3, r0, #13
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__udivsi3+0x5e>
 80001b2:	034b      	lsls	r3, r1, #13
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	0b03      	lsrs	r3, r0, #12
 80001ba:	428b      	cmp	r3, r1
 80001bc:	d301      	bcc.n	80001c2 <__udivsi3+0x6a>
 80001be:	030b      	lsls	r3, r1, #12
 80001c0:	1ac0      	subs	r0, r0, r3
 80001c2:	4152      	adcs	r2, r2
 80001c4:	0ac3      	lsrs	r3, r0, #11
 80001c6:	428b      	cmp	r3, r1
 80001c8:	d301      	bcc.n	80001ce <__udivsi3+0x76>
 80001ca:	02cb      	lsls	r3, r1, #11
 80001cc:	1ac0      	subs	r0, r0, r3
 80001ce:	4152      	adcs	r2, r2
 80001d0:	0a83      	lsrs	r3, r0, #10
 80001d2:	428b      	cmp	r3, r1
 80001d4:	d301      	bcc.n	80001da <__udivsi3+0x82>
 80001d6:	028b      	lsls	r3, r1, #10
 80001d8:	1ac0      	subs	r0, r0, r3
 80001da:	4152      	adcs	r2, r2
 80001dc:	0a43      	lsrs	r3, r0, #9
 80001de:	428b      	cmp	r3, r1
 80001e0:	d301      	bcc.n	80001e6 <__udivsi3+0x8e>
 80001e2:	024b      	lsls	r3, r1, #9
 80001e4:	1ac0      	subs	r0, r0, r3
 80001e6:	4152      	adcs	r2, r2
 80001e8:	0a03      	lsrs	r3, r0, #8
 80001ea:	428b      	cmp	r3, r1
 80001ec:	d301      	bcc.n	80001f2 <__udivsi3+0x9a>
 80001ee:	020b      	lsls	r3, r1, #8
 80001f0:	1ac0      	subs	r0, r0, r3
 80001f2:	4152      	adcs	r2, r2
 80001f4:	d2cd      	bcs.n	8000192 <__udivsi3+0x3a>
 80001f6:	09c3      	lsrs	r3, r0, #7
 80001f8:	428b      	cmp	r3, r1
 80001fa:	d301      	bcc.n	8000200 <__udivsi3+0xa8>
 80001fc:	01cb      	lsls	r3, r1, #7
 80001fe:	1ac0      	subs	r0, r0, r3
 8000200:	4152      	adcs	r2, r2
 8000202:	0983      	lsrs	r3, r0, #6
 8000204:	428b      	cmp	r3, r1
 8000206:	d301      	bcc.n	800020c <__udivsi3+0xb4>
 8000208:	018b      	lsls	r3, r1, #6
 800020a:	1ac0      	subs	r0, r0, r3
 800020c:	4152      	adcs	r2, r2
 800020e:	0943      	lsrs	r3, r0, #5
 8000210:	428b      	cmp	r3, r1
 8000212:	d301      	bcc.n	8000218 <__udivsi3+0xc0>
 8000214:	014b      	lsls	r3, r1, #5
 8000216:	1ac0      	subs	r0, r0, r3
 8000218:	4152      	adcs	r2, r2
 800021a:	0903      	lsrs	r3, r0, #4
 800021c:	428b      	cmp	r3, r1
 800021e:	d301      	bcc.n	8000224 <__udivsi3+0xcc>
 8000220:	010b      	lsls	r3, r1, #4
 8000222:	1ac0      	subs	r0, r0, r3
 8000224:	4152      	adcs	r2, r2
 8000226:	08c3      	lsrs	r3, r0, #3
 8000228:	428b      	cmp	r3, r1
 800022a:	d301      	bcc.n	8000230 <__udivsi3+0xd8>
 800022c:	00cb      	lsls	r3, r1, #3
 800022e:	1ac0      	subs	r0, r0, r3
 8000230:	4152      	adcs	r2, r2
 8000232:	0883      	lsrs	r3, r0, #2
 8000234:	428b      	cmp	r3, r1
 8000236:	d301      	bcc.n	800023c <__udivsi3+0xe4>
 8000238:	008b      	lsls	r3, r1, #2
 800023a:	1ac0      	subs	r0, r0, r3
 800023c:	4152      	adcs	r2, r2
 800023e:	0843      	lsrs	r3, r0, #1
 8000240:	428b      	cmp	r3, r1
 8000242:	d301      	bcc.n	8000248 <__udivsi3+0xf0>
 8000244:	004b      	lsls	r3, r1, #1
 8000246:	1ac0      	subs	r0, r0, r3
 8000248:	4152      	adcs	r2, r2
 800024a:	1a41      	subs	r1, r0, r1
 800024c:	d200      	bcs.n	8000250 <__udivsi3+0xf8>
 800024e:	4601      	mov	r1, r0
 8000250:	4152      	adcs	r2, r2
 8000252:	4610      	mov	r0, r2
 8000254:	4770      	bx	lr
 8000256:	e7ff      	b.n	8000258 <__udivsi3+0x100>
 8000258:	b501      	push	{r0, lr}
 800025a:	2000      	movs	r0, #0
 800025c:	f000 f8f0 	bl	8000440 <__aeabi_idiv0>
 8000260:	bd02      	pop	{r1, pc}
 8000262:	46c0      	nop			; (mov r8, r8)

08000264 <__aeabi_uidivmod>:
 8000264:	2900      	cmp	r1, #0
 8000266:	d0f7      	beq.n	8000258 <__udivsi3+0x100>
 8000268:	e776      	b.n	8000158 <__udivsi3>
 800026a:	4770      	bx	lr

0800026c <__divsi3>:
 800026c:	4603      	mov	r3, r0
 800026e:	430b      	orrs	r3, r1
 8000270:	d47f      	bmi.n	8000372 <__divsi3+0x106>
 8000272:	2200      	movs	r2, #0
 8000274:	0843      	lsrs	r3, r0, #1
 8000276:	428b      	cmp	r3, r1
 8000278:	d374      	bcc.n	8000364 <__divsi3+0xf8>
 800027a:	0903      	lsrs	r3, r0, #4
 800027c:	428b      	cmp	r3, r1
 800027e:	d35f      	bcc.n	8000340 <__divsi3+0xd4>
 8000280:	0a03      	lsrs	r3, r0, #8
 8000282:	428b      	cmp	r3, r1
 8000284:	d344      	bcc.n	8000310 <__divsi3+0xa4>
 8000286:	0b03      	lsrs	r3, r0, #12
 8000288:	428b      	cmp	r3, r1
 800028a:	d328      	bcc.n	80002de <__divsi3+0x72>
 800028c:	0c03      	lsrs	r3, r0, #16
 800028e:	428b      	cmp	r3, r1
 8000290:	d30d      	bcc.n	80002ae <__divsi3+0x42>
 8000292:	22ff      	movs	r2, #255	; 0xff
 8000294:	0209      	lsls	r1, r1, #8
 8000296:	ba12      	rev	r2, r2
 8000298:	0c03      	lsrs	r3, r0, #16
 800029a:	428b      	cmp	r3, r1
 800029c:	d302      	bcc.n	80002a4 <__divsi3+0x38>
 800029e:	1212      	asrs	r2, r2, #8
 80002a0:	0209      	lsls	r1, r1, #8
 80002a2:	d065      	beq.n	8000370 <__divsi3+0x104>
 80002a4:	0b03      	lsrs	r3, r0, #12
 80002a6:	428b      	cmp	r3, r1
 80002a8:	d319      	bcc.n	80002de <__divsi3+0x72>
 80002aa:	e000      	b.n	80002ae <__divsi3+0x42>
 80002ac:	0a09      	lsrs	r1, r1, #8
 80002ae:	0bc3      	lsrs	r3, r0, #15
 80002b0:	428b      	cmp	r3, r1
 80002b2:	d301      	bcc.n	80002b8 <__divsi3+0x4c>
 80002b4:	03cb      	lsls	r3, r1, #15
 80002b6:	1ac0      	subs	r0, r0, r3
 80002b8:	4152      	adcs	r2, r2
 80002ba:	0b83      	lsrs	r3, r0, #14
 80002bc:	428b      	cmp	r3, r1
 80002be:	d301      	bcc.n	80002c4 <__divsi3+0x58>
 80002c0:	038b      	lsls	r3, r1, #14
 80002c2:	1ac0      	subs	r0, r0, r3
 80002c4:	4152      	adcs	r2, r2
 80002c6:	0b43      	lsrs	r3, r0, #13
 80002c8:	428b      	cmp	r3, r1
 80002ca:	d301      	bcc.n	80002d0 <__divsi3+0x64>
 80002cc:	034b      	lsls	r3, r1, #13
 80002ce:	1ac0      	subs	r0, r0, r3
 80002d0:	4152      	adcs	r2, r2
 80002d2:	0b03      	lsrs	r3, r0, #12
 80002d4:	428b      	cmp	r3, r1
 80002d6:	d301      	bcc.n	80002dc <__divsi3+0x70>
 80002d8:	030b      	lsls	r3, r1, #12
 80002da:	1ac0      	subs	r0, r0, r3
 80002dc:	4152      	adcs	r2, r2
 80002de:	0ac3      	lsrs	r3, r0, #11
 80002e0:	428b      	cmp	r3, r1
 80002e2:	d301      	bcc.n	80002e8 <__divsi3+0x7c>
 80002e4:	02cb      	lsls	r3, r1, #11
 80002e6:	1ac0      	subs	r0, r0, r3
 80002e8:	4152      	adcs	r2, r2
 80002ea:	0a83      	lsrs	r3, r0, #10
 80002ec:	428b      	cmp	r3, r1
 80002ee:	d301      	bcc.n	80002f4 <__divsi3+0x88>
 80002f0:	028b      	lsls	r3, r1, #10
 80002f2:	1ac0      	subs	r0, r0, r3
 80002f4:	4152      	adcs	r2, r2
 80002f6:	0a43      	lsrs	r3, r0, #9
 80002f8:	428b      	cmp	r3, r1
 80002fa:	d301      	bcc.n	8000300 <__divsi3+0x94>
 80002fc:	024b      	lsls	r3, r1, #9
 80002fe:	1ac0      	subs	r0, r0, r3
 8000300:	4152      	adcs	r2, r2
 8000302:	0a03      	lsrs	r3, r0, #8
 8000304:	428b      	cmp	r3, r1
 8000306:	d301      	bcc.n	800030c <__divsi3+0xa0>
 8000308:	020b      	lsls	r3, r1, #8
 800030a:	1ac0      	subs	r0, r0, r3
 800030c:	4152      	adcs	r2, r2
 800030e:	d2cd      	bcs.n	80002ac <__divsi3+0x40>
 8000310:	09c3      	lsrs	r3, r0, #7
 8000312:	428b      	cmp	r3, r1
 8000314:	d301      	bcc.n	800031a <__divsi3+0xae>
 8000316:	01cb      	lsls	r3, r1, #7
 8000318:	1ac0      	subs	r0, r0, r3
 800031a:	4152      	adcs	r2, r2
 800031c:	0983      	lsrs	r3, r0, #6
 800031e:	428b      	cmp	r3, r1
 8000320:	d301      	bcc.n	8000326 <__divsi3+0xba>
 8000322:	018b      	lsls	r3, r1, #6
 8000324:	1ac0      	subs	r0, r0, r3
 8000326:	4152      	adcs	r2, r2
 8000328:	0943      	lsrs	r3, r0, #5
 800032a:	428b      	cmp	r3, r1
 800032c:	d301      	bcc.n	8000332 <__divsi3+0xc6>
 800032e:	014b      	lsls	r3, r1, #5
 8000330:	1ac0      	subs	r0, r0, r3
 8000332:	4152      	adcs	r2, r2
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d301      	bcc.n	800033e <__divsi3+0xd2>
 800033a:	010b      	lsls	r3, r1, #4
 800033c:	1ac0      	subs	r0, r0, r3
 800033e:	4152      	adcs	r2, r2
 8000340:	08c3      	lsrs	r3, r0, #3
 8000342:	428b      	cmp	r3, r1
 8000344:	d301      	bcc.n	800034a <__divsi3+0xde>
 8000346:	00cb      	lsls	r3, r1, #3
 8000348:	1ac0      	subs	r0, r0, r3
 800034a:	4152      	adcs	r2, r2
 800034c:	0883      	lsrs	r3, r0, #2
 800034e:	428b      	cmp	r3, r1
 8000350:	d301      	bcc.n	8000356 <__divsi3+0xea>
 8000352:	008b      	lsls	r3, r1, #2
 8000354:	1ac0      	subs	r0, r0, r3
 8000356:	4152      	adcs	r2, r2
 8000358:	0843      	lsrs	r3, r0, #1
 800035a:	428b      	cmp	r3, r1
 800035c:	d301      	bcc.n	8000362 <__divsi3+0xf6>
 800035e:	004b      	lsls	r3, r1, #1
 8000360:	1ac0      	subs	r0, r0, r3
 8000362:	4152      	adcs	r2, r2
 8000364:	1a41      	subs	r1, r0, r1
 8000366:	d200      	bcs.n	800036a <__divsi3+0xfe>
 8000368:	4601      	mov	r1, r0
 800036a:	4152      	adcs	r2, r2
 800036c:	4610      	mov	r0, r2
 800036e:	4770      	bx	lr
 8000370:	e05d      	b.n	800042e <__divsi3+0x1c2>
 8000372:	0fca      	lsrs	r2, r1, #31
 8000374:	d000      	beq.n	8000378 <__divsi3+0x10c>
 8000376:	4249      	negs	r1, r1
 8000378:	1003      	asrs	r3, r0, #32
 800037a:	d300      	bcc.n	800037e <__divsi3+0x112>
 800037c:	4240      	negs	r0, r0
 800037e:	4053      	eors	r3, r2
 8000380:	2200      	movs	r2, #0
 8000382:	469c      	mov	ip, r3
 8000384:	0903      	lsrs	r3, r0, #4
 8000386:	428b      	cmp	r3, r1
 8000388:	d32d      	bcc.n	80003e6 <__divsi3+0x17a>
 800038a:	0a03      	lsrs	r3, r0, #8
 800038c:	428b      	cmp	r3, r1
 800038e:	d312      	bcc.n	80003b6 <__divsi3+0x14a>
 8000390:	22fc      	movs	r2, #252	; 0xfc
 8000392:	0189      	lsls	r1, r1, #6
 8000394:	ba12      	rev	r2, r2
 8000396:	0a03      	lsrs	r3, r0, #8
 8000398:	428b      	cmp	r3, r1
 800039a:	d30c      	bcc.n	80003b6 <__divsi3+0x14a>
 800039c:	0189      	lsls	r1, r1, #6
 800039e:	1192      	asrs	r2, r2, #6
 80003a0:	428b      	cmp	r3, r1
 80003a2:	d308      	bcc.n	80003b6 <__divsi3+0x14a>
 80003a4:	0189      	lsls	r1, r1, #6
 80003a6:	1192      	asrs	r2, r2, #6
 80003a8:	428b      	cmp	r3, r1
 80003aa:	d304      	bcc.n	80003b6 <__divsi3+0x14a>
 80003ac:	0189      	lsls	r1, r1, #6
 80003ae:	d03a      	beq.n	8000426 <__divsi3+0x1ba>
 80003b0:	1192      	asrs	r2, r2, #6
 80003b2:	e000      	b.n	80003b6 <__divsi3+0x14a>
 80003b4:	0989      	lsrs	r1, r1, #6
 80003b6:	09c3      	lsrs	r3, r0, #7
 80003b8:	428b      	cmp	r3, r1
 80003ba:	d301      	bcc.n	80003c0 <__divsi3+0x154>
 80003bc:	01cb      	lsls	r3, r1, #7
 80003be:	1ac0      	subs	r0, r0, r3
 80003c0:	4152      	adcs	r2, r2
 80003c2:	0983      	lsrs	r3, r0, #6
 80003c4:	428b      	cmp	r3, r1
 80003c6:	d301      	bcc.n	80003cc <__divsi3+0x160>
 80003c8:	018b      	lsls	r3, r1, #6
 80003ca:	1ac0      	subs	r0, r0, r3
 80003cc:	4152      	adcs	r2, r2
 80003ce:	0943      	lsrs	r3, r0, #5
 80003d0:	428b      	cmp	r3, r1
 80003d2:	d301      	bcc.n	80003d8 <__divsi3+0x16c>
 80003d4:	014b      	lsls	r3, r1, #5
 80003d6:	1ac0      	subs	r0, r0, r3
 80003d8:	4152      	adcs	r2, r2
 80003da:	0903      	lsrs	r3, r0, #4
 80003dc:	428b      	cmp	r3, r1
 80003de:	d301      	bcc.n	80003e4 <__divsi3+0x178>
 80003e0:	010b      	lsls	r3, r1, #4
 80003e2:	1ac0      	subs	r0, r0, r3
 80003e4:	4152      	adcs	r2, r2
 80003e6:	08c3      	lsrs	r3, r0, #3
 80003e8:	428b      	cmp	r3, r1
 80003ea:	d301      	bcc.n	80003f0 <__divsi3+0x184>
 80003ec:	00cb      	lsls	r3, r1, #3
 80003ee:	1ac0      	subs	r0, r0, r3
 80003f0:	4152      	adcs	r2, r2
 80003f2:	0883      	lsrs	r3, r0, #2
 80003f4:	428b      	cmp	r3, r1
 80003f6:	d301      	bcc.n	80003fc <__divsi3+0x190>
 80003f8:	008b      	lsls	r3, r1, #2
 80003fa:	1ac0      	subs	r0, r0, r3
 80003fc:	4152      	adcs	r2, r2
 80003fe:	d2d9      	bcs.n	80003b4 <__divsi3+0x148>
 8000400:	0843      	lsrs	r3, r0, #1
 8000402:	428b      	cmp	r3, r1
 8000404:	d301      	bcc.n	800040a <__divsi3+0x19e>
 8000406:	004b      	lsls	r3, r1, #1
 8000408:	1ac0      	subs	r0, r0, r3
 800040a:	4152      	adcs	r2, r2
 800040c:	1a41      	subs	r1, r0, r1
 800040e:	d200      	bcs.n	8000412 <__divsi3+0x1a6>
 8000410:	4601      	mov	r1, r0
 8000412:	4663      	mov	r3, ip
 8000414:	4152      	adcs	r2, r2
 8000416:	105b      	asrs	r3, r3, #1
 8000418:	4610      	mov	r0, r2
 800041a:	d301      	bcc.n	8000420 <__divsi3+0x1b4>
 800041c:	4240      	negs	r0, r0
 800041e:	2b00      	cmp	r3, #0
 8000420:	d500      	bpl.n	8000424 <__divsi3+0x1b8>
 8000422:	4249      	negs	r1, r1
 8000424:	4770      	bx	lr
 8000426:	4663      	mov	r3, ip
 8000428:	105b      	asrs	r3, r3, #1
 800042a:	d300      	bcc.n	800042e <__divsi3+0x1c2>
 800042c:	4240      	negs	r0, r0
 800042e:	b501      	push	{r0, lr}
 8000430:	2000      	movs	r0, #0
 8000432:	f000 f805 	bl	8000440 <__aeabi_idiv0>
 8000436:	bd02      	pop	{r1, pc}

08000438 <__aeabi_idivmod>:
 8000438:	2900      	cmp	r1, #0
 800043a:	d0f8      	beq.n	800042e <__divsi3+0x1c2>
 800043c:	e716      	b.n	800026c <__divsi3>
 800043e:	4770      	bx	lr

08000440 <__aeabi_idiv0>:
 8000440:	4770      	bx	lr
 8000442:	46c0      	nop			; (mov r8, r8)

08000444 <atexit>:
 8000444:	b510      	push	{r4, lr}
 8000446:	0001      	movs	r1, r0
 8000448:	2300      	movs	r3, #0
 800044a:	2200      	movs	r2, #0
 800044c:	2000      	movs	r0, #0
 800044e:	f000 f837 	bl	80004c0 <__register_exitproc>
 8000452:	bd10      	pop	{r4, pc}

08000454 <__libc_fini_array>:
 8000454:	b570      	push	{r4, r5, r6, lr}
 8000456:	4d07      	ldr	r5, [pc, #28]	; (8000474 <__libc_fini_array+0x20>)
 8000458:	4c07      	ldr	r4, [pc, #28]	; (8000478 <__libc_fini_array+0x24>)
 800045a:	1b64      	subs	r4, r4, r5
 800045c:	10a4      	asrs	r4, r4, #2
 800045e:	d005      	beq.n	800046c <__libc_fini_array+0x18>
 8000460:	3c01      	subs	r4, #1
 8000462:	00a3      	lsls	r3, r4, #2
 8000464:	58eb      	ldr	r3, [r5, r3]
 8000466:	4798      	blx	r3
 8000468:	2c00      	cmp	r4, #0
 800046a:	d1f9      	bne.n	8000460 <__libc_fini_array+0xc>
 800046c:	f001 f8f6 	bl	800165c <_fini>
 8000470:	bd70      	pop	{r4, r5, r6, pc}
 8000472:	46c0      	nop			; (mov r8, r8)
 8000474:	080016dc 	.word	0x080016dc
 8000478:	080016e0 	.word	0x080016e0

0800047c <__libc_init_array>:
 800047c:	b570      	push	{r4, r5, r6, lr}
 800047e:	4d0c      	ldr	r5, [pc, #48]	; (80004b0 <__libc_init_array+0x34>)
 8000480:	4e0c      	ldr	r6, [pc, #48]	; (80004b4 <__libc_init_array+0x38>)
 8000482:	1b76      	subs	r6, r6, r5
 8000484:	10b6      	asrs	r6, r6, #2
 8000486:	d005      	beq.n	8000494 <__libc_init_array+0x18>
 8000488:	2400      	movs	r4, #0
 800048a:	cd08      	ldmia	r5!, {r3}
 800048c:	3401      	adds	r4, #1
 800048e:	4798      	blx	r3
 8000490:	42a6      	cmp	r6, r4
 8000492:	d1fa      	bne.n	800048a <__libc_init_array+0xe>
 8000494:	f001 f8dc 	bl	8001650 <_init>
 8000498:	4d07      	ldr	r5, [pc, #28]	; (80004b8 <__libc_init_array+0x3c>)
 800049a:	4e08      	ldr	r6, [pc, #32]	; (80004bc <__libc_init_array+0x40>)
 800049c:	1b76      	subs	r6, r6, r5
 800049e:	10b6      	asrs	r6, r6, #2
 80004a0:	d005      	beq.n	80004ae <__libc_init_array+0x32>
 80004a2:	2400      	movs	r4, #0
 80004a4:	cd08      	ldmia	r5!, {r3}
 80004a6:	3401      	adds	r4, #1
 80004a8:	4798      	blx	r3
 80004aa:	42a6      	cmp	r6, r4
 80004ac:	d1fa      	bne.n	80004a4 <__libc_init_array+0x28>
 80004ae:	bd70      	pop	{r4, r5, r6, pc}
 80004b0:	080016d4 	.word	0x080016d4
 80004b4:	080016d4 	.word	0x080016d4
 80004b8:	080016d4 	.word	0x080016d4
 80004bc:	080016dc 	.word	0x080016dc

080004c0 <__register_exitproc>:
 80004c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80004c2:	46c6      	mov	lr, r8
 80004c4:	b500      	push	{lr}
 80004c6:	4c1f      	ldr	r4, [pc, #124]	; (8000544 <__register_exitproc+0x84>)
 80004c8:	b082      	sub	sp, #8
 80004ca:	6824      	ldr	r4, [r4, #0]
 80004cc:	9401      	str	r4, [sp, #4]
 80004ce:	24a4      	movs	r4, #164	; 0xa4
 80004d0:	9d01      	ldr	r5, [sp, #4]
 80004d2:	0064      	lsls	r4, r4, #1
 80004d4:	592d      	ldr	r5, [r5, r4]
 80004d6:	2d00      	cmp	r5, #0
 80004d8:	d02b      	beq.n	8000532 <__register_exitproc+0x72>
 80004da:	686c      	ldr	r4, [r5, #4]
 80004dc:	2c1f      	cmp	r4, #31
 80004de:	dc2e      	bgt.n	800053e <__register_exitproc+0x7e>
 80004e0:	2800      	cmp	r0, #0
 80004e2:	d109      	bne.n	80004f8 <__register_exitproc+0x38>
 80004e4:	2000      	movs	r0, #0
 80004e6:	1c63      	adds	r3, r4, #1
 80004e8:	3402      	adds	r4, #2
 80004ea:	00a4      	lsls	r4, r4, #2
 80004ec:	606b      	str	r3, [r5, #4]
 80004ee:	5161      	str	r1, [r4, r5]
 80004f0:	b002      	add	sp, #8
 80004f2:	bc04      	pop	{r2}
 80004f4:	4690      	mov	r8, r2
 80004f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80004f8:	2788      	movs	r7, #136	; 0x88
 80004fa:	00a6      	lsls	r6, r4, #2
 80004fc:	19ae      	adds	r6, r5, r6
 80004fe:	51f2      	str	r2, [r6, r7]
 8000500:	3701      	adds	r7, #1
 8000502:	37ff      	adds	r7, #255	; 0xff
 8000504:	46bc      	mov	ip, r7
 8000506:	2201      	movs	r2, #1
 8000508:	44ac      	add	ip, r5
 800050a:	4667      	mov	r7, ip
 800050c:	40a2      	lsls	r2, r4
 800050e:	683f      	ldr	r7, [r7, #0]
 8000510:	4690      	mov	r8, r2
 8000512:	4317      	orrs	r7, r2
 8000514:	4662      	mov	r2, ip
 8000516:	6017      	str	r7, [r2, #0]
 8000518:	2784      	movs	r7, #132	; 0x84
 800051a:	007f      	lsls	r7, r7, #1
 800051c:	51f3      	str	r3, [r6, r7]
 800051e:	2802      	cmp	r0, #2
 8000520:	d1e0      	bne.n	80004e4 <__register_exitproc+0x24>
 8000522:	002b      	movs	r3, r5
 8000524:	4640      	mov	r0, r8
 8000526:	338d      	adds	r3, #141	; 0x8d
 8000528:	33ff      	adds	r3, #255	; 0xff
 800052a:	681a      	ldr	r2, [r3, #0]
 800052c:	4310      	orrs	r0, r2
 800052e:	6018      	str	r0, [r3, #0]
 8000530:	e7d8      	b.n	80004e4 <__register_exitproc+0x24>
 8000532:	9d01      	ldr	r5, [sp, #4]
 8000534:	9e01      	ldr	r6, [sp, #4]
 8000536:	354d      	adds	r5, #77	; 0x4d
 8000538:	35ff      	adds	r5, #255	; 0xff
 800053a:	5135      	str	r5, [r6, r4]
 800053c:	e7cd      	b.n	80004da <__register_exitproc+0x1a>
 800053e:	2001      	movs	r0, #1
 8000540:	4240      	negs	r0, r0
 8000542:	e7d5      	b.n	80004f0 <__register_exitproc+0x30>
 8000544:	08001674 	.word	0x08001674

08000548 <Reset_Handler>:
 8000548:	480d      	ldr	r0, [pc, #52]	; (8000580 <LoopForever+0x2>)
 800054a:	4685      	mov	sp, r0
 800054c:	480d      	ldr	r0, [pc, #52]	; (8000584 <LoopForever+0x6>)
 800054e:	490e      	ldr	r1, [pc, #56]	; (8000588 <LoopForever+0xa>)
 8000550:	4a0e      	ldr	r2, [pc, #56]	; (800058c <LoopForever+0xe>)
 8000552:	2300      	movs	r3, #0
 8000554:	e002      	b.n	800055c <LoopCopyDataInit>

08000556 <CopyDataInit>:
 8000556:	58d4      	ldr	r4, [r2, r3]
 8000558:	50c4      	str	r4, [r0, r3]
 800055a:	3304      	adds	r3, #4

0800055c <LoopCopyDataInit>:
 800055c:	18c4      	adds	r4, r0, r3
 800055e:	428c      	cmp	r4, r1
 8000560:	d3f9      	bcc.n	8000556 <CopyDataInit>
 8000562:	4a0b      	ldr	r2, [pc, #44]	; (8000590 <LoopForever+0x12>)
 8000564:	4c0b      	ldr	r4, [pc, #44]	; (8000594 <LoopForever+0x16>)
 8000566:	2300      	movs	r3, #0
 8000568:	e001      	b.n	800056e <LoopFillZerobss>

0800056a <FillZerobss>:
 800056a:	6013      	str	r3, [r2, #0]
 800056c:	3204      	adds	r2, #4

0800056e <LoopFillZerobss>:
 800056e:	42a2      	cmp	r2, r4
 8000570:	d3fb      	bcc.n	800056a <FillZerobss>
 8000572:	f000 fd01 	bl	8000f78 <SystemInit>
 8000576:	f7ff ff81 	bl	800047c <__libc_init_array>
 800057a:	f000 fcd5 	bl	8000f28 <main>

0800057e <LoopForever>:
 800057e:	e7fe      	b.n	800057e <LoopForever>
 8000580:	20002000 	.word	0x20002000
 8000584:	20000000 	.word	0x20000000
 8000588:	2000048c 	.word	0x2000048c
 800058c:	080016e0 	.word	0x080016e0
 8000590:	2000048c 	.word	0x2000048c
 8000594:	200004c8 	.word	0x200004c8

08000598 <ADC1_COMP_IRQHandler>:
 8000598:	e7fe      	b.n	8000598 <ADC1_COMP_IRQHandler>
	...

0800059c <NVIC_SetPriority>:
 800059c:	b590      	push	{r4, r7, lr}
 800059e:	b083      	sub	sp, #12
 80005a0:	af00      	add	r7, sp, #0
 80005a2:	0002      	movs	r2, r0
 80005a4:	6039      	str	r1, [r7, #0]
 80005a6:	1dfb      	adds	r3, r7, #7
 80005a8:	701a      	strb	r2, [r3, #0]
 80005aa:	1dfb      	adds	r3, r7, #7
 80005ac:	781b      	ldrb	r3, [r3, #0]
 80005ae:	2b7f      	cmp	r3, #127	; 0x7f
 80005b0:	d932      	bls.n	8000618 <NVIC_SetPriority+0x7c>
 80005b2:	4a2f      	ldr	r2, [pc, #188]	; (8000670 <NVIC_SetPriority+0xd4>)
 80005b4:	1dfb      	adds	r3, r7, #7
 80005b6:	781b      	ldrb	r3, [r3, #0]
 80005b8:	0019      	movs	r1, r3
 80005ba:	230f      	movs	r3, #15
 80005bc:	400b      	ands	r3, r1
 80005be:	3b08      	subs	r3, #8
 80005c0:	089b      	lsrs	r3, r3, #2
 80005c2:	3306      	adds	r3, #6
 80005c4:	009b      	lsls	r3, r3, #2
 80005c6:	18d3      	adds	r3, r2, r3
 80005c8:	3304      	adds	r3, #4
 80005ca:	681b      	ldr	r3, [r3, #0]
 80005cc:	1dfa      	adds	r2, r7, #7
 80005ce:	7812      	ldrb	r2, [r2, #0]
 80005d0:	0011      	movs	r1, r2
 80005d2:	2203      	movs	r2, #3
 80005d4:	400a      	ands	r2, r1
 80005d6:	00d2      	lsls	r2, r2, #3
 80005d8:	21ff      	movs	r1, #255	; 0xff
 80005da:	4091      	lsls	r1, r2
 80005dc:	000a      	movs	r2, r1
 80005de:	43d2      	mvns	r2, r2
 80005e0:	401a      	ands	r2, r3
 80005e2:	0011      	movs	r1, r2
 80005e4:	683b      	ldr	r3, [r7, #0]
 80005e6:	019b      	lsls	r3, r3, #6
 80005e8:	22ff      	movs	r2, #255	; 0xff
 80005ea:	401a      	ands	r2, r3
 80005ec:	1dfb      	adds	r3, r7, #7
 80005ee:	781b      	ldrb	r3, [r3, #0]
 80005f0:	0018      	movs	r0, r3
 80005f2:	2303      	movs	r3, #3
 80005f4:	4003      	ands	r3, r0
 80005f6:	00db      	lsls	r3, r3, #3
 80005f8:	409a      	lsls	r2, r3
 80005fa:	481d      	ldr	r0, [pc, #116]	; (8000670 <NVIC_SetPriority+0xd4>)
 80005fc:	1dfb      	adds	r3, r7, #7
 80005fe:	781b      	ldrb	r3, [r3, #0]
 8000600:	001c      	movs	r4, r3
 8000602:	230f      	movs	r3, #15
 8000604:	4023      	ands	r3, r4
 8000606:	3b08      	subs	r3, #8
 8000608:	089b      	lsrs	r3, r3, #2
 800060a:	430a      	orrs	r2, r1
 800060c:	3306      	adds	r3, #6
 800060e:	009b      	lsls	r3, r3, #2
 8000610:	18c3      	adds	r3, r0, r3
 8000612:	3304      	adds	r3, #4
 8000614:	601a      	str	r2, [r3, #0]
 8000616:	e027      	b.n	8000668 <NVIC_SetPriority+0xcc>
 8000618:	4a16      	ldr	r2, [pc, #88]	; (8000674 <NVIC_SetPriority+0xd8>)
 800061a:	1dfb      	adds	r3, r7, #7
 800061c:	781b      	ldrb	r3, [r3, #0]
 800061e:	b25b      	sxtb	r3, r3
 8000620:	089b      	lsrs	r3, r3, #2
 8000622:	33c0      	adds	r3, #192	; 0xc0
 8000624:	009b      	lsls	r3, r3, #2
 8000626:	589b      	ldr	r3, [r3, r2]
 8000628:	1dfa      	adds	r2, r7, #7
 800062a:	7812      	ldrb	r2, [r2, #0]
 800062c:	0011      	movs	r1, r2
 800062e:	2203      	movs	r2, #3
 8000630:	400a      	ands	r2, r1
 8000632:	00d2      	lsls	r2, r2, #3
 8000634:	21ff      	movs	r1, #255	; 0xff
 8000636:	4091      	lsls	r1, r2
 8000638:	000a      	movs	r2, r1
 800063a:	43d2      	mvns	r2, r2
 800063c:	401a      	ands	r2, r3
 800063e:	0011      	movs	r1, r2
 8000640:	683b      	ldr	r3, [r7, #0]
 8000642:	019b      	lsls	r3, r3, #6
 8000644:	22ff      	movs	r2, #255	; 0xff
 8000646:	401a      	ands	r2, r3
 8000648:	1dfb      	adds	r3, r7, #7
 800064a:	781b      	ldrb	r3, [r3, #0]
 800064c:	0018      	movs	r0, r3
 800064e:	2303      	movs	r3, #3
 8000650:	4003      	ands	r3, r0
 8000652:	00db      	lsls	r3, r3, #3
 8000654:	409a      	lsls	r2, r3
 8000656:	4807      	ldr	r0, [pc, #28]	; (8000674 <NVIC_SetPriority+0xd8>)
 8000658:	1dfb      	adds	r3, r7, #7
 800065a:	781b      	ldrb	r3, [r3, #0]
 800065c:	b25b      	sxtb	r3, r3
 800065e:	089b      	lsrs	r3, r3, #2
 8000660:	430a      	orrs	r2, r1
 8000662:	33c0      	adds	r3, #192	; 0xc0
 8000664:	009b      	lsls	r3, r3, #2
 8000666:	501a      	str	r2, [r3, r0]
 8000668:	46c0      	nop			; (mov r8, r8)
 800066a:	46bd      	mov	sp, r7
 800066c:	b003      	add	sp, #12
 800066e:	bd90      	pop	{r4, r7, pc}
 8000670:	e000ed00 	.word	0xe000ed00
 8000674:	e000e100 	.word	0xe000e100

08000678 <LL_RCC_HSI_Enable>:
 8000678:	b580      	push	{r7, lr}
 800067a:	af00      	add	r7, sp, #0
 800067c:	4b04      	ldr	r3, [pc, #16]	; (8000690 <LL_RCC_HSI_Enable+0x18>)
 800067e:	681a      	ldr	r2, [r3, #0]
 8000680:	4b03      	ldr	r3, [pc, #12]	; (8000690 <LL_RCC_HSI_Enable+0x18>)
 8000682:	2101      	movs	r1, #1
 8000684:	430a      	orrs	r2, r1
 8000686:	601a      	str	r2, [r3, #0]
 8000688:	46c0      	nop			; (mov r8, r8)
 800068a:	46bd      	mov	sp, r7
 800068c:	bd80      	pop	{r7, pc}
 800068e:	46c0      	nop			; (mov r8, r8)
 8000690:	40021000 	.word	0x40021000

08000694 <LL_RCC_HSI_IsReady>:
 8000694:	b580      	push	{r7, lr}
 8000696:	af00      	add	r7, sp, #0
 8000698:	4b05      	ldr	r3, [pc, #20]	; (80006b0 <LL_RCC_HSI_IsReady+0x1c>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	2202      	movs	r2, #2
 800069e:	4013      	ands	r3, r2
 80006a0:	3b02      	subs	r3, #2
 80006a2:	425a      	negs	r2, r3
 80006a4:	4153      	adcs	r3, r2
 80006a6:	b2db      	uxtb	r3, r3
 80006a8:	0018      	movs	r0, r3
 80006aa:	46bd      	mov	sp, r7
 80006ac:	bd80      	pop	{r7, pc}
 80006ae:	46c0      	nop			; (mov r8, r8)
 80006b0:	40021000 	.word	0x40021000

080006b4 <LL_RCC_SetSysClkSource>:
 80006b4:	b580      	push	{r7, lr}
 80006b6:	b082      	sub	sp, #8
 80006b8:	af00      	add	r7, sp, #0
 80006ba:	6078      	str	r0, [r7, #4]
 80006bc:	4b06      	ldr	r3, [pc, #24]	; (80006d8 <LL_RCC_SetSysClkSource+0x24>)
 80006be:	685b      	ldr	r3, [r3, #4]
 80006c0:	2203      	movs	r2, #3
 80006c2:	4393      	bics	r3, r2
 80006c4:	0019      	movs	r1, r3
 80006c6:	4b04      	ldr	r3, [pc, #16]	; (80006d8 <LL_RCC_SetSysClkSource+0x24>)
 80006c8:	687a      	ldr	r2, [r7, #4]
 80006ca:	430a      	orrs	r2, r1
 80006cc:	605a      	str	r2, [r3, #4]
 80006ce:	46c0      	nop			; (mov r8, r8)
 80006d0:	46bd      	mov	sp, r7
 80006d2:	b002      	add	sp, #8
 80006d4:	bd80      	pop	{r7, pc}
 80006d6:	46c0      	nop			; (mov r8, r8)
 80006d8:	40021000 	.word	0x40021000

080006dc <LL_RCC_GetSysClkSource>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b03      	ldr	r3, [pc, #12]	; (80006f0 <LL_RCC_GetSysClkSource+0x14>)
 80006e2:	685b      	ldr	r3, [r3, #4]
 80006e4:	220c      	movs	r2, #12
 80006e6:	4013      	ands	r3, r2
 80006e8:	0018      	movs	r0, r3
 80006ea:	46bd      	mov	sp, r7
 80006ec:	bd80      	pop	{r7, pc}
 80006ee:	46c0      	nop			; (mov r8, r8)
 80006f0:	40021000 	.word	0x40021000

080006f4 <LL_RCC_SetAHBPrescaler>:
 80006f4:	b580      	push	{r7, lr}
 80006f6:	b082      	sub	sp, #8
 80006f8:	af00      	add	r7, sp, #0
 80006fa:	6078      	str	r0, [r7, #4]
 80006fc:	4b06      	ldr	r3, [pc, #24]	; (8000718 <LL_RCC_SetAHBPrescaler+0x24>)
 80006fe:	685b      	ldr	r3, [r3, #4]
 8000700:	22f0      	movs	r2, #240	; 0xf0
 8000702:	4393      	bics	r3, r2
 8000704:	0019      	movs	r1, r3
 8000706:	4b04      	ldr	r3, [pc, #16]	; (8000718 <LL_RCC_SetAHBPrescaler+0x24>)
 8000708:	687a      	ldr	r2, [r7, #4]
 800070a:	430a      	orrs	r2, r1
 800070c:	605a      	str	r2, [r3, #4]
 800070e:	46c0      	nop			; (mov r8, r8)
 8000710:	46bd      	mov	sp, r7
 8000712:	b002      	add	sp, #8
 8000714:	bd80      	pop	{r7, pc}
 8000716:	46c0      	nop			; (mov r8, r8)
 8000718:	40021000 	.word	0x40021000

0800071c <LL_RCC_SetAPB1Prescaler>:
 800071c:	b580      	push	{r7, lr}
 800071e:	b082      	sub	sp, #8
 8000720:	af00      	add	r7, sp, #0
 8000722:	6078      	str	r0, [r7, #4]
 8000724:	4b06      	ldr	r3, [pc, #24]	; (8000740 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000726:	685b      	ldr	r3, [r3, #4]
 8000728:	4a06      	ldr	r2, [pc, #24]	; (8000744 <LL_RCC_SetAPB1Prescaler+0x28>)
 800072a:	4013      	ands	r3, r2
 800072c:	0019      	movs	r1, r3
 800072e:	4b04      	ldr	r3, [pc, #16]	; (8000740 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000730:	687a      	ldr	r2, [r7, #4]
 8000732:	430a      	orrs	r2, r1
 8000734:	605a      	str	r2, [r3, #4]
 8000736:	46c0      	nop			; (mov r8, r8)
 8000738:	46bd      	mov	sp, r7
 800073a:	b002      	add	sp, #8
 800073c:	bd80      	pop	{r7, pc}
 800073e:	46c0      	nop			; (mov r8, r8)
 8000740:	40021000 	.word	0x40021000
 8000744:	fffff8ff 	.word	0xfffff8ff

08000748 <LL_RCC_SetUSARTClockSource>:
 8000748:	b580      	push	{r7, lr}
 800074a:	b082      	sub	sp, #8
 800074c:	af00      	add	r7, sp, #0
 800074e:	6078      	str	r0, [r7, #4]
 8000750:	4b09      	ldr	r3, [pc, #36]	; (8000778 <LL_RCC_SetUSARTClockSource+0x30>)
 8000752:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000754:	687a      	ldr	r2, [r7, #4]
 8000756:	0e12      	lsrs	r2, r2, #24
 8000758:	2103      	movs	r1, #3
 800075a:	4091      	lsls	r1, r2
 800075c:	000a      	movs	r2, r1
 800075e:	43d2      	mvns	r2, r2
 8000760:	401a      	ands	r2, r3
 8000762:	0011      	movs	r1, r2
 8000764:	687b      	ldr	r3, [r7, #4]
 8000766:	021b      	lsls	r3, r3, #8
 8000768:	0a1a      	lsrs	r2, r3, #8
 800076a:	4b03      	ldr	r3, [pc, #12]	; (8000778 <LL_RCC_SetUSARTClockSource+0x30>)
 800076c:	430a      	orrs	r2, r1
 800076e:	631a      	str	r2, [r3, #48]	; 0x30
 8000770:	46c0      	nop			; (mov r8, r8)
 8000772:	46bd      	mov	sp, r7
 8000774:	b002      	add	sp, #8
 8000776:	bd80      	pop	{r7, pc}
 8000778:	40021000 	.word	0x40021000

0800077c <LL_RCC_PLL_Enable>:
 800077c:	b580      	push	{r7, lr}
 800077e:	af00      	add	r7, sp, #0
 8000780:	4b04      	ldr	r3, [pc, #16]	; (8000794 <LL_RCC_PLL_Enable+0x18>)
 8000782:	681a      	ldr	r2, [r3, #0]
 8000784:	4b03      	ldr	r3, [pc, #12]	; (8000794 <LL_RCC_PLL_Enable+0x18>)
 8000786:	2180      	movs	r1, #128	; 0x80
 8000788:	0449      	lsls	r1, r1, #17
 800078a:	430a      	orrs	r2, r1
 800078c:	601a      	str	r2, [r3, #0]
 800078e:	46c0      	nop			; (mov r8, r8)
 8000790:	46bd      	mov	sp, r7
 8000792:	bd80      	pop	{r7, pc}
 8000794:	40021000 	.word	0x40021000

08000798 <LL_RCC_PLL_IsReady>:
 8000798:	b580      	push	{r7, lr}
 800079a:	af00      	add	r7, sp, #0
 800079c:	4b07      	ldr	r3, [pc, #28]	; (80007bc <LL_RCC_PLL_IsReady+0x24>)
 800079e:	681a      	ldr	r2, [r3, #0]
 80007a0:	2380      	movs	r3, #128	; 0x80
 80007a2:	049b      	lsls	r3, r3, #18
 80007a4:	4013      	ands	r3, r2
 80007a6:	22fe      	movs	r2, #254	; 0xfe
 80007a8:	0612      	lsls	r2, r2, #24
 80007aa:	4694      	mov	ip, r2
 80007ac:	4463      	add	r3, ip
 80007ae:	425a      	negs	r2, r3
 80007b0:	4153      	adcs	r3, r2
 80007b2:	b2db      	uxtb	r3, r3
 80007b4:	0018      	movs	r0, r3
 80007b6:	46bd      	mov	sp, r7
 80007b8:	bd80      	pop	{r7, pc}
 80007ba:	46c0      	nop			; (mov r8, r8)
 80007bc:	40021000 	.word	0x40021000

080007c0 <LL_RCC_PLL_ConfigDomain_SYS>:
 80007c0:	b580      	push	{r7, lr}
 80007c2:	b082      	sub	sp, #8
 80007c4:	af00      	add	r7, sp, #0
 80007c6:	6078      	str	r0, [r7, #4]
 80007c8:	6039      	str	r1, [r7, #0]
 80007ca:	4b0e      	ldr	r3, [pc, #56]	; (8000804 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007cc:	685b      	ldr	r3, [r3, #4]
 80007ce:	4a0e      	ldr	r2, [pc, #56]	; (8000808 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80007d0:	4013      	ands	r3, r2
 80007d2:	0019      	movs	r1, r3
 80007d4:	687a      	ldr	r2, [r7, #4]
 80007d6:	2380      	movs	r3, #128	; 0x80
 80007d8:	025b      	lsls	r3, r3, #9
 80007da:	401a      	ands	r2, r3
 80007dc:	683b      	ldr	r3, [r7, #0]
 80007de:	431a      	orrs	r2, r3
 80007e0:	4b08      	ldr	r3, [pc, #32]	; (8000804 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007e2:	430a      	orrs	r2, r1
 80007e4:	605a      	str	r2, [r3, #4]
 80007e6:	4b07      	ldr	r3, [pc, #28]	; (8000804 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007e8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80007ea:	220f      	movs	r2, #15
 80007ec:	4393      	bics	r3, r2
 80007ee:	0019      	movs	r1, r3
 80007f0:	687b      	ldr	r3, [r7, #4]
 80007f2:	220f      	movs	r2, #15
 80007f4:	401a      	ands	r2, r3
 80007f6:	4b03      	ldr	r3, [pc, #12]	; (8000804 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007f8:	430a      	orrs	r2, r1
 80007fa:	62da      	str	r2, [r3, #44]	; 0x2c
 80007fc:	46c0      	nop			; (mov r8, r8)
 80007fe:	46bd      	mov	sp, r7
 8000800:	b002      	add	sp, #8
 8000802:	bd80      	pop	{r7, pc}
 8000804:	40021000 	.word	0x40021000
 8000808:	ffc2ffff 	.word	0xffc2ffff

0800080c <LL_FLASH_SetLatency>:
 800080c:	b580      	push	{r7, lr}
 800080e:	b082      	sub	sp, #8
 8000810:	af00      	add	r7, sp, #0
 8000812:	6078      	str	r0, [r7, #4]
 8000814:	4b06      	ldr	r3, [pc, #24]	; (8000830 <LL_FLASH_SetLatency+0x24>)
 8000816:	681b      	ldr	r3, [r3, #0]
 8000818:	2201      	movs	r2, #1
 800081a:	4393      	bics	r3, r2
 800081c:	0019      	movs	r1, r3
 800081e:	4b04      	ldr	r3, [pc, #16]	; (8000830 <LL_FLASH_SetLatency+0x24>)
 8000820:	687a      	ldr	r2, [r7, #4]
 8000822:	430a      	orrs	r2, r1
 8000824:	601a      	str	r2, [r3, #0]
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	46bd      	mov	sp, r7
 800082a:	b002      	add	sp, #8
 800082c:	bd80      	pop	{r7, pc}
 800082e:	46c0      	nop			; (mov r8, r8)
 8000830:	40022000 	.word	0x40022000

08000834 <LL_AHB1_GRP1_EnableClock>:
 8000834:	b580      	push	{r7, lr}
 8000836:	b084      	sub	sp, #16
 8000838:	af00      	add	r7, sp, #0
 800083a:	6078      	str	r0, [r7, #4]
 800083c:	4b07      	ldr	r3, [pc, #28]	; (800085c <LL_AHB1_GRP1_EnableClock+0x28>)
 800083e:	6959      	ldr	r1, [r3, #20]
 8000840:	4b06      	ldr	r3, [pc, #24]	; (800085c <LL_AHB1_GRP1_EnableClock+0x28>)
 8000842:	687a      	ldr	r2, [r7, #4]
 8000844:	430a      	orrs	r2, r1
 8000846:	615a      	str	r2, [r3, #20]
 8000848:	4b04      	ldr	r3, [pc, #16]	; (800085c <LL_AHB1_GRP1_EnableClock+0x28>)
 800084a:	695b      	ldr	r3, [r3, #20]
 800084c:	687a      	ldr	r2, [r7, #4]
 800084e:	4013      	ands	r3, r2
 8000850:	60fb      	str	r3, [r7, #12]
 8000852:	68fb      	ldr	r3, [r7, #12]
 8000854:	46c0      	nop			; (mov r8, r8)
 8000856:	46bd      	mov	sp, r7
 8000858:	b004      	add	sp, #16
 800085a:	bd80      	pop	{r7, pc}
 800085c:	40021000 	.word	0x40021000

08000860 <LL_APB1_GRP2_EnableClock>:
 8000860:	b580      	push	{r7, lr}
 8000862:	b084      	sub	sp, #16
 8000864:	af00      	add	r7, sp, #0
 8000866:	6078      	str	r0, [r7, #4]
 8000868:	4b07      	ldr	r3, [pc, #28]	; (8000888 <LL_APB1_GRP2_EnableClock+0x28>)
 800086a:	6999      	ldr	r1, [r3, #24]
 800086c:	4b06      	ldr	r3, [pc, #24]	; (8000888 <LL_APB1_GRP2_EnableClock+0x28>)
 800086e:	687a      	ldr	r2, [r7, #4]
 8000870:	430a      	orrs	r2, r1
 8000872:	619a      	str	r2, [r3, #24]
 8000874:	4b04      	ldr	r3, [pc, #16]	; (8000888 <LL_APB1_GRP2_EnableClock+0x28>)
 8000876:	699b      	ldr	r3, [r3, #24]
 8000878:	687a      	ldr	r2, [r7, #4]
 800087a:	4013      	ands	r3, r2
 800087c:	60fb      	str	r3, [r7, #12]
 800087e:	68fb      	ldr	r3, [r7, #12]
 8000880:	46c0      	nop			; (mov r8, r8)
 8000882:	46bd      	mov	sp, r7
 8000884:	b004      	add	sp, #16
 8000886:	bd80      	pop	{r7, pc}
 8000888:	40021000 	.word	0x40021000

0800088c <LL_GPIO_SetPinMode>:
 800088c:	b580      	push	{r7, lr}
 800088e:	b084      	sub	sp, #16
 8000890:	af00      	add	r7, sp, #0
 8000892:	60f8      	str	r0, [r7, #12]
 8000894:	60b9      	str	r1, [r7, #8]
 8000896:	607a      	str	r2, [r7, #4]
 8000898:	68fb      	ldr	r3, [r7, #12]
 800089a:	6819      	ldr	r1, [r3, #0]
 800089c:	68bb      	ldr	r3, [r7, #8]
 800089e:	68ba      	ldr	r2, [r7, #8]
 80008a0:	435a      	muls	r2, r3
 80008a2:	0013      	movs	r3, r2
 80008a4:	005b      	lsls	r3, r3, #1
 80008a6:	189b      	adds	r3, r3, r2
 80008a8:	43db      	mvns	r3, r3
 80008aa:	400b      	ands	r3, r1
 80008ac:	001a      	movs	r2, r3
 80008ae:	68bb      	ldr	r3, [r7, #8]
 80008b0:	68b9      	ldr	r1, [r7, #8]
 80008b2:	434b      	muls	r3, r1
 80008b4:	6879      	ldr	r1, [r7, #4]
 80008b6:	434b      	muls	r3, r1
 80008b8:	431a      	orrs	r2, r3
 80008ba:	68fb      	ldr	r3, [r7, #12]
 80008bc:	601a      	str	r2, [r3, #0]
 80008be:	46c0      	nop			; (mov r8, r8)
 80008c0:	46bd      	mov	sp, r7
 80008c2:	b004      	add	sp, #16
 80008c4:	bd80      	pop	{r7, pc}

080008c6 <LL_GPIO_SetPinSpeed>:
 80008c6:	b580      	push	{r7, lr}
 80008c8:	b084      	sub	sp, #16
 80008ca:	af00      	add	r7, sp, #0
 80008cc:	60f8      	str	r0, [r7, #12]
 80008ce:	60b9      	str	r1, [r7, #8]
 80008d0:	607a      	str	r2, [r7, #4]
 80008d2:	68fb      	ldr	r3, [r7, #12]
 80008d4:	6899      	ldr	r1, [r3, #8]
 80008d6:	68bb      	ldr	r3, [r7, #8]
 80008d8:	68ba      	ldr	r2, [r7, #8]
 80008da:	435a      	muls	r2, r3
 80008dc:	0013      	movs	r3, r2
 80008de:	005b      	lsls	r3, r3, #1
 80008e0:	189b      	adds	r3, r3, r2
 80008e2:	43db      	mvns	r3, r3
 80008e4:	400b      	ands	r3, r1
 80008e6:	001a      	movs	r2, r3
 80008e8:	68bb      	ldr	r3, [r7, #8]
 80008ea:	68b9      	ldr	r1, [r7, #8]
 80008ec:	434b      	muls	r3, r1
 80008ee:	6879      	ldr	r1, [r7, #4]
 80008f0:	434b      	muls	r3, r1
 80008f2:	431a      	orrs	r2, r3
 80008f4:	68fb      	ldr	r3, [r7, #12]
 80008f6:	609a      	str	r2, [r3, #8]
 80008f8:	46c0      	nop			; (mov r8, r8)
 80008fa:	46bd      	mov	sp, r7
 80008fc:	b004      	add	sp, #16
 80008fe:	bd80      	pop	{r7, pc}

08000900 <LL_GPIO_SetAFPin_8_15>:
 8000900:	b580      	push	{r7, lr}
 8000902:	b084      	sub	sp, #16
 8000904:	af00      	add	r7, sp, #0
 8000906:	60f8      	str	r0, [r7, #12]
 8000908:	60b9      	str	r1, [r7, #8]
 800090a:	607a      	str	r2, [r7, #4]
 800090c:	68fb      	ldr	r3, [r7, #12]
 800090e:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8000910:	68bb      	ldr	r3, [r7, #8]
 8000912:	0a1b      	lsrs	r3, r3, #8
 8000914:	68ba      	ldr	r2, [r7, #8]
 8000916:	0a12      	lsrs	r2, r2, #8
 8000918:	4353      	muls	r3, r2
 800091a:	68ba      	ldr	r2, [r7, #8]
 800091c:	0a12      	lsrs	r2, r2, #8
 800091e:	4353      	muls	r3, r2
 8000920:	68ba      	ldr	r2, [r7, #8]
 8000922:	0a12      	lsrs	r2, r2, #8
 8000924:	435a      	muls	r2, r3
 8000926:	0013      	movs	r3, r2
 8000928:	011b      	lsls	r3, r3, #4
 800092a:	1a9b      	subs	r3, r3, r2
 800092c:	43db      	mvns	r3, r3
 800092e:	400b      	ands	r3, r1
 8000930:	001a      	movs	r2, r3
 8000932:	68bb      	ldr	r3, [r7, #8]
 8000934:	0a1b      	lsrs	r3, r3, #8
 8000936:	68b9      	ldr	r1, [r7, #8]
 8000938:	0a09      	lsrs	r1, r1, #8
 800093a:	434b      	muls	r3, r1
 800093c:	68b9      	ldr	r1, [r7, #8]
 800093e:	0a09      	lsrs	r1, r1, #8
 8000940:	434b      	muls	r3, r1
 8000942:	68b9      	ldr	r1, [r7, #8]
 8000944:	0a09      	lsrs	r1, r1, #8
 8000946:	434b      	muls	r3, r1
 8000948:	6879      	ldr	r1, [r7, #4]
 800094a:	434b      	muls	r3, r1
 800094c:	431a      	orrs	r2, r3
 800094e:	68fb      	ldr	r3, [r7, #12]
 8000950:	625a      	str	r2, [r3, #36]	; 0x24
 8000952:	46c0      	nop			; (mov r8, r8)
 8000954:	46bd      	mov	sp, r7
 8000956:	b004      	add	sp, #16
 8000958:	bd80      	pop	{r7, pc}

0800095a <LL_GPIO_WriteOutputPort>:
 800095a:	b580      	push	{r7, lr}
 800095c:	b082      	sub	sp, #8
 800095e:	af00      	add	r7, sp, #0
 8000960:	6078      	str	r0, [r7, #4]
 8000962:	6039      	str	r1, [r7, #0]
 8000964:	687b      	ldr	r3, [r7, #4]
 8000966:	683a      	ldr	r2, [r7, #0]
 8000968:	615a      	str	r2, [r3, #20]
 800096a:	46c0      	nop			; (mov r8, r8)
 800096c:	46bd      	mov	sp, r7
 800096e:	b002      	add	sp, #8
 8000970:	bd80      	pop	{r7, pc}
	...

08000974 <LL_InitTick>:
 8000974:	b580      	push	{r7, lr}
 8000976:	b082      	sub	sp, #8
 8000978:	af00      	add	r7, sp, #0
 800097a:	6078      	str	r0, [r7, #4]
 800097c:	6039      	str	r1, [r7, #0]
 800097e:	6839      	ldr	r1, [r7, #0]
 8000980:	6878      	ldr	r0, [r7, #4]
 8000982:	f7ff fbe9 	bl	8000158 <__udivsi3>
 8000986:	0003      	movs	r3, r0
 8000988:	001a      	movs	r2, r3
 800098a:	4b06      	ldr	r3, [pc, #24]	; (80009a4 <LL_InitTick+0x30>)
 800098c:	3a01      	subs	r2, #1
 800098e:	605a      	str	r2, [r3, #4]
 8000990:	4b04      	ldr	r3, [pc, #16]	; (80009a4 <LL_InitTick+0x30>)
 8000992:	2200      	movs	r2, #0
 8000994:	609a      	str	r2, [r3, #8]
 8000996:	4b03      	ldr	r3, [pc, #12]	; (80009a4 <LL_InitTick+0x30>)
 8000998:	2205      	movs	r2, #5
 800099a:	601a      	str	r2, [r3, #0]
 800099c:	46c0      	nop			; (mov r8, r8)
 800099e:	46bd      	mov	sp, r7
 80009a0:	b002      	add	sp, #8
 80009a2:	bd80      	pop	{r7, pc}
 80009a4:	e000e010 	.word	0xe000e010

080009a8 <LL_SYSTICK_EnableIT>:
 80009a8:	b580      	push	{r7, lr}
 80009aa:	af00      	add	r7, sp, #0
 80009ac:	4b04      	ldr	r3, [pc, #16]	; (80009c0 <LL_SYSTICK_EnableIT+0x18>)
 80009ae:	681a      	ldr	r2, [r3, #0]
 80009b0:	4b03      	ldr	r3, [pc, #12]	; (80009c0 <LL_SYSTICK_EnableIT+0x18>)
 80009b2:	2102      	movs	r1, #2
 80009b4:	430a      	orrs	r2, r1
 80009b6:	601a      	str	r2, [r3, #0]
 80009b8:	46c0      	nop			; (mov r8, r8)
 80009ba:	46bd      	mov	sp, r7
 80009bc:	bd80      	pop	{r7, pc}
 80009be:	46c0      	nop			; (mov r8, r8)
 80009c0:	e000e010 	.word	0xe000e010

080009c4 <LL_USART_Enable>:
 80009c4:	b580      	push	{r7, lr}
 80009c6:	b082      	sub	sp, #8
 80009c8:	af00      	add	r7, sp, #0
 80009ca:	6078      	str	r0, [r7, #4]
 80009cc:	687b      	ldr	r3, [r7, #4]
 80009ce:	681b      	ldr	r3, [r3, #0]
 80009d0:	2201      	movs	r2, #1
 80009d2:	431a      	orrs	r2, r3
 80009d4:	687b      	ldr	r3, [r7, #4]
 80009d6:	601a      	str	r2, [r3, #0]
 80009d8:	46c0      	nop			; (mov r8, r8)
 80009da:	46bd      	mov	sp, r7
 80009dc:	b002      	add	sp, #8
 80009de:	bd80      	pop	{r7, pc}

080009e0 <LL_USART_SetTransferDirection>:
 80009e0:	b580      	push	{r7, lr}
 80009e2:	b082      	sub	sp, #8
 80009e4:	af00      	add	r7, sp, #0
 80009e6:	6078      	str	r0, [r7, #4]
 80009e8:	6039      	str	r1, [r7, #0]
 80009ea:	687b      	ldr	r3, [r7, #4]
 80009ec:	681b      	ldr	r3, [r3, #0]
 80009ee:	220c      	movs	r2, #12
 80009f0:	4393      	bics	r3, r2
 80009f2:	001a      	movs	r2, r3
 80009f4:	683b      	ldr	r3, [r7, #0]
 80009f6:	431a      	orrs	r2, r3
 80009f8:	687b      	ldr	r3, [r7, #4]
 80009fa:	601a      	str	r2, [r3, #0]
 80009fc:	46c0      	nop			; (mov r8, r8)
 80009fe:	46bd      	mov	sp, r7
 8000a00:	b002      	add	sp, #8
 8000a02:	bd80      	pop	{r7, pc}

08000a04 <LL_USART_SetParity>:
 8000a04:	b580      	push	{r7, lr}
 8000a06:	b082      	sub	sp, #8
 8000a08:	af00      	add	r7, sp, #0
 8000a0a:	6078      	str	r0, [r7, #4]
 8000a0c:	6039      	str	r1, [r7, #0]
 8000a0e:	687b      	ldr	r3, [r7, #4]
 8000a10:	681b      	ldr	r3, [r3, #0]
 8000a12:	4a05      	ldr	r2, [pc, #20]	; (8000a28 <LL_USART_SetParity+0x24>)
 8000a14:	401a      	ands	r2, r3
 8000a16:	683b      	ldr	r3, [r7, #0]
 8000a18:	431a      	orrs	r2, r3
 8000a1a:	687b      	ldr	r3, [r7, #4]
 8000a1c:	601a      	str	r2, [r3, #0]
 8000a1e:	46c0      	nop			; (mov r8, r8)
 8000a20:	46bd      	mov	sp, r7
 8000a22:	b002      	add	sp, #8
 8000a24:	bd80      	pop	{r7, pc}
 8000a26:	46c0      	nop			; (mov r8, r8)
 8000a28:	fffff9ff 	.word	0xfffff9ff

08000a2c <LL_USART_SetDataWidth>:
 8000a2c:	b580      	push	{r7, lr}
 8000a2e:	b082      	sub	sp, #8
 8000a30:	af00      	add	r7, sp, #0
 8000a32:	6078      	str	r0, [r7, #4]
 8000a34:	6039      	str	r1, [r7, #0]
 8000a36:	687b      	ldr	r3, [r7, #4]
 8000a38:	681b      	ldr	r3, [r3, #0]
 8000a3a:	4a05      	ldr	r2, [pc, #20]	; (8000a50 <LL_USART_SetDataWidth+0x24>)
 8000a3c:	401a      	ands	r2, r3
 8000a3e:	683b      	ldr	r3, [r7, #0]
 8000a40:	431a      	orrs	r2, r3
 8000a42:	687b      	ldr	r3, [r7, #4]
 8000a44:	601a      	str	r2, [r3, #0]
 8000a46:	46c0      	nop			; (mov r8, r8)
 8000a48:	46bd      	mov	sp, r7
 8000a4a:	b002      	add	sp, #8
 8000a4c:	bd80      	pop	{r7, pc}
 8000a4e:	46c0      	nop			; (mov r8, r8)
 8000a50:	ffffefff 	.word	0xffffefff

08000a54 <LL_USART_SetStopBitsLength>:
 8000a54:	b580      	push	{r7, lr}
 8000a56:	b082      	sub	sp, #8
 8000a58:	af00      	add	r7, sp, #0
 8000a5a:	6078      	str	r0, [r7, #4]
 8000a5c:	6039      	str	r1, [r7, #0]
 8000a5e:	687b      	ldr	r3, [r7, #4]
 8000a60:	685b      	ldr	r3, [r3, #4]
 8000a62:	4a05      	ldr	r2, [pc, #20]	; (8000a78 <LL_USART_SetStopBitsLength+0x24>)
 8000a64:	401a      	ands	r2, r3
 8000a66:	683b      	ldr	r3, [r7, #0]
 8000a68:	431a      	orrs	r2, r3
 8000a6a:	687b      	ldr	r3, [r7, #4]
 8000a6c:	605a      	str	r2, [r3, #4]
 8000a6e:	46c0      	nop			; (mov r8, r8)
 8000a70:	46bd      	mov	sp, r7
 8000a72:	b002      	add	sp, #8
 8000a74:	bd80      	pop	{r7, pc}
 8000a76:	46c0      	nop			; (mov r8, r8)
 8000a78:	ffffcfff 	.word	0xffffcfff

08000a7c <LL_USART_SetTransferBitOrder>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	b082      	sub	sp, #8
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	6078      	str	r0, [r7, #4]
 8000a84:	6039      	str	r1, [r7, #0]
 8000a86:	687b      	ldr	r3, [r7, #4]
 8000a88:	685b      	ldr	r3, [r3, #4]
 8000a8a:	4a05      	ldr	r2, [pc, #20]	; (8000aa0 <LL_USART_SetTransferBitOrder+0x24>)
 8000a8c:	401a      	ands	r2, r3
 8000a8e:	683b      	ldr	r3, [r7, #0]
 8000a90:	431a      	orrs	r2, r3
 8000a92:	687b      	ldr	r3, [r7, #4]
 8000a94:	605a      	str	r2, [r3, #4]
 8000a96:	46c0      	nop			; (mov r8, r8)
 8000a98:	46bd      	mov	sp, r7
 8000a9a:	b002      	add	sp, #8
 8000a9c:	bd80      	pop	{r7, pc}
 8000a9e:	46c0      	nop			; (mov r8, r8)
 8000aa0:	fff7ffff 	.word	0xfff7ffff

08000aa4 <LL_USART_SetBaudRate>:
 8000aa4:	b5b0      	push	{r4, r5, r7, lr}
 8000aa6:	b084      	sub	sp, #16
 8000aa8:	af00      	add	r7, sp, #0
 8000aaa:	60f8      	str	r0, [r7, #12]
 8000aac:	60b9      	str	r1, [r7, #8]
 8000aae:	607a      	str	r2, [r7, #4]
 8000ab0:	603b      	str	r3, [r7, #0]
 8000ab2:	2500      	movs	r5, #0
 8000ab4:	2400      	movs	r4, #0
 8000ab6:	687a      	ldr	r2, [r7, #4]
 8000ab8:	2380      	movs	r3, #128	; 0x80
 8000aba:	021b      	lsls	r3, r3, #8
 8000abc:	429a      	cmp	r2, r3
 8000abe:	d117      	bne.n	8000af0 <LL_USART_SetBaudRate+0x4c>
 8000ac0:	68bb      	ldr	r3, [r7, #8]
 8000ac2:	005a      	lsls	r2, r3, #1
 8000ac4:	683b      	ldr	r3, [r7, #0]
 8000ac6:	085b      	lsrs	r3, r3, #1
 8000ac8:	18d3      	adds	r3, r2, r3
 8000aca:	6839      	ldr	r1, [r7, #0]
 8000acc:	0018      	movs	r0, r3
 8000ace:	f7ff fb43 	bl	8000158 <__udivsi3>
 8000ad2:	0003      	movs	r3, r0
 8000ad4:	b29b      	uxth	r3, r3
 8000ad6:	001d      	movs	r5, r3
 8000ad8:	4b0e      	ldr	r3, [pc, #56]	; (8000b14 <LL_USART_SetBaudRate+0x70>)
 8000ada:	402b      	ands	r3, r5
 8000adc:	001c      	movs	r4, r3
 8000ade:	086b      	lsrs	r3, r5, #1
 8000ae0:	b29b      	uxth	r3, r3
 8000ae2:	001a      	movs	r2, r3
 8000ae4:	2307      	movs	r3, #7
 8000ae6:	4013      	ands	r3, r2
 8000ae8:	431c      	orrs	r4, r3
 8000aea:	68fb      	ldr	r3, [r7, #12]
 8000aec:	60dc      	str	r4, [r3, #12]
 8000aee:	e00c      	b.n	8000b0a <LL_USART_SetBaudRate+0x66>
 8000af0:	683b      	ldr	r3, [r7, #0]
 8000af2:	085a      	lsrs	r2, r3, #1
 8000af4:	68bb      	ldr	r3, [r7, #8]
 8000af6:	18d3      	adds	r3, r2, r3
 8000af8:	6839      	ldr	r1, [r7, #0]
 8000afa:	0018      	movs	r0, r3
 8000afc:	f7ff fb2c 	bl	8000158 <__udivsi3>
 8000b00:	0003      	movs	r3, r0
 8000b02:	b29b      	uxth	r3, r3
 8000b04:	001a      	movs	r2, r3
 8000b06:	68fb      	ldr	r3, [r7, #12]
 8000b08:	60da      	str	r2, [r3, #12]
 8000b0a:	46c0      	nop			; (mov r8, r8)
 8000b0c:	46bd      	mov	sp, r7
 8000b0e:	b004      	add	sp, #16
 8000b10:	bdb0      	pop	{r4, r5, r7, pc}
 8000b12:	46c0      	nop			; (mov r8, r8)
 8000b14:	0000fff0 	.word	0x0000fff0

08000b18 <LL_USART_IsActiveFlag_RXNE>:
 8000b18:	b580      	push	{r7, lr}
 8000b1a:	b082      	sub	sp, #8
 8000b1c:	af00      	add	r7, sp, #0
 8000b1e:	6078      	str	r0, [r7, #4]
 8000b20:	687b      	ldr	r3, [r7, #4]
 8000b22:	69db      	ldr	r3, [r3, #28]
 8000b24:	2220      	movs	r2, #32
 8000b26:	4013      	ands	r3, r2
 8000b28:	3b20      	subs	r3, #32
 8000b2a:	425a      	negs	r2, r3
 8000b2c:	4153      	adcs	r3, r2
 8000b2e:	b2db      	uxtb	r3, r3
 8000b30:	0018      	movs	r0, r3
 8000b32:	46bd      	mov	sp, r7
 8000b34:	b002      	add	sp, #8
 8000b36:	bd80      	pop	{r7, pc}

08000b38 <LL_USART_IsActiveFlag_TC>:
 8000b38:	b580      	push	{r7, lr}
 8000b3a:	b082      	sub	sp, #8
 8000b3c:	af00      	add	r7, sp, #0
 8000b3e:	6078      	str	r0, [r7, #4]
 8000b40:	687b      	ldr	r3, [r7, #4]
 8000b42:	69db      	ldr	r3, [r3, #28]
 8000b44:	2240      	movs	r2, #64	; 0x40
 8000b46:	4013      	ands	r3, r2
 8000b48:	3b40      	subs	r3, #64	; 0x40
 8000b4a:	425a      	negs	r2, r3
 8000b4c:	4153      	adcs	r3, r2
 8000b4e:	b2db      	uxtb	r3, r3
 8000b50:	0018      	movs	r0, r3
 8000b52:	46bd      	mov	sp, r7
 8000b54:	b002      	add	sp, #8
 8000b56:	bd80      	pop	{r7, pc}

08000b58 <LL_USART_IsActiveFlag_TXE>:
 8000b58:	b580      	push	{r7, lr}
 8000b5a:	b082      	sub	sp, #8
 8000b5c:	af00      	add	r7, sp, #0
 8000b5e:	6078      	str	r0, [r7, #4]
 8000b60:	687b      	ldr	r3, [r7, #4]
 8000b62:	69db      	ldr	r3, [r3, #28]
 8000b64:	2280      	movs	r2, #128	; 0x80
 8000b66:	4013      	ands	r3, r2
 8000b68:	3b80      	subs	r3, #128	; 0x80
 8000b6a:	425a      	negs	r2, r3
 8000b6c:	4153      	adcs	r3, r2
 8000b6e:	b2db      	uxtb	r3, r3
 8000b70:	0018      	movs	r0, r3
 8000b72:	46bd      	mov	sp, r7
 8000b74:	b002      	add	sp, #8
 8000b76:	bd80      	pop	{r7, pc}

08000b78 <LL_USART_IsActiveFlag_TEACK>:
 8000b78:	b580      	push	{r7, lr}
 8000b7a:	b082      	sub	sp, #8
 8000b7c:	af00      	add	r7, sp, #0
 8000b7e:	6078      	str	r0, [r7, #4]
 8000b80:	687b      	ldr	r3, [r7, #4]
 8000b82:	69da      	ldr	r2, [r3, #28]
 8000b84:	2380      	movs	r3, #128	; 0x80
 8000b86:	039b      	lsls	r3, r3, #14
 8000b88:	4013      	ands	r3, r2
 8000b8a:	4a05      	ldr	r2, [pc, #20]	; (8000ba0 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8000b8c:	4694      	mov	ip, r2
 8000b8e:	4463      	add	r3, ip
 8000b90:	425a      	negs	r2, r3
 8000b92:	4153      	adcs	r3, r2
 8000b94:	b2db      	uxtb	r3, r3
 8000b96:	0018      	movs	r0, r3
 8000b98:	46bd      	mov	sp, r7
 8000b9a:	b002      	add	sp, #8
 8000b9c:	bd80      	pop	{r7, pc}
 8000b9e:	46c0      	nop			; (mov r8, r8)
 8000ba0:	ffe00000 	.word	0xffe00000

08000ba4 <LL_USART_IsActiveFlag_REACK>:
 8000ba4:	b580      	push	{r7, lr}
 8000ba6:	b082      	sub	sp, #8
 8000ba8:	af00      	add	r7, sp, #0
 8000baa:	6078      	str	r0, [r7, #4]
 8000bac:	687b      	ldr	r3, [r7, #4]
 8000bae:	69da      	ldr	r2, [r3, #28]
 8000bb0:	2380      	movs	r3, #128	; 0x80
 8000bb2:	03db      	lsls	r3, r3, #15
 8000bb4:	4013      	ands	r3, r2
 8000bb6:	4a05      	ldr	r2, [pc, #20]	; (8000bcc <LL_USART_IsActiveFlag_REACK+0x28>)
 8000bb8:	4694      	mov	ip, r2
 8000bba:	4463      	add	r3, ip
 8000bbc:	425a      	negs	r2, r3
 8000bbe:	4153      	adcs	r3, r2
 8000bc0:	b2db      	uxtb	r3, r3
 8000bc2:	0018      	movs	r0, r3
 8000bc4:	46bd      	mov	sp, r7
 8000bc6:	b002      	add	sp, #8
 8000bc8:	bd80      	pop	{r7, pc}
 8000bca:	46c0      	nop			; (mov r8, r8)
 8000bcc:	ffc00000 	.word	0xffc00000

08000bd0 <LL_USART_EnableIT_IDLE>:
 8000bd0:	b580      	push	{r7, lr}
 8000bd2:	b082      	sub	sp, #8
 8000bd4:	af00      	add	r7, sp, #0
 8000bd6:	6078      	str	r0, [r7, #4]
 8000bd8:	687b      	ldr	r3, [r7, #4]
 8000bda:	681b      	ldr	r3, [r3, #0]
 8000bdc:	2210      	movs	r2, #16
 8000bde:	431a      	orrs	r2, r3
 8000be0:	687b      	ldr	r3, [r7, #4]
 8000be2:	601a      	str	r2, [r3, #0]
 8000be4:	46c0      	nop			; (mov r8, r8)
 8000be6:	46bd      	mov	sp, r7
 8000be8:	b002      	add	sp, #8
 8000bea:	bd80      	pop	{r7, pc}

08000bec <LL_USART_EnableIT_RXNE>:
 8000bec:	b580      	push	{r7, lr}
 8000bee:	b082      	sub	sp, #8
 8000bf0:	af00      	add	r7, sp, #0
 8000bf2:	6078      	str	r0, [r7, #4]
 8000bf4:	687b      	ldr	r3, [r7, #4]
 8000bf6:	681b      	ldr	r3, [r3, #0]
 8000bf8:	2220      	movs	r2, #32
 8000bfa:	431a      	orrs	r2, r3
 8000bfc:	687b      	ldr	r3, [r7, #4]
 8000bfe:	601a      	str	r2, [r3, #0]
 8000c00:	46c0      	nop			; (mov r8, r8)
 8000c02:	46bd      	mov	sp, r7
 8000c04:	b002      	add	sp, #8
 8000c06:	bd80      	pop	{r7, pc}

08000c08 <LL_USART_ReceiveData8>:
 8000c08:	b580      	push	{r7, lr}
 8000c0a:	b082      	sub	sp, #8
 8000c0c:	af00      	add	r7, sp, #0
 8000c0e:	6078      	str	r0, [r7, #4]
 8000c10:	687b      	ldr	r3, [r7, #4]
 8000c12:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8000c14:	b29b      	uxth	r3, r3
 8000c16:	b2db      	uxtb	r3, r3
 8000c18:	0018      	movs	r0, r3
 8000c1a:	46bd      	mov	sp, r7
 8000c1c:	b002      	add	sp, #8
 8000c1e:	bd80      	pop	{r7, pc}

08000c20 <LL_USART_TransmitData8>:
 8000c20:	b580      	push	{r7, lr}
 8000c22:	b082      	sub	sp, #8
 8000c24:	af00      	add	r7, sp, #0
 8000c26:	6078      	str	r0, [r7, #4]
 8000c28:	000a      	movs	r2, r1
 8000c2a:	1cfb      	adds	r3, r7, #3
 8000c2c:	701a      	strb	r2, [r3, #0]
 8000c2e:	1cfb      	adds	r3, r7, #3
 8000c30:	781b      	ldrb	r3, [r3, #0]
 8000c32:	b29a      	uxth	r2, r3
 8000c34:	687b      	ldr	r3, [r7, #4]
 8000c36:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c38:	46c0      	nop			; (mov r8, r8)
 8000c3a:	46bd      	mov	sp, r7
 8000c3c:	b002      	add	sp, #8
 8000c3e:	bd80      	pop	{r7, pc}

08000c40 <rcc_config>:
 8000c40:	b580      	push	{r7, lr}
 8000c42:	af00      	add	r7, sp, #0
 8000c44:	2000      	movs	r0, #0
 8000c46:	f7ff fde1 	bl	800080c <LL_FLASH_SetLatency>
 8000c4a:	f7ff fd15 	bl	8000678 <LL_RCC_HSI_Enable>
 8000c4e:	46c0      	nop			; (mov r8, r8)
 8000c50:	f7ff fd20 	bl	8000694 <LL_RCC_HSI_IsReady>
 8000c54:	0003      	movs	r3, r0
 8000c56:	2b01      	cmp	r3, #1
 8000c58:	d1fa      	bne.n	8000c50 <rcc_config+0x10>
 8000c5a:	23a0      	movs	r3, #160	; 0xa0
 8000c5c:	039b      	lsls	r3, r3, #14
 8000c5e:	0019      	movs	r1, r3
 8000c60:	2000      	movs	r0, #0
 8000c62:	f7ff fdad 	bl	80007c0 <LL_RCC_PLL_ConfigDomain_SYS>
 8000c66:	f7ff fd89 	bl	800077c <LL_RCC_PLL_Enable>
 8000c6a:	46c0      	nop			; (mov r8, r8)
 8000c6c:	f7ff fd94 	bl	8000798 <LL_RCC_PLL_IsReady>
 8000c70:	0003      	movs	r3, r0
 8000c72:	2b01      	cmp	r3, #1
 8000c74:	d1fa      	bne.n	8000c6c <rcc_config+0x2c>
 8000c76:	2000      	movs	r0, #0
 8000c78:	f7ff fd3c 	bl	80006f4 <LL_RCC_SetAHBPrescaler>
 8000c7c:	2002      	movs	r0, #2
 8000c7e:	f7ff fd19 	bl	80006b4 <LL_RCC_SetSysClkSource>
 8000c82:	46c0      	nop			; (mov r8, r8)
 8000c84:	f7ff fd2a 	bl	80006dc <LL_RCC_GetSysClkSource>
 8000c88:	0003      	movs	r3, r0
 8000c8a:	2b08      	cmp	r3, #8
 8000c8c:	d1fa      	bne.n	8000c84 <rcc_config+0x44>
 8000c8e:	2000      	movs	r0, #0
 8000c90:	f7ff fd44 	bl	800071c <LL_RCC_SetAPB1Prescaler>
 8000c94:	4b02      	ldr	r3, [pc, #8]	; (8000ca0 <rcc_config+0x60>)
 8000c96:	4a03      	ldr	r2, [pc, #12]	; (8000ca4 <rcc_config+0x64>)
 8000c98:	601a      	str	r2, [r3, #0]
 8000c9a:	46c0      	nop			; (mov r8, r8)
 8000c9c:	46bd      	mov	sp, r7
 8000c9e:	bd80      	pop	{r7, pc}
 8000ca0:	20000488 	.word	0x20000488
 8000ca4:	02dc6c00 	.word	0x02dc6c00

08000ca8 <gpio_config>:
 8000ca8:	b580      	push	{r7, lr}
 8000caa:	af00      	add	r7, sp, #0
 8000cac:	2380      	movs	r3, #128	; 0x80
 8000cae:	031b      	lsls	r3, r3, #12
 8000cb0:	0018      	movs	r0, r3
 8000cb2:	f7ff fdbf 	bl	8000834 <LL_AHB1_GRP1_EnableClock>
 8000cb6:	4b03      	ldr	r3, [pc, #12]	; (8000cc4 <gpio_config+0x1c>)
 8000cb8:	4a03      	ldr	r2, [pc, #12]	; (8000cc8 <gpio_config+0x20>)
 8000cba:	601a      	str	r2, [r3, #0]
 8000cbc:	46c0      	nop			; (mov r8, r8)
 8000cbe:	46bd      	mov	sp, r7
 8000cc0:	bd80      	pop	{r7, pc}
 8000cc2:	46c0      	nop			; (mov r8, r8)
 8000cc4:	48000800 	.word	0x48000800
 8000cc8:	00555555 	.word	0x00555555

08000ccc <usart_config>:
 8000ccc:	b580      	push	{r7, lr}
 8000cce:	af00      	add	r7, sp, #0
 8000cd0:	2380      	movs	r3, #128	; 0x80
 8000cd2:	029b      	lsls	r3, r3, #10
 8000cd4:	0018      	movs	r0, r3
 8000cd6:	f7ff fdad 	bl	8000834 <LL_AHB1_GRP1_EnableClock>
 8000cda:	2380      	movs	r3, #128	; 0x80
 8000cdc:	0099      	lsls	r1, r3, #2
 8000cde:	2390      	movs	r3, #144	; 0x90
 8000ce0:	05db      	lsls	r3, r3, #23
 8000ce2:	2202      	movs	r2, #2
 8000ce4:	0018      	movs	r0, r3
 8000ce6:	f7ff fdd1 	bl	800088c <LL_GPIO_SetPinMode>
 8000cea:	2380      	movs	r3, #128	; 0x80
 8000cec:	0099      	lsls	r1, r3, #2
 8000cee:	2390      	movs	r3, #144	; 0x90
 8000cf0:	05db      	lsls	r3, r3, #23
 8000cf2:	2201      	movs	r2, #1
 8000cf4:	0018      	movs	r0, r3
 8000cf6:	f7ff fe03 	bl	8000900 <LL_GPIO_SetAFPin_8_15>
 8000cfa:	2380      	movs	r3, #128	; 0x80
 8000cfc:	0099      	lsls	r1, r3, #2
 8000cfe:	2390      	movs	r3, #144	; 0x90
 8000d00:	05db      	lsls	r3, r3, #23
 8000d02:	2203      	movs	r2, #3
 8000d04:	0018      	movs	r0, r3
 8000d06:	f7ff fdde 	bl	80008c6 <LL_GPIO_SetPinSpeed>
 8000d0a:	2380      	movs	r3, #128	; 0x80
 8000d0c:	00d9      	lsls	r1, r3, #3
 8000d0e:	2390      	movs	r3, #144	; 0x90
 8000d10:	05db      	lsls	r3, r3, #23
 8000d12:	2202      	movs	r2, #2
 8000d14:	0018      	movs	r0, r3
 8000d16:	f7ff fdb9 	bl	800088c <LL_GPIO_SetPinMode>
 8000d1a:	2380      	movs	r3, #128	; 0x80
 8000d1c:	00d9      	lsls	r1, r3, #3
 8000d1e:	2390      	movs	r3, #144	; 0x90
 8000d20:	05db      	lsls	r3, r3, #23
 8000d22:	2201      	movs	r2, #1
 8000d24:	0018      	movs	r0, r3
 8000d26:	f7ff fdeb 	bl	8000900 <LL_GPIO_SetAFPin_8_15>
 8000d2a:	2380      	movs	r3, #128	; 0x80
 8000d2c:	00d9      	lsls	r1, r3, #3
 8000d2e:	2390      	movs	r3, #144	; 0x90
 8000d30:	05db      	lsls	r3, r3, #23
 8000d32:	2203      	movs	r2, #3
 8000d34:	0018      	movs	r0, r3
 8000d36:	f7ff fdc6 	bl	80008c6 <LL_GPIO_SetPinSpeed>
 8000d3a:	2380      	movs	r3, #128	; 0x80
 8000d3c:	01db      	lsls	r3, r3, #7
 8000d3e:	0018      	movs	r0, r3
 8000d40:	f7ff fd8e 	bl	8000860 <LL_APB1_GRP2_EnableClock>
 8000d44:	2000      	movs	r0, #0
 8000d46:	f7ff fcff 	bl	8000748 <LL_RCC_SetUSARTClockSource>
 8000d4a:	4b1e      	ldr	r3, [pc, #120]	; (8000dc4 <usart_config+0xf8>)
 8000d4c:	210c      	movs	r1, #12
 8000d4e:	0018      	movs	r0, r3
 8000d50:	f7ff fe46 	bl	80009e0 <LL_USART_SetTransferDirection>
 8000d54:	4b1b      	ldr	r3, [pc, #108]	; (8000dc4 <usart_config+0xf8>)
 8000d56:	2100      	movs	r1, #0
 8000d58:	0018      	movs	r0, r3
 8000d5a:	f7ff fe53 	bl	8000a04 <LL_USART_SetParity>
 8000d5e:	4b19      	ldr	r3, [pc, #100]	; (8000dc4 <usart_config+0xf8>)
 8000d60:	2100      	movs	r1, #0
 8000d62:	0018      	movs	r0, r3
 8000d64:	f7ff fe62 	bl	8000a2c <LL_USART_SetDataWidth>
 8000d68:	4b16      	ldr	r3, [pc, #88]	; (8000dc4 <usart_config+0xf8>)
 8000d6a:	2100      	movs	r1, #0
 8000d6c:	0018      	movs	r0, r3
 8000d6e:	f7ff fe71 	bl	8000a54 <LL_USART_SetStopBitsLength>
 8000d72:	4b14      	ldr	r3, [pc, #80]	; (8000dc4 <usart_config+0xf8>)
 8000d74:	2100      	movs	r1, #0
 8000d76:	0018      	movs	r0, r3
 8000d78:	f7ff fe80 	bl	8000a7c <LL_USART_SetTransferBitOrder>
 8000d7c:	4b12      	ldr	r3, [pc, #72]	; (8000dc8 <usart_config+0xfc>)
 8000d7e:	6819      	ldr	r1, [r3, #0]
 8000d80:	23e1      	movs	r3, #225	; 0xe1
 8000d82:	025b      	lsls	r3, r3, #9
 8000d84:	480f      	ldr	r0, [pc, #60]	; (8000dc4 <usart_config+0xf8>)
 8000d86:	2200      	movs	r2, #0
 8000d88:	f7ff fe8c 	bl	8000aa4 <LL_USART_SetBaudRate>
 8000d8c:	4b0d      	ldr	r3, [pc, #52]	; (8000dc4 <usart_config+0xf8>)
 8000d8e:	0018      	movs	r0, r3
 8000d90:	f7ff ff1e 	bl	8000bd0 <LL_USART_EnableIT_IDLE>
 8000d94:	4b0b      	ldr	r3, [pc, #44]	; (8000dc4 <usart_config+0xf8>)
 8000d96:	0018      	movs	r0, r3
 8000d98:	f7ff ff28 	bl	8000bec <LL_USART_EnableIT_RXNE>
 8000d9c:	4b09      	ldr	r3, [pc, #36]	; (8000dc4 <usart_config+0xf8>)
 8000d9e:	0018      	movs	r0, r3
 8000da0:	f7ff fe10 	bl	80009c4 <LL_USART_Enable>
 8000da4:	46c0      	nop			; (mov r8, r8)
 8000da6:	4b07      	ldr	r3, [pc, #28]	; (8000dc4 <usart_config+0xf8>)
 8000da8:	0018      	movs	r0, r3
 8000daa:	f7ff fee5 	bl	8000b78 <LL_USART_IsActiveFlag_TEACK>
 8000dae:	1e03      	subs	r3, r0, #0
 8000db0:	d0f9      	beq.n	8000da6 <usart_config+0xda>
 8000db2:	4b04      	ldr	r3, [pc, #16]	; (8000dc4 <usart_config+0xf8>)
 8000db4:	0018      	movs	r0, r3
 8000db6:	f7ff fef5 	bl	8000ba4 <LL_USART_IsActiveFlag_REACK>
 8000dba:	1e03      	subs	r3, r0, #0
 8000dbc:	d0f3      	beq.n	8000da6 <usart_config+0xda>
 8000dbe:	46c0      	nop			; (mov r8, r8)
 8000dc0:	46bd      	mov	sp, r7
 8000dc2:	bd80      	pop	{r7, pc}
 8000dc4:	40013800 	.word	0x40013800
 8000dc8:	20000488 	.word	0x20000488

08000dcc <systick_config>:
 8000dcc:	b580      	push	{r7, lr}
 8000dce:	af00      	add	r7, sp, #0
 8000dd0:	23fa      	movs	r3, #250	; 0xfa
 8000dd2:	009b      	lsls	r3, r3, #2
 8000dd4:	4a07      	ldr	r2, [pc, #28]	; (8000df4 <systick_config+0x28>)
 8000dd6:	0019      	movs	r1, r3
 8000dd8:	0010      	movs	r0, r2
 8000dda:	f7ff fdcb 	bl	8000974 <LL_InitTick>
 8000dde:	f7ff fde3 	bl	80009a8 <LL_SYSTICK_EnableIT>
 8000de2:	2301      	movs	r3, #1
 8000de4:	425b      	negs	r3, r3
 8000de6:	2100      	movs	r1, #0
 8000de8:	0018      	movs	r0, r3
 8000dea:	f7ff fbd7 	bl	800059c <NVIC_SetPriority>
 8000dee:	46c0      	nop			; (mov r8, r8)
 8000df0:	46bd      	mov	sp, r7
 8000df2:	bd80      	pop	{r7, pc}
 8000df4:	02dc6c00 	.word	0x02dc6c00

08000df8 <SysTick_Handler>:
 8000df8:	b580      	push	{r7, lr}
 8000dfa:	af00      	add	r7, sp, #0
 8000dfc:	4b1d      	ldr	r3, [pc, #116]	; (8000e74 <SysTick_Handler+0x7c>)
 8000dfe:	681b      	ldr	r3, [r3, #0]
 8000e00:	1c5a      	adds	r2, r3, #1
 8000e02:	4b1d      	ldr	r3, [pc, #116]	; (8000e78 <SysTick_Handler+0x80>)
 8000e04:	681b      	ldr	r3, [r3, #0]
 8000e06:	0019      	movs	r1, r3
 8000e08:	0010      	movs	r0, r2
 8000e0a:	f7ff fb15 	bl	8000438 <__aeabi_idivmod>
 8000e0e:	000b      	movs	r3, r1
 8000e10:	001a      	movs	r2, r3
 8000e12:	4b18      	ldr	r3, [pc, #96]	; (8000e74 <SysTick_Handler+0x7c>)
 8000e14:	601a      	str	r2, [r3, #0]
 8000e16:	4b17      	ldr	r3, [pc, #92]	; (8000e74 <SysTick_Handler+0x7c>)
 8000e18:	681b      	ldr	r3, [r3, #0]
 8000e1a:	2b00      	cmp	r3, #0
 8000e1c:	d127      	bne.n	8000e6e <SysTick_Handler+0x76>
 8000e1e:	4b17      	ldr	r3, [pc, #92]	; (8000e7c <SysTick_Handler+0x84>)
 8000e20:	681a      	ldr	r2, [r3, #0]
 8000e22:	4b17      	ldr	r3, [pc, #92]	; (8000e80 <SysTick_Handler+0x88>)
 8000e24:	681b      	ldr	r3, [r3, #0]
 8000e26:	009b      	lsls	r3, r3, #2
 8000e28:	411a      	asrs	r2, r3
 8000e2a:	0013      	movs	r3, r2
 8000e2c:	220f      	movs	r2, #15
 8000e2e:	401a      	ands	r2, r3
 8000e30:	4b14      	ldr	r3, [pc, #80]	; (8000e84 <SysTick_Handler+0x8c>)
 8000e32:	0092      	lsls	r2, r2, #2
 8000e34:	58d2      	ldr	r2, [r2, r3]
 8000e36:	4b12      	ldr	r3, [pc, #72]	; (8000e80 <SysTick_Handler+0x88>)
 8000e38:	681b      	ldr	r3, [r3, #0]
 8000e3a:	2103      	movs	r1, #3
 8000e3c:	1ac9      	subs	r1, r1, r3
 8000e3e:	4b12      	ldr	r3, [pc, #72]	; (8000e88 <SysTick_Handler+0x90>)
 8000e40:	0089      	lsls	r1, r1, #2
 8000e42:	58cb      	ldr	r3, [r1, r3]
 8000e44:	4313      	orrs	r3, r2
 8000e46:	001a      	movs	r2, r3
 8000e48:	4b10      	ldr	r3, [pc, #64]	; (8000e8c <SysTick_Handler+0x94>)
 8000e4a:	0011      	movs	r1, r2
 8000e4c:	0018      	movs	r0, r3
 8000e4e:	f7ff fd84 	bl	800095a <LL_GPIO_WriteOutputPort>
 8000e52:	4b0b      	ldr	r3, [pc, #44]	; (8000e80 <SysTick_Handler+0x88>)
 8000e54:	681b      	ldr	r3, [r3, #0]
 8000e56:	3301      	adds	r3, #1
 8000e58:	4a0d      	ldr	r2, [pc, #52]	; (8000e90 <SysTick_Handler+0x98>)
 8000e5a:	4013      	ands	r3, r2
 8000e5c:	d504      	bpl.n	8000e68 <SysTick_Handler+0x70>
 8000e5e:	3b01      	subs	r3, #1
 8000e60:	2204      	movs	r2, #4
 8000e62:	4252      	negs	r2, r2
 8000e64:	4313      	orrs	r3, r2
 8000e66:	3301      	adds	r3, #1
 8000e68:	001a      	movs	r2, r3
 8000e6a:	4b05      	ldr	r3, [pc, #20]	; (8000e80 <SysTick_Handler+0x88>)
 8000e6c:	601a      	str	r2, [r3, #0]
 8000e6e:	46c0      	nop			; (mov r8, r8)
 8000e70:	46bd      	mov	sp, r7
 8000e72:	bd80      	pop	{r7, pc}
 8000e74:	200004b8 	.word	0x200004b8
 8000e78:	20000480 	.word	0x20000480
 8000e7c:	20000484 	.word	0x20000484
 8000e80:	200004a8 	.word	0x200004a8
 8000e84:	20000430 	.word	0x20000430
 8000e88:	20000470 	.word	0x20000470
 8000e8c:	48000800 	.word	0x48000800
 8000e90:	80000003 	.word	0x80000003

08000e94 <usart_getc>:
 8000e94:	b580      	push	{r7, lr}
 8000e96:	af00      	add	r7, sp, #0
 8000e98:	46c0      	nop			; (mov r8, r8)
 8000e9a:	4b07      	ldr	r3, [pc, #28]	; (8000eb8 <usart_getc+0x24>)
 8000e9c:	0018      	movs	r0, r3
 8000e9e:	f7ff fe3b 	bl	8000b18 <LL_USART_IsActiveFlag_RXNE>
 8000ea2:	1e03      	subs	r3, r0, #0
 8000ea4:	d0f9      	beq.n	8000e9a <usart_getc+0x6>
 8000ea6:	4b04      	ldr	r3, [pc, #16]	; (8000eb8 <usart_getc+0x24>)
 8000ea8:	0018      	movs	r0, r3
 8000eaa:	f7ff fead 	bl	8000c08 <LL_USART_ReceiveData8>
 8000eae:	0003      	movs	r3, r0
 8000eb0:	0018      	movs	r0, r3
 8000eb2:	46bd      	mov	sp, r7
 8000eb4:	bd80      	pop	{r7, pc}
 8000eb6:	46c0      	nop			; (mov r8, r8)
 8000eb8:	40013800 	.word	0x40013800

08000ebc <usart_putc>:
 8000ebc:	b580      	push	{r7, lr}
 8000ebe:	b082      	sub	sp, #8
 8000ec0:	af00      	add	r7, sp, #0
 8000ec2:	0002      	movs	r2, r0
 8000ec4:	1dfb      	adds	r3, r7, #7
 8000ec6:	701a      	strb	r2, [r3, #0]
 8000ec8:	46c0      	nop			; (mov r8, r8)
 8000eca:	4b0c      	ldr	r3, [pc, #48]	; (8000efc <usart_putc+0x40>)
 8000ecc:	0018      	movs	r0, r3
 8000ece:	f7ff fe43 	bl	8000b58 <LL_USART_IsActiveFlag_TXE>
 8000ed2:	1e03      	subs	r3, r0, #0
 8000ed4:	d0f9      	beq.n	8000eca <usart_putc+0xe>
 8000ed6:	1dfb      	adds	r3, r7, #7
 8000ed8:	781b      	ldrb	r3, [r3, #0]
 8000eda:	4a08      	ldr	r2, [pc, #32]	; (8000efc <usart_putc+0x40>)
 8000edc:	0019      	movs	r1, r3
 8000ede:	0010      	movs	r0, r2
 8000ee0:	f7ff fe9e 	bl	8000c20 <LL_USART_TransmitData8>
 8000ee4:	46c0      	nop			; (mov r8, r8)
 8000ee6:	4b05      	ldr	r3, [pc, #20]	; (8000efc <usart_putc+0x40>)
 8000ee8:	0018      	movs	r0, r3
 8000eea:	f7ff fe25 	bl	8000b38 <LL_USART_IsActiveFlag_TC>
 8000eee:	1e03      	subs	r3, r0, #0
 8000ef0:	d0f9      	beq.n	8000ee6 <usart_putc+0x2a>
 8000ef2:	46c0      	nop			; (mov r8, r8)
 8000ef4:	46bd      	mov	sp, r7
 8000ef6:	b002      	add	sp, #8
 8000ef8:	bd80      	pop	{r7, pc}
 8000efa:	46c0      	nop			; (mov r8, r8)
 8000efc:	40013800 	.word	0x40013800

08000f00 <printf_config>:
 8000f00:	b580      	push	{r7, lr}
 8000f02:	af00      	add	r7, sp, #0
 8000f04:	4b04      	ldr	r3, [pc, #16]	; (8000f18 <printf_config+0x18>)
 8000f06:	4a05      	ldr	r2, [pc, #20]	; (8000f1c <printf_config+0x1c>)
 8000f08:	601a      	str	r2, [r3, #0]
 8000f0a:	4b05      	ldr	r3, [pc, #20]	; (8000f20 <printf_config+0x20>)
 8000f0c:	4a05      	ldr	r2, [pc, #20]	; (8000f24 <printf_config+0x24>)
 8000f0e:	601a      	str	r2, [r3, #0]
 8000f10:	46c0      	nop			; (mov r8, r8)
 8000f12:	46bd      	mov	sp, r7
 8000f14:	bd80      	pop	{r7, pc}
 8000f16:	46c0      	nop			; (mov r8, r8)
 8000f18:	200004c4 	.word	0x200004c4
 8000f1c:	08000ebd 	.word	0x08000ebd
 8000f20:	200004c0 	.word	0x200004c0
 8000f24:	08000e95 	.word	0x08000e95

08000f28 <main>:
 8000f28:	b580      	push	{r7, lr}
 8000f2a:	b082      	sub	sp, #8
 8000f2c:	af00      	add	r7, sp, #0
 8000f2e:	f7ff fe87 	bl	8000c40 <rcc_config>
 8000f32:	f7ff feb9 	bl	8000ca8 <gpio_config>
 8000f36:	f7ff fec9 	bl	8000ccc <usart_config>
 8000f3a:	f7ff ff47 	bl	8000dcc <systick_config>
 8000f3e:	f7ff ffdf 	bl	8000f00 <printf_config>
 8000f42:	4b0a      	ldr	r3, [pc, #40]	; (8000f6c <main+0x44>)
 8000f44:	0018      	movs	r0, r3
 8000f46:	f000 fa35 	bl	80013b4 <xprintf>
 8000f4a:	4b09      	ldr	r3, [pc, #36]	; (8000f70 <main+0x48>)
 8000f4c:	607b      	str	r3, [r7, #4]
 8000f4e:	4b08      	ldr	r3, [pc, #32]	; (8000f70 <main+0x48>)
 8000f50:	607b      	str	r3, [r7, #4]
 8000f52:	4b07      	ldr	r3, [pc, #28]	; (8000f70 <main+0x48>)
 8000f54:	210a      	movs	r1, #10
 8000f56:	0018      	movs	r0, r3
 8000f58:	f000 fa40 	bl	80013dc <xgets>
 8000f5c:	4a05      	ldr	r2, [pc, #20]	; (8000f74 <main+0x4c>)
 8000f5e:	1d3b      	adds	r3, r7, #4
 8000f60:	0011      	movs	r1, r2
 8000f62:	0018      	movs	r0, r3
 8000f64:	f000 fa8a 	bl	800147c <xatoi>
 8000f68:	e7f1      	b.n	8000f4e <main+0x26>
 8000f6a:	46c0      	nop			; (mov r8, r8)
 8000f6c:	08001668 	.word	0x08001668
 8000f70:	200004ac 	.word	0x200004ac
 8000f74:	20000484 	.word	0x20000484

08000f78 <SystemInit>:
 8000f78:	b580      	push	{r7, lr}
 8000f7a:	af00      	add	r7, sp, #0
 8000f7c:	4b1a      	ldr	r3, [pc, #104]	; (8000fe8 <SystemInit+0x70>)
 8000f7e:	4a1a      	ldr	r2, [pc, #104]	; (8000fe8 <SystemInit+0x70>)
 8000f80:	6812      	ldr	r2, [r2, #0]
 8000f82:	2101      	movs	r1, #1
 8000f84:	430a      	orrs	r2, r1
 8000f86:	601a      	str	r2, [r3, #0]
 8000f88:	4b17      	ldr	r3, [pc, #92]	; (8000fe8 <SystemInit+0x70>)
 8000f8a:	4a17      	ldr	r2, [pc, #92]	; (8000fe8 <SystemInit+0x70>)
 8000f8c:	6852      	ldr	r2, [r2, #4]
 8000f8e:	4917      	ldr	r1, [pc, #92]	; (8000fec <SystemInit+0x74>)
 8000f90:	400a      	ands	r2, r1
 8000f92:	605a      	str	r2, [r3, #4]
 8000f94:	4b14      	ldr	r3, [pc, #80]	; (8000fe8 <SystemInit+0x70>)
 8000f96:	4a14      	ldr	r2, [pc, #80]	; (8000fe8 <SystemInit+0x70>)
 8000f98:	6812      	ldr	r2, [r2, #0]
 8000f9a:	4915      	ldr	r1, [pc, #84]	; (8000ff0 <SystemInit+0x78>)
 8000f9c:	400a      	ands	r2, r1
 8000f9e:	601a      	str	r2, [r3, #0]
 8000fa0:	4b11      	ldr	r3, [pc, #68]	; (8000fe8 <SystemInit+0x70>)
 8000fa2:	4a11      	ldr	r2, [pc, #68]	; (8000fe8 <SystemInit+0x70>)
 8000fa4:	6812      	ldr	r2, [r2, #0]
 8000fa6:	4913      	ldr	r1, [pc, #76]	; (8000ff4 <SystemInit+0x7c>)
 8000fa8:	400a      	ands	r2, r1
 8000faa:	601a      	str	r2, [r3, #0]
 8000fac:	4b0e      	ldr	r3, [pc, #56]	; (8000fe8 <SystemInit+0x70>)
 8000fae:	4a0e      	ldr	r2, [pc, #56]	; (8000fe8 <SystemInit+0x70>)
 8000fb0:	6852      	ldr	r2, [r2, #4]
 8000fb2:	4911      	ldr	r1, [pc, #68]	; (8000ff8 <SystemInit+0x80>)
 8000fb4:	400a      	ands	r2, r1
 8000fb6:	605a      	str	r2, [r3, #4]
 8000fb8:	4b0b      	ldr	r3, [pc, #44]	; (8000fe8 <SystemInit+0x70>)
 8000fba:	4a0b      	ldr	r2, [pc, #44]	; (8000fe8 <SystemInit+0x70>)
 8000fbc:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000fbe:	210f      	movs	r1, #15
 8000fc0:	438a      	bics	r2, r1
 8000fc2:	62da      	str	r2, [r3, #44]	; 0x2c
 8000fc4:	4b08      	ldr	r3, [pc, #32]	; (8000fe8 <SystemInit+0x70>)
 8000fc6:	4a08      	ldr	r2, [pc, #32]	; (8000fe8 <SystemInit+0x70>)
 8000fc8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000fca:	490c      	ldr	r1, [pc, #48]	; (8000ffc <SystemInit+0x84>)
 8000fcc:	400a      	ands	r2, r1
 8000fce:	631a      	str	r2, [r3, #48]	; 0x30
 8000fd0:	4b05      	ldr	r3, [pc, #20]	; (8000fe8 <SystemInit+0x70>)
 8000fd2:	4a05      	ldr	r2, [pc, #20]	; (8000fe8 <SystemInit+0x70>)
 8000fd4:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8000fd6:	2101      	movs	r1, #1
 8000fd8:	438a      	bics	r2, r1
 8000fda:	635a      	str	r2, [r3, #52]	; 0x34
 8000fdc:	4b02      	ldr	r3, [pc, #8]	; (8000fe8 <SystemInit+0x70>)
 8000fde:	2200      	movs	r2, #0
 8000fe0:	609a      	str	r2, [r3, #8]
 8000fe2:	46c0      	nop			; (mov r8, r8)
 8000fe4:	46bd      	mov	sp, r7
 8000fe6:	bd80      	pop	{r7, pc}
 8000fe8:	40021000 	.word	0x40021000
 8000fec:	f8ffb80c 	.word	0xf8ffb80c
 8000ff0:	fef6ffff 	.word	0xfef6ffff
 8000ff4:	fffbffff 	.word	0xfffbffff
 8000ff8:	ffc0ffff 	.word	0xffc0ffff
 8000ffc:	fffffeac 	.word	0xfffffeac

08001000 <NMI_Handler>:
 8001000:	b580      	push	{r7, lr}
 8001002:	af00      	add	r7, sp, #0
 8001004:	46c0      	nop			; (mov r8, r8)
 8001006:	46bd      	mov	sp, r7
 8001008:	bd80      	pop	{r7, pc}
 800100a:	46c0      	nop			; (mov r8, r8)

0800100c <HardFault_Handler>:
 800100c:	b580      	push	{r7, lr}
 800100e:	af00      	add	r7, sp, #0
 8001010:	e7fe      	b.n	8001010 <HardFault_Handler+0x4>
 8001012:	46c0      	nop			; (mov r8, r8)

08001014 <SVC_Handler>:
 8001014:	b580      	push	{r7, lr}
 8001016:	af00      	add	r7, sp, #0
 8001018:	46c0      	nop			; (mov r8, r8)
 800101a:	46bd      	mov	sp, r7
 800101c:	bd80      	pop	{r7, pc}
 800101e:	46c0      	nop			; (mov r8, r8)

08001020 <PendSV_Handler>:
 8001020:	b580      	push	{r7, lr}
 8001022:	af00      	add	r7, sp, #0
 8001024:	46c0      	nop			; (mov r8, r8)
 8001026:	46bd      	mov	sp, r7
 8001028:	bd80      	pop	{r7, pc}
 800102a:	46c0      	nop			; (mov r8, r8)

0800102c <xputc>:
 800102c:	b580      	push	{r7, lr}
 800102e:	b082      	sub	sp, #8
 8001030:	af00      	add	r7, sp, #0
 8001032:	0002      	movs	r2, r0
 8001034:	1dfb      	adds	r3, r7, #7
 8001036:	701a      	strb	r2, [r3, #0]
 8001038:	1dfb      	adds	r3, r7, #7
 800103a:	781b      	ldrb	r3, [r3, #0]
 800103c:	2b0a      	cmp	r3, #10
 800103e:	d102      	bne.n	8001046 <xputc+0x1a>
 8001040:	200d      	movs	r0, #13
 8001042:	f7ff fff3 	bl	800102c <xputc>
 8001046:	4b0d      	ldr	r3, [pc, #52]	; (800107c <xputc+0x50>)
 8001048:	681b      	ldr	r3, [r3, #0]
 800104a:	2b00      	cmp	r3, #0
 800104c:	d008      	beq.n	8001060 <xputc+0x34>
 800104e:	4b0b      	ldr	r3, [pc, #44]	; (800107c <xputc+0x50>)
 8001050:	681b      	ldr	r3, [r3, #0]
 8001052:	1c59      	adds	r1, r3, #1
 8001054:	4a09      	ldr	r2, [pc, #36]	; (800107c <xputc+0x50>)
 8001056:	6011      	str	r1, [r2, #0]
 8001058:	1dfa      	adds	r2, r7, #7
 800105a:	7812      	ldrb	r2, [r2, #0]
 800105c:	701a      	strb	r2, [r3, #0]
 800105e:	e009      	b.n	8001074 <xputc+0x48>
 8001060:	4b07      	ldr	r3, [pc, #28]	; (8001080 <xputc+0x54>)
 8001062:	681b      	ldr	r3, [r3, #0]
 8001064:	2b00      	cmp	r3, #0
 8001066:	d005      	beq.n	8001074 <xputc+0x48>
 8001068:	4b05      	ldr	r3, [pc, #20]	; (8001080 <xputc+0x54>)
 800106a:	681b      	ldr	r3, [r3, #0]
 800106c:	1dfa      	adds	r2, r7, #7
 800106e:	7812      	ldrb	r2, [r2, #0]
 8001070:	0010      	movs	r0, r2
 8001072:	4798      	blx	r3
 8001074:	46bd      	mov	sp, r7
 8001076:	b002      	add	sp, #8
 8001078:	bd80      	pop	{r7, pc}
 800107a:	46c0      	nop			; (mov r8, r8)
 800107c:	200004bc 	.word	0x200004bc
 8001080:	200004c4 	.word	0x200004c4

08001084 <xputs>:
 8001084:	b580      	push	{r7, lr}
 8001086:	b082      	sub	sp, #8
 8001088:	af00      	add	r7, sp, #0
 800108a:	6078      	str	r0, [r7, #4]
 800108c:	e006      	b.n	800109c <xputs+0x18>
 800108e:	687b      	ldr	r3, [r7, #4]
 8001090:	1c5a      	adds	r2, r3, #1
 8001092:	607a      	str	r2, [r7, #4]
 8001094:	781b      	ldrb	r3, [r3, #0]
 8001096:	0018      	movs	r0, r3
 8001098:	f7ff ffc8 	bl	800102c <xputc>
 800109c:	687b      	ldr	r3, [r7, #4]
 800109e:	781b      	ldrb	r3, [r3, #0]
 80010a0:	2b00      	cmp	r3, #0
 80010a2:	d1f4      	bne.n	800108e <xputs+0xa>
 80010a4:	46c0      	nop			; (mov r8, r8)
 80010a6:	46bd      	mov	sp, r7
 80010a8:	b002      	add	sp, #8
 80010aa:	bd80      	pop	{r7, pc}

080010ac <xvprintf>:
 80010ac:	b590      	push	{r4, r7, lr}
 80010ae:	b093      	sub	sp, #76	; 0x4c
 80010b0:	af00      	add	r7, sp, #0
 80010b2:	6078      	str	r0, [r7, #4]
 80010b4:	6039      	str	r1, [r7, #0]
 80010b6:	687b      	ldr	r3, [r7, #4]
 80010b8:	1c5a      	adds	r2, r3, #1
 80010ba:	607a      	str	r2, [r7, #4]
 80010bc:	2133      	movs	r1, #51	; 0x33
 80010be:	187a      	adds	r2, r7, r1
 80010c0:	781b      	ldrb	r3, [r3, #0]
 80010c2:	7013      	strb	r3, [r2, #0]
 80010c4:	000a      	movs	r2, r1
 80010c6:	18bb      	adds	r3, r7, r2
 80010c8:	781b      	ldrb	r3, [r3, #0]
 80010ca:	2b00      	cmp	r3, #0
 80010cc:	d100      	bne.n	80010d0 <xvprintf+0x24>
 80010ce:	e167      	b.n	80013a0 <xvprintf+0x2f4>
 80010d0:	18bb      	adds	r3, r7, r2
 80010d2:	781b      	ldrb	r3, [r3, #0]
 80010d4:	2b25      	cmp	r3, #37	; 0x25
 80010d6:	d005      	beq.n	80010e4 <xvprintf+0x38>
 80010d8:	18bb      	adds	r3, r7, r2
 80010da:	781b      	ldrb	r3, [r3, #0]
 80010dc:	0018      	movs	r0, r3
 80010de:	f7ff ffa5 	bl	800102c <xputc>
 80010e2:	e15c      	b.n	800139e <xvprintf+0x2f2>
 80010e4:	2300      	movs	r3, #0
 80010e6:	637b      	str	r3, [r7, #52]	; 0x34
 80010e8:	687b      	ldr	r3, [r7, #4]
 80010ea:	1c5a      	adds	r2, r3, #1
 80010ec:	607a      	str	r2, [r7, #4]
 80010ee:	2133      	movs	r1, #51	; 0x33
 80010f0:	187a      	adds	r2, r7, r1
 80010f2:	781b      	ldrb	r3, [r3, #0]
 80010f4:	7013      	strb	r3, [r2, #0]
 80010f6:	187b      	adds	r3, r7, r1
 80010f8:	781b      	ldrb	r3, [r3, #0]
 80010fa:	2b30      	cmp	r3, #48	; 0x30
 80010fc:	d108      	bne.n	8001110 <xvprintf+0x64>
 80010fe:	2301      	movs	r3, #1
 8001100:	637b      	str	r3, [r7, #52]	; 0x34
 8001102:	687b      	ldr	r3, [r7, #4]
 8001104:	1c5a      	adds	r2, r3, #1
 8001106:	607a      	str	r2, [r7, #4]
 8001108:	187a      	adds	r2, r7, r1
 800110a:	781b      	ldrb	r3, [r3, #0]
 800110c:	7013      	strb	r3, [r2, #0]
 800110e:	e00c      	b.n	800112a <xvprintf+0x7e>
 8001110:	2133      	movs	r1, #51	; 0x33
 8001112:	187b      	adds	r3, r7, r1
 8001114:	781b      	ldrb	r3, [r3, #0]
 8001116:	2b2d      	cmp	r3, #45	; 0x2d
 8001118:	d107      	bne.n	800112a <xvprintf+0x7e>
 800111a:	2302      	movs	r3, #2
 800111c:	637b      	str	r3, [r7, #52]	; 0x34
 800111e:	687b      	ldr	r3, [r7, #4]
 8001120:	1c5a      	adds	r2, r3, #1
 8001122:	607a      	str	r2, [r7, #4]
 8001124:	187a      	adds	r2, r7, r1
 8001126:	781b      	ldrb	r3, [r3, #0]
 8001128:	7013      	strb	r3, [r2, #0]
 800112a:	2300      	movs	r3, #0
 800112c:	63bb      	str	r3, [r7, #56]	; 0x38
 800112e:	e011      	b.n	8001154 <xvprintf+0xa8>
 8001130:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001132:	0013      	movs	r3, r2
 8001134:	009b      	lsls	r3, r3, #2
 8001136:	189b      	adds	r3, r3, r2
 8001138:	005b      	lsls	r3, r3, #1
 800113a:	001a      	movs	r2, r3
 800113c:	2133      	movs	r1, #51	; 0x33
 800113e:	187b      	adds	r3, r7, r1
 8001140:	781b      	ldrb	r3, [r3, #0]
 8001142:	18d3      	adds	r3, r2, r3
 8001144:	3b30      	subs	r3, #48	; 0x30
 8001146:	63bb      	str	r3, [r7, #56]	; 0x38
 8001148:	687b      	ldr	r3, [r7, #4]
 800114a:	1c5a      	adds	r2, r3, #1
 800114c:	607a      	str	r2, [r7, #4]
 800114e:	187a      	adds	r2, r7, r1
 8001150:	781b      	ldrb	r3, [r3, #0]
 8001152:	7013      	strb	r3, [r2, #0]
 8001154:	2233      	movs	r2, #51	; 0x33
 8001156:	18bb      	adds	r3, r7, r2
 8001158:	781b      	ldrb	r3, [r3, #0]
 800115a:	2b2f      	cmp	r3, #47	; 0x2f
 800115c:	d903      	bls.n	8001166 <xvprintf+0xba>
 800115e:	18bb      	adds	r3, r7, r2
 8001160:	781b      	ldrb	r3, [r3, #0]
 8001162:	2b39      	cmp	r3, #57	; 0x39
 8001164:	d9e4      	bls.n	8001130 <xvprintf+0x84>
 8001166:	2233      	movs	r2, #51	; 0x33
 8001168:	18bb      	adds	r3, r7, r2
 800116a:	781b      	ldrb	r3, [r3, #0]
 800116c:	2b6c      	cmp	r3, #108	; 0x6c
 800116e:	d003      	beq.n	8001178 <xvprintf+0xcc>
 8001170:	18bb      	adds	r3, r7, r2
 8001172:	781b      	ldrb	r3, [r3, #0]
 8001174:	2b4c      	cmp	r3, #76	; 0x4c
 8001176:	d10a      	bne.n	800118e <xvprintf+0xe2>
 8001178:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800117a:	2204      	movs	r2, #4
 800117c:	4313      	orrs	r3, r2
 800117e:	637b      	str	r3, [r7, #52]	; 0x34
 8001180:	687b      	ldr	r3, [r7, #4]
 8001182:	1c5a      	adds	r2, r3, #1
 8001184:	607a      	str	r2, [r7, #4]
 8001186:	2233      	movs	r2, #51	; 0x33
 8001188:	18ba      	adds	r2, r7, r2
 800118a:	781b      	ldrb	r3, [r3, #0]
 800118c:	7013      	strb	r3, [r2, #0]
 800118e:	2233      	movs	r2, #51	; 0x33
 8001190:	18bb      	adds	r3, r7, r2
 8001192:	781b      	ldrb	r3, [r3, #0]
 8001194:	2b00      	cmp	r3, #0
 8001196:	d100      	bne.n	800119a <xvprintf+0xee>
 8001198:	e104      	b.n	80013a4 <xvprintf+0x2f8>
 800119a:	2132      	movs	r1, #50	; 0x32
 800119c:	187b      	adds	r3, r7, r1
 800119e:	18ba      	adds	r2, r7, r2
 80011a0:	7812      	ldrb	r2, [r2, #0]
 80011a2:	701a      	strb	r2, [r3, #0]
 80011a4:	187b      	adds	r3, r7, r1
 80011a6:	781b      	ldrb	r3, [r3, #0]
 80011a8:	2b60      	cmp	r3, #96	; 0x60
 80011aa:	d904      	bls.n	80011b6 <xvprintf+0x10a>
 80011ac:	187b      	adds	r3, r7, r1
 80011ae:	187a      	adds	r2, r7, r1
 80011b0:	7812      	ldrb	r2, [r2, #0]
 80011b2:	3a20      	subs	r2, #32
 80011b4:	701a      	strb	r2, [r3, #0]
 80011b6:	2332      	movs	r3, #50	; 0x32
 80011b8:	18fb      	adds	r3, r7, r3
 80011ba:	781b      	ldrb	r3, [r3, #0]
 80011bc:	3b42      	subs	r3, #66	; 0x42
 80011be:	2b16      	cmp	r3, #22
 80011c0:	d847      	bhi.n	8001252 <xvprintf+0x1a6>
 80011c2:	009a      	lsls	r2, r3, #2
 80011c4:	4b7a      	ldr	r3, [pc, #488]	; (80013b0 <xvprintf+0x304>)
 80011c6:	18d3      	adds	r3, r2, r3
 80011c8:	681b      	ldr	r3, [r3, #0]
 80011ca:	469f      	mov	pc, r3
 80011cc:	683b      	ldr	r3, [r7, #0]
 80011ce:	1d1a      	adds	r2, r3, #4
 80011d0:	603a      	str	r2, [r7, #0]
 80011d2:	681b      	ldr	r3, [r3, #0]
 80011d4:	627b      	str	r3, [r7, #36]	; 0x24
 80011d6:	2300      	movs	r3, #0
 80011d8:	63fb      	str	r3, [r7, #60]	; 0x3c
 80011da:	e002      	b.n	80011e2 <xvprintf+0x136>
 80011dc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80011de:	3301      	adds	r3, #1
 80011e0:	63fb      	str	r3, [r7, #60]	; 0x3c
 80011e2:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80011e4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80011e6:	18d3      	adds	r3, r2, r3
 80011e8:	781b      	ldrb	r3, [r3, #0]
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	d1f6      	bne.n	80011dc <xvprintf+0x130>
 80011ee:	e002      	b.n	80011f6 <xvprintf+0x14a>
 80011f0:	2020      	movs	r0, #32
 80011f2:	f7ff ff1b 	bl	800102c <xputc>
 80011f6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80011f8:	2202      	movs	r2, #2
 80011fa:	4013      	ands	r3, r2
 80011fc:	d105      	bne.n	800120a <xvprintf+0x15e>
 80011fe:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001200:	1c5a      	adds	r2, r3, #1
 8001202:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001204:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001206:	429a      	cmp	r2, r3
 8001208:	d8f2      	bhi.n	80011f0 <xvprintf+0x144>
 800120a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800120c:	0018      	movs	r0, r3
 800120e:	f7ff ff39 	bl	8001084 <xputs>
 8001212:	e002      	b.n	800121a <xvprintf+0x16e>
 8001214:	2020      	movs	r0, #32
 8001216:	f7ff ff09 	bl	800102c <xputc>
 800121a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800121c:	1c5a      	adds	r2, r3, #1
 800121e:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001220:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001222:	429a      	cmp	r2, r3
 8001224:	d8f6      	bhi.n	8001214 <xvprintf+0x168>
 8001226:	e0ba      	b.n	800139e <xvprintf+0x2f2>
 8001228:	683b      	ldr	r3, [r7, #0]
 800122a:	1d1a      	adds	r2, r3, #4
 800122c:	603a      	str	r2, [r7, #0]
 800122e:	681b      	ldr	r3, [r3, #0]
 8001230:	b2db      	uxtb	r3, r3
 8001232:	0018      	movs	r0, r3
 8001234:	f7ff fefa 	bl	800102c <xputc>
 8001238:	e0b1      	b.n	800139e <xvprintf+0x2f2>
 800123a:	2302      	movs	r3, #2
 800123c:	647b      	str	r3, [r7, #68]	; 0x44
 800123e:	e00f      	b.n	8001260 <xvprintf+0x1b4>
 8001240:	2308      	movs	r3, #8
 8001242:	647b      	str	r3, [r7, #68]	; 0x44
 8001244:	e00c      	b.n	8001260 <xvprintf+0x1b4>
 8001246:	230a      	movs	r3, #10
 8001248:	647b      	str	r3, [r7, #68]	; 0x44
 800124a:	e009      	b.n	8001260 <xvprintf+0x1b4>
 800124c:	2310      	movs	r3, #16
 800124e:	647b      	str	r3, [r7, #68]	; 0x44
 8001250:	e006      	b.n	8001260 <xvprintf+0x1b4>
 8001252:	2333      	movs	r3, #51	; 0x33
 8001254:	18fb      	adds	r3, r7, r3
 8001256:	781b      	ldrb	r3, [r3, #0]
 8001258:	0018      	movs	r0, r3
 800125a:	f7ff fee7 	bl	800102c <xputc>
 800125e:	e09e      	b.n	800139e <xvprintf+0x2f2>
 8001260:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001262:	2204      	movs	r2, #4
 8001264:	4013      	ands	r3, r2
 8001266:	d005      	beq.n	8001274 <xvprintf+0x1c8>
 8001268:	683b      	ldr	r3, [r7, #0]
 800126a:	1d1a      	adds	r2, r3, #4
 800126c:	603a      	str	r2, [r7, #0]
 800126e:	681b      	ldr	r3, [r3, #0]
 8001270:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001272:	e00e      	b.n	8001292 <xvprintf+0x1e6>
 8001274:	2332      	movs	r3, #50	; 0x32
 8001276:	18fb      	adds	r3, r7, r3
 8001278:	781b      	ldrb	r3, [r3, #0]
 800127a:	2b44      	cmp	r3, #68	; 0x44
 800127c:	d104      	bne.n	8001288 <xvprintf+0x1dc>
 800127e:	683b      	ldr	r3, [r7, #0]
 8001280:	1d1a      	adds	r2, r3, #4
 8001282:	603a      	str	r2, [r7, #0]
 8001284:	681b      	ldr	r3, [r3, #0]
 8001286:	e003      	b.n	8001290 <xvprintf+0x1e4>
 8001288:	683b      	ldr	r3, [r7, #0]
 800128a:	1d1a      	adds	r2, r3, #4
 800128c:	603a      	str	r2, [r7, #0]
 800128e:	681b      	ldr	r3, [r3, #0]
 8001290:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001292:	2332      	movs	r3, #50	; 0x32
 8001294:	18fb      	adds	r3, r7, r3
 8001296:	781b      	ldrb	r3, [r3, #0]
 8001298:	2b44      	cmp	r3, #68	; 0x44
 800129a:	d109      	bne.n	80012b0 <xvprintf+0x204>
 800129c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800129e:	2b00      	cmp	r3, #0
 80012a0:	da06      	bge.n	80012b0 <xvprintf+0x204>
 80012a2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80012a4:	425b      	negs	r3, r3
 80012a6:	62fb      	str	r3, [r7, #44]	; 0x2c
 80012a8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80012aa:	2210      	movs	r2, #16
 80012ac:	4313      	orrs	r3, r2
 80012ae:	637b      	str	r3, [r7, #52]	; 0x34
 80012b0:	2300      	movs	r3, #0
 80012b2:	643b      	str	r3, [r7, #64]	; 0x40
 80012b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80012b6:	62bb      	str	r3, [r7, #40]	; 0x28
 80012b8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80012ba:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80012bc:	0018      	movs	r0, r3
 80012be:	f7fe ffd1 	bl	8000264 <__aeabi_uidivmod>
 80012c2:	000b      	movs	r3, r1
 80012c4:	001a      	movs	r2, r3
 80012c6:	2432      	movs	r4, #50	; 0x32
 80012c8:	193b      	adds	r3, r7, r4
 80012ca:	701a      	strb	r2, [r3, #0]
 80012cc:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80012ce:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80012d0:	f7fe ff42 	bl	8000158 <__udivsi3>
 80012d4:	0003      	movs	r3, r0
 80012d6:	62bb      	str	r3, [r7, #40]	; 0x28
 80012d8:	193b      	adds	r3, r7, r4
 80012da:	781b      	ldrb	r3, [r3, #0]
 80012dc:	2b09      	cmp	r3, #9
 80012de:	d90d      	bls.n	80012fc <xvprintf+0x250>
 80012e0:	2333      	movs	r3, #51	; 0x33
 80012e2:	18fb      	adds	r3, r7, r3
 80012e4:	781b      	ldrb	r3, [r3, #0]
 80012e6:	2b78      	cmp	r3, #120	; 0x78
 80012e8:	d101      	bne.n	80012ee <xvprintf+0x242>
 80012ea:	2327      	movs	r3, #39	; 0x27
 80012ec:	e000      	b.n	80012f0 <xvprintf+0x244>
 80012ee:	2307      	movs	r3, #7
 80012f0:	2132      	movs	r1, #50	; 0x32
 80012f2:	187a      	adds	r2, r7, r1
 80012f4:	1879      	adds	r1, r7, r1
 80012f6:	7809      	ldrb	r1, [r1, #0]
 80012f8:	185b      	adds	r3, r3, r1
 80012fa:	7013      	strb	r3, [r2, #0]
 80012fc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80012fe:	1c5a      	adds	r2, r3, #1
 8001300:	643a      	str	r2, [r7, #64]	; 0x40
 8001302:	2232      	movs	r2, #50	; 0x32
 8001304:	18ba      	adds	r2, r7, r2
 8001306:	7812      	ldrb	r2, [r2, #0]
 8001308:	3230      	adds	r2, #48	; 0x30
 800130a:	b2d1      	uxtb	r1, r2
 800130c:	220c      	movs	r2, #12
 800130e:	18ba      	adds	r2, r7, r2
 8001310:	54d1      	strb	r1, [r2, r3]
 8001312:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001314:	2b00      	cmp	r3, #0
 8001316:	d002      	beq.n	800131e <xvprintf+0x272>
 8001318:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800131a:	2b17      	cmp	r3, #23
 800131c:	d9cc      	bls.n	80012b8 <xvprintf+0x20c>
 800131e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001320:	2210      	movs	r2, #16
 8001322:	4013      	ands	r3, r2
 8001324:	d006      	beq.n	8001334 <xvprintf+0x288>
 8001326:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001328:	1c5a      	adds	r2, r3, #1
 800132a:	643a      	str	r2, [r7, #64]	; 0x40
 800132c:	220c      	movs	r2, #12
 800132e:	18ba      	adds	r2, r7, r2
 8001330:	212d      	movs	r1, #45	; 0x2d
 8001332:	54d1      	strb	r1, [r2, r3]
 8001334:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001336:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001338:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800133a:	2201      	movs	r2, #1
 800133c:	4013      	ands	r3, r2
 800133e:	d001      	beq.n	8001344 <xvprintf+0x298>
 8001340:	2230      	movs	r2, #48	; 0x30
 8001342:	e000      	b.n	8001346 <xvprintf+0x29a>
 8001344:	2220      	movs	r2, #32
 8001346:	2332      	movs	r3, #50	; 0x32
 8001348:	18fb      	adds	r3, r7, r3
 800134a:	701a      	strb	r2, [r3, #0]
 800134c:	e005      	b.n	800135a <xvprintf+0x2ae>
 800134e:	2332      	movs	r3, #50	; 0x32
 8001350:	18fb      	adds	r3, r7, r3
 8001352:	781b      	ldrb	r3, [r3, #0]
 8001354:	0018      	movs	r0, r3
 8001356:	f7ff fe69 	bl	800102c <xputc>
 800135a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800135c:	2202      	movs	r2, #2
 800135e:	4013      	ands	r3, r2
 8001360:	d105      	bne.n	800136e <xvprintf+0x2c2>
 8001362:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001364:	1c5a      	adds	r2, r3, #1
 8001366:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001368:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800136a:	429a      	cmp	r2, r3
 800136c:	d8ef      	bhi.n	800134e <xvprintf+0x2a2>
 800136e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001370:	3b01      	subs	r3, #1
 8001372:	643b      	str	r3, [r7, #64]	; 0x40
 8001374:	230c      	movs	r3, #12
 8001376:	18fa      	adds	r2, r7, r3
 8001378:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800137a:	18d3      	adds	r3, r2, r3
 800137c:	781b      	ldrb	r3, [r3, #0]
 800137e:	0018      	movs	r0, r3
 8001380:	f7ff fe54 	bl	800102c <xputc>
 8001384:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001386:	2b00      	cmp	r3, #0
 8001388:	d1f1      	bne.n	800136e <xvprintf+0x2c2>
 800138a:	e002      	b.n	8001392 <xvprintf+0x2e6>
 800138c:	2020      	movs	r0, #32
 800138e:	f7ff fe4d 	bl	800102c <xputc>
 8001392:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001394:	1c5a      	adds	r2, r3, #1
 8001396:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001398:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800139a:	429a      	cmp	r2, r3
 800139c:	d8f6      	bhi.n	800138c <xvprintf+0x2e0>
 800139e:	e68a      	b.n	80010b6 <xvprintf+0xa>
 80013a0:	46c0      	nop			; (mov r8, r8)
 80013a2:	e000      	b.n	80013a6 <xvprintf+0x2fa>
 80013a4:	46c0      	nop			; (mov r8, r8)
 80013a6:	46c0      	nop			; (mov r8, r8)
 80013a8:	46bd      	mov	sp, r7
 80013aa:	b013      	add	sp, #76	; 0x4c
 80013ac:	bd90      	pop	{r4, r7, pc}
 80013ae:	46c0      	nop			; (mov r8, r8)
 80013b0:	08001678 	.word	0x08001678

080013b4 <xprintf>:
 80013b4:	b40f      	push	{r0, r1, r2, r3}
 80013b6:	b580      	push	{r7, lr}
 80013b8:	b082      	sub	sp, #8
 80013ba:	af00      	add	r7, sp, #0
 80013bc:	2314      	movs	r3, #20
 80013be:	18fb      	adds	r3, r7, r3
 80013c0:	607b      	str	r3, [r7, #4]
 80013c2:	687a      	ldr	r2, [r7, #4]
 80013c4:	693b      	ldr	r3, [r7, #16]
 80013c6:	0011      	movs	r1, r2
 80013c8:	0018      	movs	r0, r3
 80013ca:	f7ff fe6f 	bl	80010ac <xvprintf>
 80013ce:	46c0      	nop			; (mov r8, r8)
 80013d0:	46bd      	mov	sp, r7
 80013d2:	b002      	add	sp, #8
 80013d4:	bc80      	pop	{r7}
 80013d6:	bc08      	pop	{r3}
 80013d8:	b004      	add	sp, #16
 80013da:	4718      	bx	r3

080013dc <xgets>:
 80013dc:	b580      	push	{r7, lr}
 80013de:	b084      	sub	sp, #16
 80013e0:	af00      	add	r7, sp, #0
 80013e2:	6078      	str	r0, [r7, #4]
 80013e4:	6039      	str	r1, [r7, #0]
 80013e6:	4b24      	ldr	r3, [pc, #144]	; (8001478 <xgets+0x9c>)
 80013e8:	681b      	ldr	r3, [r3, #0]
 80013ea:	2b00      	cmp	r3, #0
 80013ec:	d101      	bne.n	80013f2 <xgets+0x16>
 80013ee:	2300      	movs	r3, #0
 80013f0:	e03e      	b.n	8001470 <xgets+0x94>
 80013f2:	2300      	movs	r3, #0
 80013f4:	60fb      	str	r3, [r7, #12]
 80013f6:	4b20      	ldr	r3, [pc, #128]	; (8001478 <xgets+0x9c>)
 80013f8:	681b      	ldr	r3, [r3, #0]
 80013fa:	4798      	blx	r3
 80013fc:	0003      	movs	r3, r0
 80013fe:	60bb      	str	r3, [r7, #8]
 8001400:	68bb      	ldr	r3, [r7, #8]
 8001402:	2b00      	cmp	r3, #0
 8001404:	d101      	bne.n	800140a <xgets+0x2e>
 8001406:	2300      	movs	r3, #0
 8001408:	e032      	b.n	8001470 <xgets+0x94>
 800140a:	68bb      	ldr	r3, [r7, #8]
 800140c:	2b0a      	cmp	r3, #10
 800140e:	d025      	beq.n	800145c <xgets+0x80>
 8001410:	68bb      	ldr	r3, [r7, #8]
 8001412:	2b08      	cmp	r3, #8
 8001414:	d10b      	bne.n	800142e <xgets+0x52>
 8001416:	68fb      	ldr	r3, [r7, #12]
 8001418:	2b00      	cmp	r3, #0
 800141a:	d008      	beq.n	800142e <xgets+0x52>
 800141c:	68fb      	ldr	r3, [r7, #12]
 800141e:	3b01      	subs	r3, #1
 8001420:	60fb      	str	r3, [r7, #12]
 8001422:	68bb      	ldr	r3, [r7, #8]
 8001424:	b2db      	uxtb	r3, r3
 8001426:	0018      	movs	r0, r3
 8001428:	f7ff fe00 	bl	800102c <xputc>
 800142c:	e015      	b.n	800145a <xgets+0x7e>
 800142e:	68bb      	ldr	r3, [r7, #8]
 8001430:	2b1f      	cmp	r3, #31
 8001432:	dde0      	ble.n	80013f6 <xgets+0x1a>
 8001434:	683b      	ldr	r3, [r7, #0]
 8001436:	3b01      	subs	r3, #1
 8001438:	68fa      	ldr	r2, [r7, #12]
 800143a:	429a      	cmp	r2, r3
 800143c:	dadb      	bge.n	80013f6 <xgets+0x1a>
 800143e:	68fb      	ldr	r3, [r7, #12]
 8001440:	1c5a      	adds	r2, r3, #1
 8001442:	60fa      	str	r2, [r7, #12]
 8001444:	001a      	movs	r2, r3
 8001446:	687b      	ldr	r3, [r7, #4]
 8001448:	189b      	adds	r3, r3, r2
 800144a:	68ba      	ldr	r2, [r7, #8]
 800144c:	b2d2      	uxtb	r2, r2
 800144e:	701a      	strb	r2, [r3, #0]
 8001450:	68bb      	ldr	r3, [r7, #8]
 8001452:	b2db      	uxtb	r3, r3
 8001454:	0018      	movs	r0, r3
 8001456:	f7ff fde9 	bl	800102c <xputc>
 800145a:	e7cc      	b.n	80013f6 <xgets+0x1a>
 800145c:	46c0      	nop			; (mov r8, r8)
 800145e:	68fb      	ldr	r3, [r7, #12]
 8001460:	687a      	ldr	r2, [r7, #4]
 8001462:	18d3      	adds	r3, r2, r3
 8001464:	2200      	movs	r2, #0
 8001466:	701a      	strb	r2, [r3, #0]
 8001468:	200a      	movs	r0, #10
 800146a:	f7ff fddf 	bl	800102c <xputc>
 800146e:	2301      	movs	r3, #1
 8001470:	0018      	movs	r0, r3
 8001472:	46bd      	mov	sp, r7
 8001474:	b004      	add	sp, #16
 8001476:	bd80      	pop	{r7, pc}
 8001478:	200004c0 	.word	0x200004c0

0800147c <xatoi>:
 800147c:	b580      	push	{r7, lr}
 800147e:	b084      	sub	sp, #16
 8001480:	af00      	add	r7, sp, #0
 8001482:	6078      	str	r0, [r7, #4]
 8001484:	6039      	str	r1, [r7, #0]
 8001486:	2309      	movs	r3, #9
 8001488:	18fb      	adds	r3, r7, r3
 800148a:	2200      	movs	r2, #0
 800148c:	701a      	strb	r2, [r3, #0]
 800148e:	683b      	ldr	r3, [r7, #0]
 8001490:	2200      	movs	r2, #0
 8001492:	601a      	str	r2, [r3, #0]
 8001494:	e004      	b.n	80014a0 <xatoi+0x24>
 8001496:	687b      	ldr	r3, [r7, #4]
 8001498:	681b      	ldr	r3, [r3, #0]
 800149a:	1c5a      	adds	r2, r3, #1
 800149c:	687b      	ldr	r3, [r7, #4]
 800149e:	601a      	str	r2, [r3, #0]
 80014a0:	687b      	ldr	r3, [r7, #4]
 80014a2:	681a      	ldr	r2, [r3, #0]
 80014a4:	210b      	movs	r1, #11
 80014a6:	187b      	adds	r3, r7, r1
 80014a8:	7812      	ldrb	r2, [r2, #0]
 80014aa:	701a      	strb	r2, [r3, #0]
 80014ac:	187b      	adds	r3, r7, r1
 80014ae:	781b      	ldrb	r3, [r3, #0]
 80014b0:	2b20      	cmp	r3, #32
 80014b2:	d0f0      	beq.n	8001496 <xatoi+0x1a>
 80014b4:	187b      	adds	r3, r7, r1
 80014b6:	781b      	ldrb	r3, [r3, #0]
 80014b8:	2b2d      	cmp	r3, #45	; 0x2d
 80014ba:	d10d      	bne.n	80014d8 <xatoi+0x5c>
 80014bc:	2309      	movs	r3, #9
 80014be:	18fb      	adds	r3, r7, r3
 80014c0:	2201      	movs	r2, #1
 80014c2:	701a      	strb	r2, [r3, #0]
 80014c4:	687b      	ldr	r3, [r7, #4]
 80014c6:	681b      	ldr	r3, [r3, #0]
 80014c8:	1c5a      	adds	r2, r3, #1
 80014ca:	687b      	ldr	r3, [r7, #4]
 80014cc:	601a      	str	r2, [r3, #0]
 80014ce:	687b      	ldr	r3, [r7, #4]
 80014d0:	681a      	ldr	r2, [r3, #0]
 80014d2:	187b      	adds	r3, r7, r1
 80014d4:	7812      	ldrb	r2, [r2, #0]
 80014d6:	701a      	strb	r2, [r3, #0]
 80014d8:	210b      	movs	r1, #11
 80014da:	187b      	adds	r3, r7, r1
 80014dc:	781b      	ldrb	r3, [r3, #0]
 80014de:	2b30      	cmp	r3, #48	; 0x30
 80014e0:	d145      	bne.n	800156e <xatoi+0xf2>
 80014e2:	687b      	ldr	r3, [r7, #4]
 80014e4:	681b      	ldr	r3, [r3, #0]
 80014e6:	1c5a      	adds	r2, r3, #1
 80014e8:	687b      	ldr	r3, [r7, #4]
 80014ea:	601a      	str	r2, [r3, #0]
 80014ec:	687b      	ldr	r3, [r7, #4]
 80014ee:	681a      	ldr	r2, [r3, #0]
 80014f0:	187b      	adds	r3, r7, r1
 80014f2:	7812      	ldrb	r2, [r2, #0]
 80014f4:	701a      	strb	r2, [r3, #0]
 80014f6:	187b      	adds	r3, r7, r1
 80014f8:	781b      	ldrb	r3, [r3, #0]
 80014fa:	2b62      	cmp	r3, #98	; 0x62
 80014fc:	d010      	beq.n	8001520 <xatoi+0xa4>
 80014fe:	2b78      	cmp	r3, #120	; 0x78
 8001500:	d11e      	bne.n	8001540 <xatoi+0xc4>
 8001502:	230a      	movs	r3, #10
 8001504:	18fb      	adds	r3, r7, r3
 8001506:	2210      	movs	r2, #16
 8001508:	701a      	strb	r2, [r3, #0]
 800150a:	687b      	ldr	r3, [r7, #4]
 800150c:	681b      	ldr	r3, [r3, #0]
 800150e:	1c5a      	adds	r2, r3, #1
 8001510:	687b      	ldr	r3, [r7, #4]
 8001512:	601a      	str	r2, [r3, #0]
 8001514:	687b      	ldr	r3, [r7, #4]
 8001516:	681a      	ldr	r2, [r3, #0]
 8001518:	187b      	adds	r3, r7, r1
 800151a:	7812      	ldrb	r2, [r2, #0]
 800151c:	701a      	strb	r2, [r3, #0]
 800151e:	e035      	b.n	800158c <xatoi+0x110>
 8001520:	230a      	movs	r3, #10
 8001522:	18fb      	adds	r3, r7, r3
 8001524:	2202      	movs	r2, #2
 8001526:	701a      	strb	r2, [r3, #0]
 8001528:	687b      	ldr	r3, [r7, #4]
 800152a:	681b      	ldr	r3, [r3, #0]
 800152c:	1c5a      	adds	r2, r3, #1
 800152e:	687b      	ldr	r3, [r7, #4]
 8001530:	601a      	str	r2, [r3, #0]
 8001532:	687b      	ldr	r3, [r7, #4]
 8001534:	681a      	ldr	r2, [r3, #0]
 8001536:	230b      	movs	r3, #11
 8001538:	18fb      	adds	r3, r7, r3
 800153a:	7812      	ldrb	r2, [r2, #0]
 800153c:	701a      	strb	r2, [r3, #0]
 800153e:	e025      	b.n	800158c <xatoi+0x110>
 8001540:	230b      	movs	r3, #11
 8001542:	18fb      	adds	r3, r7, r3
 8001544:	781b      	ldrb	r3, [r3, #0]
 8001546:	2b20      	cmp	r3, #32
 8001548:	d801      	bhi.n	800154e <xatoi+0xd2>
 800154a:	2301      	movs	r3, #1
 800154c:	e06f      	b.n	800162e <xatoi+0x1b2>
 800154e:	220b      	movs	r2, #11
 8001550:	18bb      	adds	r3, r7, r2
 8001552:	781b      	ldrb	r3, [r3, #0]
 8001554:	2b2f      	cmp	r3, #47	; 0x2f
 8001556:	d903      	bls.n	8001560 <xatoi+0xe4>
 8001558:	18bb      	adds	r3, r7, r2
 800155a:	781b      	ldrb	r3, [r3, #0]
 800155c:	2b39      	cmp	r3, #57	; 0x39
 800155e:	d901      	bls.n	8001564 <xatoi+0xe8>
 8001560:	2300      	movs	r3, #0
 8001562:	e064      	b.n	800162e <xatoi+0x1b2>
 8001564:	230a      	movs	r3, #10
 8001566:	18fb      	adds	r3, r7, r3
 8001568:	2208      	movs	r2, #8
 800156a:	701a      	strb	r2, [r3, #0]
 800156c:	e00e      	b.n	800158c <xatoi+0x110>
 800156e:	220b      	movs	r2, #11
 8001570:	18bb      	adds	r3, r7, r2
 8001572:	781b      	ldrb	r3, [r3, #0]
 8001574:	2b2f      	cmp	r3, #47	; 0x2f
 8001576:	d903      	bls.n	8001580 <xatoi+0x104>
 8001578:	18bb      	adds	r3, r7, r2
 800157a:	781b      	ldrb	r3, [r3, #0]
 800157c:	2b39      	cmp	r3, #57	; 0x39
 800157e:	d901      	bls.n	8001584 <xatoi+0x108>
 8001580:	2300      	movs	r3, #0
 8001582:	e054      	b.n	800162e <xatoi+0x1b2>
 8001584:	230a      	movs	r3, #10
 8001586:	18fb      	adds	r3, r7, r3
 8001588:	220a      	movs	r2, #10
 800158a:	701a      	strb	r2, [r3, #0]
 800158c:	2300      	movs	r3, #0
 800158e:	60fb      	str	r3, [r7, #12]
 8001590:	e03c      	b.n	800160c <xatoi+0x190>
 8001592:	220b      	movs	r2, #11
 8001594:	18bb      	adds	r3, r7, r2
 8001596:	781b      	ldrb	r3, [r3, #0]
 8001598:	2b60      	cmp	r3, #96	; 0x60
 800159a:	d904      	bls.n	80015a6 <xatoi+0x12a>
 800159c:	18bb      	adds	r3, r7, r2
 800159e:	18ba      	adds	r2, r7, r2
 80015a0:	7812      	ldrb	r2, [r2, #0]
 80015a2:	3a20      	subs	r2, #32
 80015a4:	701a      	strb	r2, [r3, #0]
 80015a6:	210b      	movs	r1, #11
 80015a8:	187b      	adds	r3, r7, r1
 80015aa:	187a      	adds	r2, r7, r1
 80015ac:	7812      	ldrb	r2, [r2, #0]
 80015ae:	3a30      	subs	r2, #48	; 0x30
 80015b0:	701a      	strb	r2, [r3, #0]
 80015b2:	187b      	adds	r3, r7, r1
 80015b4:	781b      	ldrb	r3, [r3, #0]
 80015b6:	2b10      	cmp	r3, #16
 80015b8:	d90a      	bls.n	80015d0 <xatoi+0x154>
 80015ba:	187b      	adds	r3, r7, r1
 80015bc:	187a      	adds	r2, r7, r1
 80015be:	7812      	ldrb	r2, [r2, #0]
 80015c0:	3a07      	subs	r2, #7
 80015c2:	701a      	strb	r2, [r3, #0]
 80015c4:	187b      	adds	r3, r7, r1
 80015c6:	781b      	ldrb	r3, [r3, #0]
 80015c8:	2b09      	cmp	r3, #9
 80015ca:	d801      	bhi.n	80015d0 <xatoi+0x154>
 80015cc:	2300      	movs	r3, #0
 80015ce:	e02e      	b.n	800162e <xatoi+0x1b2>
 80015d0:	230b      	movs	r3, #11
 80015d2:	18fa      	adds	r2, r7, r3
 80015d4:	230a      	movs	r3, #10
 80015d6:	18fb      	adds	r3, r7, r3
 80015d8:	7812      	ldrb	r2, [r2, #0]
 80015da:	781b      	ldrb	r3, [r3, #0]
 80015dc:	429a      	cmp	r2, r3
 80015de:	d301      	bcc.n	80015e4 <xatoi+0x168>
 80015e0:	2300      	movs	r3, #0
 80015e2:	e024      	b.n	800162e <xatoi+0x1b2>
 80015e4:	230a      	movs	r3, #10
 80015e6:	18fb      	adds	r3, r7, r3
 80015e8:	781b      	ldrb	r3, [r3, #0]
 80015ea:	68fa      	ldr	r2, [r7, #12]
 80015ec:	435a      	muls	r2, r3
 80015ee:	210b      	movs	r1, #11
 80015f0:	187b      	adds	r3, r7, r1
 80015f2:	781b      	ldrb	r3, [r3, #0]
 80015f4:	18d3      	adds	r3, r2, r3
 80015f6:	60fb      	str	r3, [r7, #12]
 80015f8:	687b      	ldr	r3, [r7, #4]
 80015fa:	681b      	ldr	r3, [r3, #0]
 80015fc:	1c5a      	adds	r2, r3, #1
 80015fe:	687b      	ldr	r3, [r7, #4]
 8001600:	601a      	str	r2, [r3, #0]
 8001602:	687b      	ldr	r3, [r7, #4]
 8001604:	681a      	ldr	r2, [r3, #0]
 8001606:	187b      	adds	r3, r7, r1
 8001608:	7812      	ldrb	r2, [r2, #0]
 800160a:	701a      	strb	r2, [r3, #0]
 800160c:	230b      	movs	r3, #11
 800160e:	18fb      	adds	r3, r7, r3
 8001610:	781b      	ldrb	r3, [r3, #0]
 8001612:	2b20      	cmp	r3, #32
 8001614:	d8bd      	bhi.n	8001592 <xatoi+0x116>
 8001616:	2309      	movs	r3, #9
 8001618:	18fb      	adds	r3, r7, r3
 800161a:	781b      	ldrb	r3, [r3, #0]
 800161c:	2b00      	cmp	r3, #0
 800161e:	d002      	beq.n	8001626 <xatoi+0x1aa>
 8001620:	68fb      	ldr	r3, [r7, #12]
 8001622:	425b      	negs	r3, r3
 8001624:	60fb      	str	r3, [r7, #12]
 8001626:	68fa      	ldr	r2, [r7, #12]
 8001628:	683b      	ldr	r3, [r7, #0]
 800162a:	601a      	str	r2, [r3, #0]
 800162c:	2301      	movs	r3, #1
 800162e:	0018      	movs	r0, r3
 8001630:	46bd      	mov	sp, r7
 8001632:	b004      	add	sp, #16
 8001634:	bd80      	pop	{r7, pc}
	...

08001638 <register_fini>:
 8001638:	4b03      	ldr	r3, [pc, #12]	; (8001648 <register_fini+0x10>)
 800163a:	b510      	push	{r4, lr}
 800163c:	2b00      	cmp	r3, #0
 800163e:	d002      	beq.n	8001646 <register_fini+0xe>
 8001640:	4802      	ldr	r0, [pc, #8]	; (800164c <register_fini+0x14>)
 8001642:	f7fe feff 	bl	8000444 <atexit>
 8001646:	bd10      	pop	{r4, pc}
 8001648:	00000000 	.word	0x00000000
 800164c:	08000455 	.word	0x08000455

08001650 <_init>:
 8001650:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001652:	46c0      	nop			; (mov r8, r8)
 8001654:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001656:	bc08      	pop	{r3}
 8001658:	469e      	mov	lr, r3
 800165a:	4770      	bx	lr

0800165c <_fini>:
 800165c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800165e:	46c0      	nop			; (mov r8, r8)
 8001660:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001662:	bc08      	pop	{r3}
 8001664:	469e      	mov	lr, r3
 8001666:	4770      	bx	lr
