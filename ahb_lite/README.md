1. 在AHB中，若出现非对齐传输，则会有什么现象？
答：在当前的slave mem代码中，数据位宽32bit，即4byte，一个地址对应一个byte。对于写，则会根据地址，译码出对应的byte_enable，并将传入的master data，根据byte_enable的不同，放入T_DATA的对应位置，直接对mem[addr] <= T_DATA 进行操作。对于读，直接对地址进行操作，然后再外部调用bfm的align task。

2. How the hready in/out works?
   //added by huanglc at 20240312. 
   //mem_ahb is slave, slave HREADY[x] is to ahb_lite_s3.v;
   //in ahb_s2m_s3, HREADY[x] become ahb_lite_s3 M_HREADY; and to bfm_ahb.
   //ahb_lite_s3 M_HREADY is also HREADY, become S_HREADY, and to slaves HREADYin.
   //so, when one of HREADY[x] is 0, then M_HREADY = 0, S_HREADY = 0, HREADYin = 0.
```
                                            =======================
                                            |slave0     hready_in |----<< M_HREADY(S_HREADY)
                                    --------|hready_out           |
                                    |       =======================
                                    |
                          xxxx<<----|       =======================
                        xx  xx              |slave1     hready_in |----<< M_HREADY(S_HREADY)
            M_HREADY   xx   xx<<------------|hready_out           |
         <<------------xx   xx              =======================
                       xx   xx
                        xx  xx<<----|       =======================
                          xxxx      |       |slave2     hready_in |----<< M_HREADY(S_HREADY)
                                    --------|hready_out           |
                                            =======================
```
