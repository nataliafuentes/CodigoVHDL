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
static const char *ng0 = "C:/Xilinx/Practica4/registro_coc.vhd";
extern char *IEEE_P_1242562249;



static void work_a_2188657181_3212880686_p_0(char *t0)
{
    char t19[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t5 = t1;
    memset(t5, (unsigned char)2, 7U);
    t6 = (t0 + 3976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1832U);
    t7 = *((char **)t2);
    t2 = (t0 + 3976);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t7, 7U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t16 = (6 - 5);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t5 + t18);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t11 = *((unsigned char *)t7);
    t8 = ((IEEE_P_1242562249) + 3000);
    t9 = (t20 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 5;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t21 = (0 - 5);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t6 = xsi_base_array_concat(t6, t19, t8, (char)97, t1, t20, (char)99, t11, (char)101);
    t22 = (6U + 1U);
    t12 = (7U != t22);
    if (t12 == 1)
        goto LAB16;

LAB17:    t10 = (t0 + 3976);
    t15 = (t10 + 56U);
    t23 = *((char **)t15);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t6, 7U);
    xsi_driver_first_trans_fast(t10);
    goto LAB14;

LAB16:    xsi_size_not_matching(7U, t22, 0);
    goto LAB17;

}

static void work_a_2188657181_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4040);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2188657181_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2188657181_3212880686_p_0,(void *)work_a_2188657181_3212880686_p_1};
	xsi_register_didat("work_a_2188657181_3212880686", "isim/simdivider_isim_beh.exe.sim/work/a_2188657181_3212880686.didat");
	xsi_register_executes(pe);
}
