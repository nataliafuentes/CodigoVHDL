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
static const char *ng0 = "C:/Xilinx/Problema14/reg_des_izq.vhd";
extern char *IEEE_P_1242562249;



static void work_a_4234704778_3212880686_p_0(char *t0)
{
    char t26[16];
    char t27[16];
    char t31[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    int t28;
    unsigned int t29;
    char *t30;
    int t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3976);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t8 = xsi_signal_has_event(t1);
    if (t8 == 1)
        goto LAB7;

LAB8:    t7 = (unsigned char)0;

LAB9:    if (t7 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t7 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 6018);
    t15 = 1;
    if (3U == 3U)
        goto LAB16;

LAB17:    t15 = 0;

LAB18:    if (t15 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6021);
    t7 = 1;
    if (3U == 3U)
        goto LAB24;

LAB25:    t7 = 0;

LAB26:    if (t7 != 0)
        goto LAB22;

LAB23:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6024);
    t7 = 1;
    if (3U == 3U)
        goto LAB34;

LAB35:    t7 = 0;

LAB36:    if (t7 != 0)
        goto LAB32;

LAB33:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6029);
    t7 = 1;
    if (3U == 3U)
        goto LAB44;

LAB45:    t7 = 0;

LAB46:    if (t7 != 0)
        goto LAB42;

LAB43:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6035);
    t7 = 1;
    if (3U == 3U)
        goto LAB54;

LAB55:    t7 = 0;

LAB56:    if (t7 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6042);
    t7 = 1;
    if (3U == 3U)
        goto LAB64;

LAB65:    t7 = 0;

LAB66:    if (t7 != 0)
        goto LAB62;

LAB63:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6050);
    t7 = 1;
    if (3U == 3U)
        goto LAB74;

LAB75:    t7 = 0;

LAB76:    if (t7 != 0)
        goto LAB72;

LAB73:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t28 = (0 - 7);
    t16 = (t28 * -1);
    t23 = (1U * t16);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t7 = *((unsigned char *)t1);
    t3 = (t0 + 6059);
    t6 = ((IEEE_P_1242562249) + 3000);
    t9 = (t27 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 6;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t32 = (6 - 0);
    t25 = (t32 * 1);
    t25 = (t25 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t25;
    t5 = xsi_base_array_concat(t5, t26, t6, (char)99, t7, (char)97, t3, t27, (char)101);
    t25 = (1U + 7U);
    t8 = (8U != t25);
    if (t8 == 1)
        goto LAB82;

LAB83:    t10 = (t0 + 4040);
    t17 = (t10 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast(t10);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(52, ng0);
    t17 = (t0 + 2152U);
    t18 = *((char **)t17);
    t17 = (t0 + 4040);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 8U);
    xsi_driver_first_trans_fast(t17);
    goto LAB14;

LAB16:    t16 = 0;

LAB19:    if (t16 < 3U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t9 = (t5 + t16);
    t10 = (t2 + t16);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB17;

LAB21:    t16 = (t16 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(54, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 6);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t17 = ((IEEE_P_1242562249) + 3000);
    t18 = (t27 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 6;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t28 = (0 - 6);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t29;
    t10 = xsi_base_array_concat(t10, t26, t17, (char)97, t6, t27, (char)99, (unsigned char)2, (char)101);
    t29 = (7U + 1U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB30;

LAB31:    t19 = (t0 + 4040);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t30 = *((char **)t22);
    memcpy(t30, t10, 8U);
    xsi_driver_first_trans_fast(t19);
    goto LAB14;

LAB24:    t16 = 0;

LAB27:    if (t16 < 3U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB25;

LAB29:    t16 = (t16 + 1);
    goto LAB27;

LAB30:    xsi_size_not_matching(8U, t29, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(56, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 5);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t10 = (t0 + 6027);
    t19 = ((IEEE_P_1242562249) + 3000);
    t20 = (t27 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 5;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t28 = (0 - 5);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t29;
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t32 = (1 - 0);
    t29 = (t32 * 1);
    t29 = (t29 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t29;
    t18 = xsi_base_array_concat(t18, t26, t19, (char)97, t6, t27, (char)97, t10, t31, (char)101);
    t29 = (6U + 2U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB40;

LAB41:    t22 = (t0 + 4040);
    t30 = (t22 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t18, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB14;

LAB34:    t16 = 0;

LAB37:    if (t16 < 3U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB35;

LAB39:    t16 = (t16 + 1);
    goto LAB37;

LAB40:    xsi_size_not_matching(8U, t29, 0);
    goto LAB41;

LAB42:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 4);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t10 = (t0 + 6032);
    t19 = ((IEEE_P_1242562249) + 3000);
    t20 = (t27 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 4;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t28 = (0 - 4);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t29;
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 2;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t32 = (2 - 0);
    t29 = (t32 * 1);
    t29 = (t29 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t29;
    t18 = xsi_base_array_concat(t18, t26, t19, (char)97, t6, t27, (char)97, t10, t31, (char)101);
    t29 = (5U + 3U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB50;

LAB51:    t22 = (t0 + 4040);
    t30 = (t22 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t18, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB14;

LAB44:    t16 = 0;

LAB47:    if (t16 < 3U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB45;

LAB49:    t16 = (t16 + 1);
    goto LAB47;

LAB50:    xsi_size_not_matching(8U, t29, 0);
    goto LAB51;

LAB52:    xsi_set_current_line(60, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 3);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t10 = (t0 + 6038);
    t19 = ((IEEE_P_1242562249) + 3000);
    t20 = (t27 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 3;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t28 = (0 - 3);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t29;
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 3;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t32 = (3 - 0);
    t29 = (t32 * 1);
    t29 = (t29 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t29;
    t18 = xsi_base_array_concat(t18, t26, t19, (char)97, t6, t27, (char)97, t10, t31, (char)101);
    t29 = (4U + 4U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB60;

LAB61:    t22 = (t0 + 4040);
    t30 = (t22 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t18, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB14;

LAB54:    t16 = 0;

LAB57:    if (t16 < 3U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB55;

LAB59:    t16 = (t16 + 1);
    goto LAB57;

LAB60:    xsi_size_not_matching(8U, t29, 0);
    goto LAB61;

LAB62:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 2);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t10 = (t0 + 6045);
    t19 = ((IEEE_P_1242562249) + 3000);
    t20 = (t27 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 2;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t28 = (0 - 2);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t29;
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 4;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t32 = (4 - 0);
    t29 = (t32 * 1);
    t29 = (t29 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t29;
    t18 = xsi_base_array_concat(t18, t26, t19, (char)97, t6, t27, (char)97, t10, t31, (char)101);
    t29 = (3U + 5U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB70;

LAB71:    t22 = (t0 + 4040);
    t30 = (t22 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t18, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB14;

LAB64:    t16 = 0;

LAB67:    if (t16 < 3U)
        goto LAB68;
    else
        goto LAB66;

LAB68:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB65;

LAB69:    t16 = (t16 + 1);
    goto LAB67;

LAB70:    xsi_size_not_matching(8U, t29, 0);
    goto LAB71;

LAB72:    xsi_set_current_line(64, ng0);
    t6 = (t0 + 2152U);
    t9 = *((char **)t6);
    t23 = (7 - 1);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t6 = (t9 + t25);
    t10 = (t0 + 6053);
    t19 = ((IEEE_P_1242562249) + 3000);
    t20 = (t27 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 1;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t28 = (0 - 1);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t29;
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 5;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t32 = (5 - 0);
    t29 = (t32 * 1);
    t29 = (t29 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t29;
    t18 = xsi_base_array_concat(t18, t26, t19, (char)97, t6, t27, (char)97, t10, t31, (char)101);
    t29 = (2U + 6U);
    t8 = (8U != t29);
    if (t8 == 1)
        goto LAB80;

LAB81:    t22 = (t0 + 4040);
    t30 = (t22 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t18, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB14;

LAB74:    t16 = 0;

LAB77:    if (t16 < 3U)
        goto LAB78;
    else
        goto LAB76;

LAB78:    t4 = (t2 + t16);
    t5 = (t1 + t16);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB75;

LAB79:    t16 = (t16 + 1);
    goto LAB77;

LAB80:    xsi_size_not_matching(8U, t29, 0);
    goto LAB81;

LAB82:    xsi_size_not_matching(8U, t25, 0);
    goto LAB83;

}

static void work_a_4234704778_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4104);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4234704778_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4234704778_3212880686_p_0,(void *)work_a_4234704778_3212880686_p_1};
	xsi_register_didat("work_a_4234704778_3212880686", "isim/simreg_des_izq_isim_beh.exe.sim/work/a_4234704778_3212880686.didat");
	xsi_register_executes(pe);
}
