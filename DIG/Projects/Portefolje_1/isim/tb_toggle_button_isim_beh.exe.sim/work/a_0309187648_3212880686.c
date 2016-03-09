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
static const char *ng0 = "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/toggle_button.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2540846514_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0309187648_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t0 + 5008);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 10U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 2768U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t4, 10U);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t0 + 8540U);
    t4 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t6, t3, t1, 1);
    t5 = (t0 + 2768U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    t8 = (t6 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    memcpy(t5, t4, t10);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t11 = (t2 == (unsigned char)3);
    if (t11 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 8592);
    t13 = xsi_mem_cmp(t1, t3, 3U);
    if (t13 == 1)
        goto LAB9;

LAB16:    t5 = (t0 + 8595);
    t14 = xsi_mem_cmp(t5, t3, 3U);
    if (t14 == 1)
        goto LAB10;

LAB17:    t8 = (t0 + 8598);
    t15 = xsi_mem_cmp(t8, t3, 3U);
    if (t15 == 1)
        goto LAB11;

LAB18:    t16 = (t0 + 8601);
    t18 = xsi_mem_cmp(t16, t3, 3U);
    if (t18 == 1)
        goto LAB12;

LAB19:    t19 = (t0 + 8604);
    t21 = xsi_mem_cmp(t19, t3, 3U);
    if (t21 == 1)
        goto LAB13;

LAB20:    t22 = (t0 + 8607);
    t24 = xsi_mem_cmp(t22, t3, 3U);
    if (t24 == 1)
        goto LAB14;

LAB21:
LAB15:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);

LAB8:    goto LAB3;

LAB5:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t1 = (t0 + 8540U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t6, t4, t1, 1);
    t7 = (t0 + 2768U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    t12 = (t6 + 12U);
    t9 = *((unsigned int *)t12);
    t10 = (1U * t9);
    memcpy(t7, t5, t10);
    goto LAB6;

LAB9:    xsi_set_current_line(49, ng0);
    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t11 = *((unsigned char *)t26);
    t27 = (t11 == (unsigned char)3);
    if (t27 == 1)
        goto LAB26;

LAB27:    t2 = (unsigned char)0;

LAB28:    if (t2 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB8;

LAB10:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t27 = (t11 == (unsigned char)2);
    if (t27 == 1)
        goto LAB32;

LAB33:    t2 = (unsigned char)0;

LAB34:    if (t2 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB8;

LAB12:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t27 = (t11 == (unsigned char)3);
    if (t27 == 1)
        goto LAB38;

LAB39:    t2 = (unsigned char)0;

LAB40:    if (t2 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB8;

LAB13:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB8;

LAB14:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t27 = (t11 == (unsigned char)2);
    if (t27 == 1)
        goto LAB44;

LAB45:    t2 = (unsigned char)0;

LAB46:    if (t2 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB8;

LAB22:;
LAB23:    xsi_set_current_line(50, ng0);
    t32 = (t0 + 4944);
    t35 = (t32 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = (unsigned char)3;
    xsi_driver_first_trans_delta(t32, 0U, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB24;

LAB26:    t25 = (t0 + 1992U);
    t28 = *((char **)t25);
    t25 = (t0 + 8524U);
    t29 = (t0 + 8610);
    t31 = (t6 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 0;
    t32 = (t31 + 4U);
    *((int *)t32) = 9;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t33 = (9 - 0);
    t9 = (t33 * 1);
    t9 = (t9 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t9;
    t34 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t28, t25, t29, t6);
    t2 = t34;
    goto LAB28;

LAB29:    xsi_set_current_line(60, ng0);
    t12 = (t0 + 4944);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_delta(t12, 1U, 1, 0LL);
    goto LAB30;

LAB32:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 8524U);
    t5 = (t0 + 8620);
    t8 = (t6 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 9;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t13 = (9 - 0);
    t9 = (t13 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t34 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t1, t5, t6);
    t2 = t34;
    goto LAB34;

LAB35:    xsi_set_current_line(65, ng0);
    t12 = (t0 + 4944);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_delta(t12, 0U, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB36;

LAB38:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 8524U);
    t5 = (t0 + 8630);
    t8 = (t6 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 9;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t13 = (9 - 0);
    t9 = (t13 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t34 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t1, t5, t6);
    t2 = t34;
    goto LAB40;

LAB41:    xsi_set_current_line(75, ng0);
    t12 = (t0 + 4944);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_delta(t12, 1U, 1, 0LL);
    goto LAB42;

LAB44:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 8524U);
    t5 = (t0 + 8640);
    t8 = (t6 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 9;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t13 = (9 - 0);
    t9 = (t13 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t34 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t1, t5, t6);
    t2 = t34;
    goto LAB46;

}

static void work_a_0309187648_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4832);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0309187648_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (1 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5136);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4848);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0309187648_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (0 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5200);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4864);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0309187648_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0309187648_3212880686_p_0,(void *)work_a_0309187648_3212880686_p_1,(void *)work_a_0309187648_3212880686_p_2,(void *)work_a_0309187648_3212880686_p_3};
	xsi_register_didat("work_a_0309187648_3212880686", "isim/tb_toggle_button_isim_beh.exe.sim/work/a_0309187648_3212880686.didat");
	xsi_register_executes(pe);
}
