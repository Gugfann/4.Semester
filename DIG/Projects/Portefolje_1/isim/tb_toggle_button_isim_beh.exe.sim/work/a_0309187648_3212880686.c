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

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0309187648_3212880686_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    int t25;
    int t26;
    int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4216);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = (9 - 8);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 8;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 8);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t3, t13, (char)99, t10, (char)101);
    t17 = (9U + 1U);
    t18 = (10U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 4344);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 10U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 7471);
    t16 = xsi_mem_cmp(t1, t3, 3U);
    if (t16 == 1)
        goto LAB8;

LAB15:    t8 = (t0 + 7474);
    t23 = xsi_mem_cmp(t8, t3, 3U);
    if (t23 == 1)
        goto LAB9;

LAB16:    t12 = (t0 + 7477);
    t24 = xsi_mem_cmp(t12, t3, 3U);
    if (t24 == 1)
        goto LAB10;

LAB17:    t15 = (t0 + 7480);
    t25 = xsi_mem_cmp(t15, t3, 3U);
    if (t25 == 1)
        goto LAB11;

LAB18:    t20 = (t0 + 7483);
    t26 = xsi_mem_cmp(t20, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB19:    t22 = (t0 + 7486);
    t28 = xsi_mem_cmp(t22, t3, 3U);
    if (t28 == 1)
        goto LAB13;

LAB20:
LAB14:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);

LAB7:    goto LAB3;

LAB5:    xsi_size_not_matching(10U, t17, 0);
    goto LAB6;

LAB8:    xsi_set_current_line(37, ng0);
    t29 = (t0 + 1192U);
    t30 = *((char **)t29);
    t10 = *((unsigned char *)t30);
    t18 = (t10 == (unsigned char)3);
    if (t18 == 1)
        goto LAB25;

LAB26:    t2 = (unsigned char)0;

LAB27:    if (t2 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB7;

LAB9:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB7;

LAB10:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t18 = (t10 == (unsigned char)2);
    if (t18 == 1)
        goto LAB37;

LAB38:    t2 = (unsigned char)0;

LAB39:    if (t2 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB7;

LAB11:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t18 = (t10 == (unsigned char)3);
    if (t18 == 1)
        goto LAB49;

LAB50:    t2 = (unsigned char)0;

LAB51:    if (t2 != 0)
        goto LAB46;

LAB48:
LAB47:    goto LAB7;

LAB12:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB7;

LAB13:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t18 = (t10 == (unsigned char)2);
    if (t18 == 1)
        goto LAB61;

LAB62:    t2 = (unsigned char)0;

LAB63:    if (t2 != 0)
        goto LAB58;

LAB60:
LAB59:    goto LAB7;

LAB21:;
LAB22:    xsi_set_current_line(38, ng0);
    t36 = (t0 + 4408);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)3;
    xsi_driver_first_trans_delta(t36, 0U, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB23;

LAB25:    t29 = (t0 + 1992U);
    t31 = *((char **)t29);
    t29 = (t0 + 7489);
    t33 = 1;
    if (10U == 10U)
        goto LAB28;

LAB29:    t33 = 0;

LAB30:    t2 = t33;
    goto LAB27;

LAB28:    t5 = 0;

LAB31:    if (t5 < 10U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t34 = (t31 + t5);
    t35 = (t29 + t5);
    if (*((unsigned char *)t34) != *((unsigned char *)t35))
        goto LAB29;

LAB33:    t5 = (t5 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(48, ng0);
    t14 = (t0 + 4408);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_delta(t14, 1U, 1, 0LL);
    goto LAB35;

LAB37:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 7499);
    t33 = 1;
    if (10U == 10U)
        goto LAB40;

LAB41:    t33 = 0;

LAB42:    t2 = t33;
    goto LAB39;

LAB40:    t5 = 0;

LAB43:    if (t5 < 10U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t9 = (t4 + t5);
    t12 = (t1 + t5);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB41;

LAB45:    t5 = (t5 + 1);
    goto LAB43;

LAB46:    xsi_set_current_line(53, ng0);
    t14 = (t0 + 4408);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_delta(t14, 0U, 1, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB47;

LAB49:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 7509);
    t33 = 1;
    if (10U == 10U)
        goto LAB52;

LAB53:    t33 = 0;

LAB54:    t2 = t33;
    goto LAB51;

LAB52:    t5 = 0;

LAB55:    if (t5 < 10U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t9 = (t4 + t5);
    t12 = (t1 + t5);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB53;

LAB57:    t5 = (t5 + 1);
    goto LAB55;

LAB58:    xsi_set_current_line(63, ng0);
    t14 = (t0 + 4408);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_delta(t14, 1U, 1, 0LL);
    goto LAB59;

LAB61:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 7519);
    t33 = 1;
    if (10U == 10U)
        goto LAB64;

LAB65:    t33 = 0;

LAB66:    t2 = t33;
    goto LAB63;

LAB64:    t5 = 0;

LAB67:    if (t5 < 10U)
        goto LAB68;
    else
        goto LAB66;

LAB68:    t9 = (t4 + t5);
    t12 = (t1 + t5);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB65;

LAB69:    t5 = (t5 + 1);
    goto LAB67;

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

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4472);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4232);
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

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (1 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4536);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4248);
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

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (0 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4600);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4264);
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
