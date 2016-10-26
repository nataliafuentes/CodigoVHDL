/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/Practica5/conv_7seg.vhd";



static void work_a_1857029571_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    t1 = (t0 + 2352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4240);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB15:    t6 = (t0 + 4244);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB16:    t9 = (t0 + 4248);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB17:    t12 = (t0 + 4252);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB18:    t15 = (t0 + 4256);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB19:    t18 = (t0 + 4260);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB20:    t21 = (t0 + 4264);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB21:    t24 = (t0 + 4268);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB22:    t27 = (t0 + 4272);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB23:
LAB14:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4339);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(41, ng0);

LAB27:    t2 = (t0 + 2672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB28;

LAB1:    return;
LAB5:    xsi_set_current_line(42, ng0);
    t30 = (t0 + 4276);
    t32 = (t0 + 2752);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 7U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB4;

LAB6:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4283);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4290);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4297);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4304);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4311);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4318);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4325);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4332);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB24:;
LAB25:    t3 = (t0 + 2672);
    *((int *)t3) = 0;
    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_1857029571_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1857029571_3212880686_p_0};
	xsi_register_didat("work_a_1857029571_3212880686", "isim/simblack_jack_isim_beh.exe.sim/work/a_1857029571_3212880686.didat");
	xsi_register_executes(pe);
}
