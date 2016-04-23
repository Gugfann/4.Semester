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
static const char *ng0 = "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_2/randomizer.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_3813661135_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1608U);
    t3 = *((char **)t1);
    t1 = (t0 + 3112);
    t4 = (t1 + 56U);
    t10 = *((char **)t4);
    t11 = (t10 + 56U);
    t18 = *((char **)t11);
    memcpy(t18, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1608U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t0 + 1608U);
    t11 = *((char **)t10);
    t12 = (30 - 31);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    t17 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t9, t16);
    t18 = (t0 + 1728U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    *((unsigned char *)t18) = t17;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1608U);
    t3 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t4 = xsi_get_transient_memory(31U);
    memcpy(t4, t1, 31U);
    t10 = (t0 + 1608U);
    t11 = *((char **)t10);
    t13 = (31 - 31);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    memcpy(t10, t4, 31U);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1728U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1608U);
    t4 = *((char **)t1);
    t5 = (0 - 31);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t4 + t8);
    *((unsigned char *)t1) = t2;
    goto LAB3;

}


extern void work_a_3813661135_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3813661135_3212880686_p_0};
	xsi_register_didat("work_a_3813661135_3212880686", "isim/tb_randomizer_isim_beh.exe.sim/work/a_3813661135_3212880686.didat");
	xsi_register_executes(pe);
}
