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
static const char *ng0 = "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/cnt999.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1595475774_3212880686_p_0(char *t0)
{
    char t15[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    int t18;

LAB0:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t2 = (t0 + 3640);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1832U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 == 99);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t1 = (t9 == 0);
    if (t1 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t18 = (t9 + 1);
    t2 = (t0 + 3512);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t18;
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB3;

LAB5:    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 3512);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = 0;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t2 = (t0 + 6172);
    t9 = xsi_mem_cmp(t2, t4, 4U);
    if (t9 == 1)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t2 = (t0 + 6136U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t15, t4, t2, 1);
    t8 = (t0 + 2128U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    t12 = (t15 + 12U);
    t16 = *((unsigned int *)t12);
    t17 = (1U * t16);
    memcpy(t8, t5, t17);

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(40, ng0);
    t8 = (t0 + 3576);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 6176);
    t5 = (t0 + 2128U);
    t8 = *((char **)t5);
    t5 = (t8 + 0);
    memcpy(t5, t2, 4U);
    goto LAB11;

LAB15:;
LAB16:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3576);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t18 = (t9 + 1);
    t2 = (t0 + 3512);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t18;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB18:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 6180);
    t8 = (t0 + 2128U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    memcpy(t8, t2, 4U);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3576);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB19;

}


extern void work_a_1595475774_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1595475774_3212880686_p_0};
	xsi_register_didat("work_a_1595475774_3212880686", "isim/tb_cnt999_isim_beh.exe.sim/work/a_1595475774_3212880686.didat");
	xsi_register_executes(pe);
}
