# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 13.1.3.192 Build 2013060";
# mark_description "7";
# mark_description "-O3 -xAVX -S";
	.file "vectortriadICCwithoutRestrict.cpp"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #52.1
        pushq     %rbp                                          #52.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #52.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #52.1
        pushq     %r15                                          #52.1
        pushq     %rbx                                          #52.1
        subq      $112, %rsp                                    #52.1
        movl      $3, %edi                                      #52.1
..___tag_value_main.6:                                          #52.1
        call      __intel_new_proc_init_G                       #52.1
..___tag_value_main.7:                                          #
                                # LOE r12 r13 r14
..B1.59:                        # Preds ..B1.1
        vstmxcsr  24(%rsp)                                      #52.1
        movl      $32, %esi                                     #60.2
        lea       40(%rsp), %rdi                                #60.2
        orl       $32832, 24(%rsp)                              #52.1
        movl      $33554432, %edx                               #60.2
        vldmxcsr  24(%rsp)                                      #52.1
        movl      $1, %r15d                                     #54.11
        movl      $1073741824, %ebx                             #55.15
..___tag_value_main.10:                                         #60.2
        call      posix_memalign                                #60.2
..___tag_value_main.11:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.59
        movl      $32, %esi                                     #61.2
        lea       48(%rsp), %rdi                                #61.2
        movl      $33554432, %edx                               #61.2
..___tag_value_main.12:                                         #61.2
        call      posix_memalign                                #61.2
..___tag_value_main.13:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
        movl      $32, %esi                                     #62.2
        lea       56(%rsp), %rdi                                #62.2
        movl      $33554432, %edx                               #62.2
..___tag_value_main.14:                                         #62.2
        call      posix_memalign                                #62.2
..___tag_value_main.15:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
        movl      $32, %esi                                     #63.2
        lea       64(%rsp), %rdi                                #63.2
        movl      $33554432, %edx                               #63.2
..___tag_value_main.16:                                         #63.2
        call      posix_memalign                                #63.2
..___tag_value_main.17:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        xorl      %edx, %edx                                    #65.2
        xorl      %eax, %eax                                    #
                                # LOE rax rdx rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.6 ..B1.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #66.31
        lea       (%rdx,%rdx), %rcx                             #66.24
        vcvtsi2sdq %rcx, %xmm0, %xmm0                           #66.31
        movq      64(%rsp), %rsi                                #66.24
        lea       1(,%rdx,2), %r10                              #66.24
        vxorpd    %xmm1, %xmm1, %xmm1                           #66.31
        incq      %rdx                                          #65.2
        vcvtsi2sdq %r10, %xmm1, %xmm1                           #66.31
        vmovsd    %xmm0, (%rsi,%rax)                            #66.24
        movq      56(%rsp), %rdi                                #66.17
        vmovsd    %xmm0, (%rdi,%rax)                            #66.17
        movq      48(%rsp), %r8                                 #66.10
        vmovsd    %xmm0, (%r8,%rax)                             #66.10
        movq      40(%rsp), %r9                                 #66.3
        vmovsd    %xmm0, (%r9,%rax)                             #66.3
        movq      64(%rsp), %r11                                #66.24
        vmovsd    %xmm1, 8(%r11,%rax)                           #66.24
        movq      56(%rsp), %rcx                                #66.17
        vmovsd    %xmm1, 8(%rcx,%rax)                           #66.17
        movq      48(%rsp), %rsi                                #66.10
        vmovsd    %xmm1, 8(%rsi,%rax)                           #66.10
        movq      40(%rsp), %rdi                                #66.3
        vmovsd    %xmm1, 8(%rdi,%rax)                           #66.3
        addq      $16, %rax                                     #65.2
        cmpq      $2097152, %rdx                                #65.2
        jb        ..B1.6        # Prob 63%                      #65.2
                                # LOE rax rdx rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
        xorl      %eax, %eax                                    #68.2
        movq      %r12, 8(%rsp)                                 #69.3
        movq      %r13, 16(%rsp)                                #69.3
..___tag_value_main.18:                                         #
        movq      %rax, %r13                                    #69.3
        movq      %r14, (%rsp)                                  #69.3
..___tag_value_main.20:                                         #
                                # LOE rbx r13 r15
..B1.8:                         # Preds ..B1.49 ..B1.7
        call      clock                                         #69.3
                                # LOE rax rbx r13 r15
..B1.9:                         # Preds ..B1.8
        vcvtsi2sdq %rax, %xmm0, %xmm0                           #69.3
        vdivsd    .L_2il0floatpacket.12(%rip), %xmm0, %xmm1     #69.3
        vmovsd    %xmm1, prevTime(%rip)                         #69.3
        xorl      %eax, %eax                                    #70.3
        testq     %rbx, %rbx                                    #70.26
        jbe       ..B1.42       # Prob 10%                      #70.26
                                # LOE rax rbx r13 r15
..B1.10:                        # Preds ..B1.9
        movq      %r15, %r14                                    #
        movq      %r15, %r12                                    #71.4
        shrq      $1, %r14                                      #
        andq      $-16, %r12                                    #71.4
        movq      %r13, 24(%rsp)                                #71.4
        movq      %rax, %r13                                    #71.4
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.40 ..B1.10
        movq      40(%rsp), %rdx                                #71.16
        movq      48(%rsp), %rcx                                #71.19
        movq      56(%rsp), %rdi                                #71.22
        movq      64(%rsp), %r8                                 #71.25
        testq     %r15, %r15                                    #71.4
        jbe       ..B1.39       # Prob 10%                      #71.4
                                # LOE rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
        cmpq      %rcx, %rdx                                    #71.4
        jbe       ..B1.14       # Prob 50%                      #71.4
                                # LOE rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
        movq      %rdx, %rsi                                    #71.4
        lea       (,%r15,8), %rax                               #71.4
        subq      %rcx, %rsi                                    #71.4
        cmpq      %rsi, %rax                                    #71.4
        jle       ..B1.16       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.14:                        # Preds ..B1.12 ..B1.13
        cmpq      %rdx, %rcx                                    #71.4
        jbe       ..B1.32       # Prob 50%                      #71.4
                                # LOE rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
        movq      %rcx, %rsi                                    #71.4
        lea       (,%r15,8), %rax                               #71.4
        subq      %rdx, %rsi                                    #71.4
        cmpq      %rax, %rsi                                    #71.4
        jl        ..B1.32       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15 ..B1.13
        cmpq      %rdi, %rdx                                    #71.4
        jbe       ..B1.18       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.17:                        # Preds ..B1.16
        movq      %rdx, %rsi                                    #71.4
        subq      %rdi, %rsi                                    #71.4
        cmpq      %rsi, %rax                                    #71.4
        jle       ..B1.20       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.18:                        # Preds ..B1.16 ..B1.17
        cmpq      %rdx, %rdi                                    #71.4
        jbe       ..B1.32       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.19:                        # Preds ..B1.18
        movq      %rdi, %rsi                                    #71.4
        subq      %rdx, %rsi                                    #71.4
        cmpq      %rax, %rsi                                    #71.4
        jl        ..B1.32       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.20:                        # Preds ..B1.17 ..B1.19
        cmpq      %r8, %rdx                                     #71.4
        jbe       ..B1.22       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
        movq      %rdx, %rsi                                    #71.4
        subq      %r8, %rsi                                     #71.4
        cmpq      %rsi, %rax                                    #71.4
        jle       ..B1.24       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.22:                        # Preds ..B1.20 ..B1.21
        cmpq      %rdx, %r8                                     #71.4
        jbe       ..B1.32       # Prob 50%                      #71.4
                                # LOE rax rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
        movq      %r8, %rsi                                     #71.4
        subq      %rdx, %rsi                                    #71.4
        cmpq      %rax, %rsi                                    #71.4
        jl        ..B1.32       # Prob 50%                      #71.4
                                # LOE rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.24:                        # Preds ..B1.21 ..B1.23
        cmpq      $16, %r15                                     #71.4
        jb        ..B1.55       # Prob 10%                      #71.4
                                # LOE rdx rcx rbx rdi r8 r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24
        movq      %r12, %rsi                                    #71.4
        xorl      %r9d, %r9d                                    #71.4
        .align    16,0x90
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15
..B1.26:                        # Preds ..B1.26 ..B1.25
        vmovupd   (%rdi,%r9,8), %ymm0                           #71.4
        vmulpd    (%r8,%r9,8), %ymm0, %ymm1                     #71.4
        vaddpd    (%rcx,%r9,8), %ymm1, %ymm2                    #71.4
        vmovupd   %ymm2, (%rdx,%r9,8)                           #71.4
        vmovupd   32(%rdi,%r9,8), %ymm3                         #71.4
        vmulpd    32(%r8,%r9,8), %ymm3, %ymm4                   #71.4
        vaddpd    32(%rcx,%r9,8), %ymm4, %ymm5                  #71.4
        vmovupd   %ymm5, 32(%rdx,%r9,8)                         #71.4
        vmovupd   64(%rdi,%r9,8), %ymm6                         #71.4
        vmulpd    64(%r8,%r9,8), %ymm6, %ymm7                   #71.4
        vaddpd    64(%rcx,%r9,8), %ymm7, %ymm8                  #71.4
        vmovupd   %ymm8, 64(%rdx,%r9,8)                         #71.4
        vmovupd   96(%rdi,%r9,8), %ymm9                         #71.4
        vmulpd    96(%r8,%r9,8), %ymm9, %ymm10                  #71.4
        vaddpd    96(%rcx,%r9,8), %ymm10, %ymm11                #71.4
        vmovupd   %ymm11, 96(%rdx,%r9,8)                        #71.4
        addq      $16, %r9                                      #71.4
        cmpq      %r12, %r9                                     #71.4
        jb        ..B1.26       # Prob 82%                      #71.4
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15
..B1.28:                        # Preds ..B1.26 ..B1.55
        xorl      %eax, %eax                                    #71.4
        lea       1(%rsi), %r9                                  #71.4
        cmpq      %r9, %r15                                     #71.4
        jb        ..B1.38       # Prob 0%                       #71.4
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28
        lea       (%rdx,%rsi,8), %r10                           #71.4
        lea       (%rcx,%rsi,8), %r9                            #71.4
        lea       (%rdi,%rsi,8), %rcx                           #71.4
        lea       (%r8,%rsi,8), %rdx                            #71.4
        negq      %rsi                                          #71.4
        addq      %r15, %rsi                                    #71.4
                                # LOE rax rdx rcx rbx rsi r9 r10 r12 r13 r14 r15
..B1.30:                        # Preds ..B1.30 ..B1.29
        vmovsd    (%rcx,%rax,8), %xmm0                          #71.4
        vmulsd    (%rdx,%rax,8), %xmm0, %xmm1                   #71.4
        vaddsd    (%r9,%rax,8), %xmm1, %xmm2                    #71.4
        vmovsd    %xmm2, (%r10,%rax,8)                          #71.4
        incq      %rax                                          #71.4
        cmpq      %rsi, %rax                                    #71.4
        jb        ..B1.30       # Prob 82%                      #71.4
        jmp       ..B1.38       # Prob 100%                     #71.4
                                # LOE rax rdx rcx rbx rsi r9 r10 r12 r13 r14 r15
..B1.32:                        # Preds ..B1.14 ..B1.15 ..B1.18 ..B1.19 ..B1.22
                                #       ..B1.23
        xorl      %r9d, %r9d                                    #71.4
        movl      $1, %r10d                                     #71.4
        xorl      %esi, %esi                                    #
        testq     %r14, %r14                                    #71.4
        jbe       ..B1.36       # Prob 0%                       #71.4
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15
..B1.34:                        # Preds ..B1.32 ..B1.34
        vmovsd    (%rsi,%rdi), %xmm0                            #71.4
        incq      %r9                                           #71.4
        vmulsd    (%rsi,%r8), %xmm0, %xmm1                      #71.4
        vaddsd    (%rsi,%rcx), %xmm1, %xmm2                     #71.4
        vmovsd    %xmm2, (%rsi,%rdx)                            #71.4
        vmovsd    8(%rsi,%rdi), %xmm3                           #71.4
        vmulsd    8(%rsi,%r8), %xmm3, %xmm4                     #71.4
        vaddsd    8(%rsi,%rcx), %xmm4, %xmm5                    #71.4
        vmovsd    %xmm5, 8(%rsi,%rdx)                           #71.4
        addq      $16, %rsi                                     #71.4
        cmpq      %r14, %r9                                     #71.4
        jb        ..B1.34       # Prob 64%                      #71.4
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
        lea       1(,%r9,2), %r10                               #71.4
                                # LOE rdx rcx rbx rdi r8 r10 r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35 ..B1.32
        decq      %r10                                          #71.4
        cmpq      %r15, %r10                                    #71.4
        jae       ..B1.38       # Prob 0%                       #71.4
                                # LOE rdx rcx rbx rdi r8 r10 r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
        vmovsd    (%rdi,%r10,8), %xmm0                          #71.4
        vmulsd    (%r8,%r10,8), %xmm0, %xmm1                    #71.4
        vaddsd    (%rcx,%r10,8), %xmm1, %xmm2                   #71.4
        vmovsd    %xmm2, (%rdx,%r10,8)                          #71.4
                                # LOE rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.30 ..B1.36 ..B1.28 ..B1.37
        movq      40(%rsp), %rdx                                #73.8
                                # LOE rdx rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.38 ..B1.11
        testq     %rdx, %rdx                                    #73.13
        je        ..B1.56       # Prob 3%                       #73.13
                                # LOE rbx r12 r13 r14 r15
..B1.40:                        # Preds ..B1.56 ..B1.39
        incq      %r13                                          #70.3
        cmpq      %rbx, %r13                                    #70.3
        jb        ..B1.11       # Prob 82%                      #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.40
        movq      24(%rsp), %r13                                #
                                # LOE rbx r13 r15
..B1.42:                        # Preds ..B1.41 ..B1.9
        vzeroupper                                              #76.20
        call      clock                                         #76.20
                                # LOE rax rbx r13 r15
..B1.43:                        # Preds ..B1.42
        vcvtsi2sdq %rax, %xmm0, %xmm0                           #76.20
        vdivsd    .L_2il0floatpacket.12(%rip), %xmm0, %xmm1     #76.20
        movl      $_ZSt4cout, %edi                              #78.8
        movl      $.L_2__STRING.0, %esi                         #78.8
        vsubsd    prevTime(%rip), %xmm1, %xmm2                  #76.20
        vmovsd    %xmm2, 32(%rsp)                               #76.20
..___tag_value_main.21:                                         #78.8
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #78.8
..___tag_value_main.22:                                         #
                                # LOE rax rbx r13 r15
..B1.44:                        # Preds ..B1.43
        movq      %rax, %rdi                                    #78.47
        movq      %r15, %rsi                                    #78.47
..___tag_value_main.23:                                         #78.47
        call      _ZNSolsEm                                     #78.47
..___tag_value_main.24:                                         #
                                # LOE rax rbx r13 r15
..B1.45:                        # Preds ..B1.44
        movq      %rax, %rdi                                    #78.52
        movl      $.L_2__STRING.1, %esi                         #78.52
..___tag_value_main.25:                                         #78.52
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #78.52
..___tag_value_main.26:                                         #
                                # LOE rax rbx r13 r15
..B1.46:                        # Preds ..B1.45
        movq      %rax, %rdi                                    #78.60
        vmovsd    32(%rsp), %xmm0                               #78.60
..___tag_value_main.27:                                         #78.60
        call      _ZNSolsEd                                     #78.60
..___tag_value_main.28:                                         #
                                # LOE rax rbx r13 r15
..B1.47:                        # Preds ..B1.46
        movq      %rax, %rdi                                    #78.71
        movl      $.L_2__STRING.2, %esi                         #78.71
..___tag_value_main.29:                                         #78.71
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #78.71
..___tag_value_main.30:                                         #
                                # LOE rax rbx r13 r15
..B1.48:                        # Preds ..B1.47
        movq      %rax, %rdi                                    #78.78
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #78.78
..___tag_value_main.31:                                         #78.78
        call      _ZNSolsEPFRSoS_E                              #78.78
..___tag_value_main.32:                                         #
                                # LOE rbx r13 r15
..B1.49:                        # Preds ..B1.48
        incq      %r13                                          #68.2
        addq      %r15, %r15                                    #80.3
        shrq      $1, %rbx                                      #81.3
        cmpq      $22, %r13                                     #68.2
        jb        ..B1.8        # Prob 95%                      #68.2
                                # LOE rbx r13 r15
..B1.50:                        # Preds ..B1.49
        movq      40(%rsp), %rdi                                #84.2
        call      free                                          #84.2
                                # LOE
..B1.51:                        # Preds ..B1.50
        movq      48(%rsp), %rdi                                #85.2
        call      free                                          #85.2
                                # LOE
..B1.52:                        # Preds ..B1.51
        movq      56(%rsp), %rdi                                #86.2
        call      free                                          #86.2
                                # LOE
..B1.53:                        # Preds ..B1.52
        movq      64(%rsp), %rdi                                #87.2
        call      free                                          #87.2
                                # LOE
..B1.54:                        # Preds ..B1.53
        xorl      %edi, %edi                                    #89.2
        call      exit                                          #89.2
                                # LOE
..B1.55:                        # Preds ..B1.24                 # Infreq
        xorl      %esi, %esi                                    #71.4
        jmp       ..B1.28       # Prob 100%                     #71.4
                                # LOE rdx rcx rbx rsi rdi r8 r12 r13 r14 r15
..B1.56:                        # Preds ..B1.39                 # Infreq
        movl      $_ZSt4cout, %edi                              #74.10
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #74.10
        vzeroupper                                              #74.10
..___tag_value_main.33:                                         #74.10
        call      _ZNSolsEPFRSoS_E                              #74.10
..___tag_value_main.34:                                         #
        jmp       ..B1.40       # Prob 100%                     #74.10
        .align    16,0x90
..___tag_value_main.35:                                         #
                                # LOE rbx r12 r13 r14 r15
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  _Z11startChronov
# mark_begin;
       .align    16,0x90
	.globl _Z11startChronov
_Z11startChronov:
..B2.1:                         # Preds ..B2.0
..___tag_value__Z11startChronov.36:                             #30.1
        pushq     %rsi                                          #30.1
..___tag_value__Z11startChronov.38:                             #
        call      clock                                         #31.20
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
        vcvtsi2sdq %rax, %xmm0, %xmm0                           #31.20
        vdivsd    .L_2il0floatpacket.13(%rip), %xmm0, %xmm1     #31.31
        vmovsd    %xmm1, prevTime(%rip)                         #31.2
        popq      %rcx                                          #32.1
..___tag_value__Z11startChronov.39:                             #
        ret                                                     #32.1
        .align    16,0x90
..___tag_value__Z11startChronov.40:                             #
                                # LOE
# mark_end;
	.type	_Z11startChronov,@function
	.size	_Z11startChronov,.-_Z11startChronov
	.data
# -- End  _Z11startChronov
	.text
# -- Begin  _Z11vectorTriadPdPKdS1_S1_m
# mark_begin;
       .align    16,0x90
	.globl _Z11vectorTriadPdPKdS1_S1_m
_Z11vectorTriadPdPKdS1_S1_m:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
..B3.1:                         # Preds ..B3.0
..___tag_value__Z11vectorTriadPdPKdS1_S1_m.41:                  #45.1
        testq     %r8, %r8                                      #47.32
        jbe       ..B3.28       # Prob 50%                      #47.32
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
        cmpq      %rsi, %rdi                                    #48.10
        jbe       ..B3.4        # Prob 50%                      #48.10
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.3:                         # Preds ..B3.2
        movq      %rdi, %r9                                     #48.10
        lea       (,%r8,8), %rax                                #48.10
        subq      %rsi, %r9                                     #48.10
        cmpq      %r9, %rax                                     #48.10
        jle       ..B3.6        # Prob 50%                      #48.10
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.4:                         # Preds ..B3.2 ..B3.3
        cmpq      %rdi, %rsi                                    #48.10
        jbe       ..B3.22       # Prob 50%                      #48.10
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.5:                         # Preds ..B3.4
        movq      %rsi, %r9                                     #48.10
        lea       (,%r8,8), %rax                                #48.10
        subq      %rdi, %r9                                     #48.10
        cmpq      %rax, %r9                                     #48.10
        jl        ..B3.22       # Prob 50%                      #48.10
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.6:                         # Preds ..B3.5 ..B3.3
        cmpq      %rdx, %rdi                                    #48.17
        jbe       ..B3.8        # Prob 50%                      #48.17
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.7:                         # Preds ..B3.6
        movq      %rdi, %r9                                     #48.17
        subq      %rdx, %r9                                     #48.17
        cmpq      %r9, %rax                                     #48.17
        jle       ..B3.10       # Prob 50%                      #48.17
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.8:                         # Preds ..B3.6 ..B3.7
        cmpq      %rdi, %rdx                                    #48.17
        jbe       ..B3.22       # Prob 50%                      #48.17
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.9:                         # Preds ..B3.8
        movq      %rdx, %r9                                     #48.17
        subq      %rdi, %r9                                     #48.17
        cmpq      %rax, %r9                                     #48.17
        jl        ..B3.22       # Prob 50%                      #48.17
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.10:                        # Preds ..B3.7 ..B3.9
        cmpq      %rcx, %rdi                                    #48.24
        jbe       ..B3.12       # Prob 50%                      #48.24
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.11:                        # Preds ..B3.10
        movq      %rdi, %r9                                     #48.24
        subq      %rcx, %r9                                     #48.24
        cmpq      %r9, %rax                                     #48.24
        jle       ..B3.14       # Prob 50%                      #48.24
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.12:                        # Preds ..B3.10 ..B3.11
        cmpq      %rdi, %rcx                                    #48.24
        jbe       ..B3.22       # Prob 50%                      #48.24
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.13:                        # Preds ..B3.12
        movq      %rcx, %r9                                     #48.24
        subq      %rdi, %r9                                     #48.24
        cmpq      %rax, %r9                                     #48.24
        jl        ..B3.22       # Prob 50%                      #48.24
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.14:                        # Preds ..B3.11 ..B3.13
        cmpq      $16, %r8                                      #47.9
        jb        ..B3.29       # Prob 10%                      #47.9
                                # LOE rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15
..B3.15:                        # Preds ..B3.14
        movq      %r8, %r10                                     #47.9
        xorl      %eax, %eax                                    #47.9
        andq      $-16, %r10                                    #47.9
        .align    16,0x90
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r10 r12 r13 r14 r15
..B3.16:                        # Preds ..B3.16 ..B3.15
        vmovupd   (%rdx,%rax,8), %ymm0                          #48.17
        vmulpd    (%rcx,%rax,8), %ymm0, %ymm1                   #48.24
        vaddpd    (%rsi,%rax,8), %ymm1, %ymm2                   #48.24
        vmovupd   %ymm2, (%rdi,%rax,8)                          #48.3
        vmovupd   32(%rdx,%rax,8), %ymm3                        #48.17
        vmulpd    32(%rcx,%rax,8), %ymm3, %ymm4                 #48.24
        vaddpd    32(%rsi,%rax,8), %ymm4, %ymm5                 #48.24
        vmovupd   %ymm5, 32(%rdi,%rax,8)                        #48.3
        vmovupd   64(%rdx,%rax,8), %ymm6                        #48.17
        vmulpd    64(%rcx,%rax,8), %ymm6, %ymm7                 #48.24
        vaddpd    64(%rsi,%rax,8), %ymm7, %ymm8                 #48.24
        vmovupd   %ymm8, 64(%rdi,%rax,8)                        #48.3
        vmovupd   96(%rdx,%rax,8), %ymm9                        #48.17
        vmulpd    96(%rcx,%rax,8), %ymm9, %ymm10                #48.24
        vaddpd    96(%rsi,%rax,8), %ymm10, %ymm11               #48.24
        vmovupd   %ymm11, 96(%rdi,%rax,8)                       #48.3
        addq      $16, %rax                                     #47.9
        cmpq      %r10, %rax                                    #47.9
        jb        ..B3.16       # Prob 82%                      #47.9
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r10 r12 r13 r14 r15
..B3.18:                        # Preds ..B3.16 ..B3.29
        xorl      %r9d, %r9d                                    #47.9
        lea       1(%r10), %rax                                 #47.9
        cmpq      %rax, %r8                                     #47.9
        jb        ..B3.28       # Prob 10%                      #47.9
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r10 r12 r13 r14 r15
..B3.19:                        # Preds ..B3.18
        subq      %r10, %r8                                     #47.9
        lea       (%rdi,%r10,8), %rax                           #48.3
        lea       (%rsi,%r10,8), %rdi                           #48.10
        lea       (%rdx,%r10,8), %rsi                           #48.17
        lea       (%rcx,%r10,8), %rdx                           #48.24
                                # LOE rax rdx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B3.20:                        # Preds ..B3.20 ..B3.19
        vmovsd    (%rsi,%r9,8), %xmm0                           #48.17
        vmulsd    (%rdx,%r9,8), %xmm0, %xmm1                    #48.24
        vaddsd    (%rdi,%r9,8), %xmm1, %xmm2                    #48.24
        vmovsd    %xmm2, (%rax,%r9,8)                           #48.3
        incq      %r9                                           #47.9
        cmpq      %r8, %r9                                      #47.9
        jb        ..B3.20       # Prob 82%                      #47.9
        jmp       ..B3.28       # Prob 100%                     #47.9
                                # LOE rax rdx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B3.22:                        # Preds ..B3.13 ..B3.4 ..B3.5 ..B3.8 ..B3.9
                                #       ..B3.12
        movq      %r8, %r9                                      #47.9
        xorl      %r10d, %r10d                                  #47.9
        shrq      $1, %r9                                       #47.9
        movl      $1, %r11d                                     #47.9
        xorl      %eax, %eax                                    #
        testq     %r9, %r9                                      #47.9
        jbe       ..B3.26       # Prob 10%                      #47.9
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 r15
..B3.24:                        # Preds ..B3.22 ..B3.24
        vmovsd    (%rax,%rdx), %xmm0                            #48.17
        incq      %r10                                          #47.9
        vmulsd    (%rax,%rcx), %xmm0, %xmm1                     #48.24
        vaddsd    (%rax,%rsi), %xmm1, %xmm2                     #48.24
        vmovsd    %xmm2, (%rax,%rdi)                            #48.3
        vmovsd    8(%rax,%rdx), %xmm3                           #48.17
        vmulsd    8(%rax,%rcx), %xmm3, %xmm4                    #48.24
        vaddsd    8(%rax,%rsi), %xmm4, %xmm5                    #48.24
        vmovsd    %xmm5, 8(%rax,%rdi)                           #48.3
        addq      $16, %rax                                     #47.9
        cmpq      %r9, %r10                                     #47.9
        jb        ..B3.24       # Prob 63%                      #47.9
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r12 r13 r14 r15
..B3.25:                        # Preds ..B3.24
        lea       1(,%r10,2), %r11                              #47.9
                                # LOE rdx rcx rbx rbp rsi rdi r8 r11 r12 r13 r14 r15
..B3.26:                        # Preds ..B3.25 ..B3.22
        decq      %r11                                          #47.9
        cmpq      %r8, %r11                                     #47.9
        jae       ..B3.28       # Prob 10%                      #47.9
                                # LOE rdx rcx rbx rbp rsi rdi r11 r12 r13 r14 r15
..B3.27:                        # Preds ..B3.26
        vmovsd    (%rdx,%r11,8), %xmm0                          #48.17
        vmulsd    (%rcx,%r11,8), %xmm0, %xmm1                   #48.24
        vaddsd    (%rsi,%r11,8), %xmm1, %xmm2                   #48.24
        vmovsd    %xmm2, (%rdi,%r11,8)                          #48.3
                                # LOE rbx rbp r12 r13 r14 r15
..B3.28:                        # Preds ..B3.20 ..B3.26 ..B3.18 ..B3.1 ..B3.27
                                #      
        vzeroupper                                              #49.1
        ret                                                     #49.1
                                # LOE
..B3.29:                        # Preds ..B3.14                 # Infreq
        xorl      %r10d, %r10d                                  #47.9
        jmp       ..B3.18       # Prob 100%                     #47.9
        .align    16,0x90
..___tag_value__Z11vectorTriadPdPKdS1_S1_m.43:                  #
                                # LOE rdx rcx rbx rbp rsi rdi r8 r10 r12 r13 r14 r15
# mark_end;
	.type	_Z11vectorTriadPdPKdS1_S1_m,@function
	.size	_Z11vectorTriadPdPKdS1_S1_m,.-_Z11vectorTriadPdPKdS1_S1_m
	.data
# -- End  _Z11vectorTriadPdPKdS1_S1_m
	.text
# -- Begin  __sti__$E
# mark_begin;
       .align    16,0x90
__sti__$E:
..B4.1:                         # Preds ..B4.0
..___tag_value___sti__$E.44:                                    #
        pushq     %rsi                                          #
..___tag_value___sti__$E.46:                                    #
        movl      $_ZSt8__ioinit, %edi                          #72.25
..___tag_value___sti__$E.47:                                    #72.25
        call      _ZNSt8ios_base4InitC1Ev                       #72.25
..___tag_value___sti__$E.48:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #72.25
        movl      $_ZSt8__ioinit, %esi                          #72.25
        movl      $__dso_handle, %edx                           #72.25
..___tag_value___sti__$E.49:                                    #72.25
        call      __cxa_atexit                                  #72.25
..___tag_value___sti__$E.50:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B4.3:                         # Preds ..B4.2
        popq      %rcx                                          #72.25
..___tag_value___sti__$E.51:                                    #
        ret                                                     #72.25
        .align    16,0x90
..___tag_value___sti__$E.52:                                    #
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.text
# -- Begin  _Z10stopChronov
# mark_begin;
       .align    16,0x90
	.globl _Z10stopChronov
_Z10stopChronov:
..B5.1:                         # Preds ..B5.0
..___tag_value__Z10stopChronov.53:                              #35.1
        pushq     %rsi                                          #35.1
..___tag_value__Z10stopChronov.55:                              #
        call      clock                                         #36.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
        vcvtsi2sdq %rax, %xmm1, %xmm1                           #36.27
        vdivsd    .L_2il0floatpacket.19(%rip), %xmm1, %xmm2     #36.38
        vsubsd    prevTime(%rip), %xmm2, %xmm0                  #37.20
        popq      %rcx                                          #37.20
..___tag_value__Z10stopChronov.56:                              #
        ret                                                     #37.20
        .align    16,0x90
..___tag_value__Z10stopChronov.57:                              #
                                # LOE
# mark_end;
	.type	_Z10stopChronov,@function
	.size	_Z10stopChronov,.-_Z10stopChronov
	.data
# -- End  _Z10stopChronov
	.bss
	.align 8
	.align 8
	.globl prevTime
prevTime:
	.type	prevTime,@object
	.size	prevTime,8
	.space 8	# pad
	.align 1
_ZSt8__ioinit:
	.type	_ZSt8__ioinit,@object
	.size	_ZSt8__ioinit,1
	.space 1	# pad
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.12:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,8
	.align 8
.L_2il0floatpacket.13:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,8
	.align 8
.L_2il0floatpacket.19:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.1:
	.byte	58
	.byte	32
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,3
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.byte	115
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,2
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 4
.L_2__STRING.0:
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	32
	.byte	116
	.byte	114
	.byte	105
	.byte	97
	.byte	100
	.byte	32
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	58
	.byte	32
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,34
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
# mark_proc_addr_taken _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;
# mark_proc_addr_taken _ZNSt8ios_base4InitD1Ev;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x0000001c
	.8byte 0x00507a0100000000
	.4byte 0x09107801
	.byte 0x00
	.8byte __gxx_personality_v0
	.4byte 0x9008070c
	.2byte 0x0001
	.byte 0x00
	.4byte 0x0000008c
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.35-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.7-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xfffffff00d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xfffff80d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value_main.18-..___tag_value_main.7
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffff880d1affff
	.8byte 0x800d1c380e0d1022
	.8byte 0xffff900d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value_main.20-..___tag_value_main.18
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffff800d1affff
	.2byte 0x0022
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x000000b4
	.8byte ..___tag_value__Z11startChronov.36
	.8byte ..___tag_value__Z11startChronov.40-..___tag_value__Z11startChronov.36
	.2byte 0x0400
	.4byte ..___tag_value__Z11startChronov.38-..___tag_value__Z11startChronov.36
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z11startChronov.39-..___tag_value__Z11startChronov.38
	.2byte 0x080e
	.byte 0x00
	.4byte 0x0000001c
	.4byte 0x000000dc
	.8byte ..___tag_value__Z11vectorTriadPdPKdS1_S1_m.41
	.8byte ..___tag_value__Z11vectorTriadPdPKdS1_S1_m.43-..___tag_value__Z11vectorTriadPdPKdS1_S1_m.41
	.8byte 0x0000000000000000
	.4byte 0x00000024
	.4byte 0x000000fc
	.8byte ..___tag_value___sti__$E.44
	.8byte ..___tag_value___sti__$E.52-..___tag_value___sti__$E.44
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.46-..___tag_value___sti__$E.44
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.51-..___tag_value___sti__$E.46
	.2byte 0x080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x00000124
	.8byte ..___tag_value__Z10stopChronov.53
	.8byte ..___tag_value__Z10stopChronov.57-..___tag_value__Z10stopChronov.53
	.2byte 0x0400
	.4byte ..___tag_value__Z10stopChronov.55-..___tag_value__Z10stopChronov.53
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z10stopChronov.56-..___tag_value__Z10stopChronov.55
	.2byte 0x080e
	.byte 0x00
# End
