/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_1152(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_18(char*, char *);
extern void execute_1155(char*, char *);
extern void execute_1156(char*, char *);
extern void execute_1157(char*, char *);
extern void execute_1158(char*, char *);
extern void execute_1159(char*, char *);
extern void execute_1160(char*, char *);
extern void execute_21(char*, char *);
extern void execute_1161(char*, char *);
extern void execute_33(char*, char *);
extern void execute_1175(char*, char *);
extern void execute_1176(char*, char *);
extern void execute_1177(char*, char *);
extern void execute_1178(char*, char *);
extern void execute_46(char*, char *);
extern void execute_1195(char*, char *);
extern void execute_1196(char*, char *);
extern void execute_1194(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_53(char*, char *);
extern void execute_1199(char*, char *);
extern void execute_1200(char*, char *);
extern void execute_1201(char*, char *);
extern void execute_1202(char*, char *);
extern void execute_1198(char*, char *);
extern void execute_56(char*, char *);
extern void execute_1204(char*, char *);
extern void execute_1205(char*, char *);
extern void execute_1206(char*, char *);
extern void execute_1207(char*, char *);
extern void execute_1208(char*, char *);
extern void execute_1209(char*, char *);
extern void execute_1210(char*, char *);
extern void execute_1211(char*, char *);
extern void execute_1203(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_1217(char*, char *);
extern void execute_1218(char*, char *);
extern void execute_1219(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_372(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_896(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_902(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_908(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_914(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_920(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_926(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_932(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_938(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_944(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_956(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_968(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_980(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1016(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1034(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1040(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1052(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1064(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1076(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1088(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1475(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1503(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1541(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1579(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1669(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1741(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1791(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1817(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[156] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_1152, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_18, (funcp)execute_1155, (funcp)execute_1156, (funcp)execute_1157, (funcp)execute_1158, (funcp)execute_1159, (funcp)execute_1160, (funcp)execute_21, (funcp)execute_1161, (funcp)execute_33, (funcp)execute_1175, (funcp)execute_1176, (funcp)execute_1177, (funcp)execute_1178, (funcp)execute_46, (funcp)execute_1195, (funcp)execute_1196, (funcp)execute_1194, (funcp)execute_49, (funcp)execute_50, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_53, (funcp)execute_1199, (funcp)execute_1200, (funcp)execute_1201, (funcp)execute_1202, (funcp)execute_1198, (funcp)execute_56, (funcp)execute_1204, (funcp)execute_1205, (funcp)execute_1206, (funcp)execute_1207, (funcp)execute_1208, (funcp)execute_1209, (funcp)execute_1210, (funcp)execute_1211, (funcp)execute_1203, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_1217, (funcp)execute_1218, (funcp)execute_1219, (funcp)execute_86, (funcp)execute_87, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_174, (funcp)execute_175, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_165, (funcp)transaction_873, (funcp)transaction_206, (funcp)transaction_241, (funcp)transaction_372, (funcp)transaction_767, (funcp)transaction_896, (funcp)transaction_902, (funcp)transaction_908, (funcp)transaction_914, (funcp)transaction_920, (funcp)transaction_926, (funcp)transaction_932, (funcp)transaction_938, (funcp)transaction_944, (funcp)transaction_956, (funcp)transaction_968, (funcp)transaction_980, (funcp)transaction_992, (funcp)transaction_1004, (funcp)transaction_1016, (funcp)transaction_1034, (funcp)transaction_1040, (funcp)transaction_1052, (funcp)transaction_1064, (funcp)transaction_1076, (funcp)transaction_1088, (funcp)transaction_1100, (funcp)transaction_1118, (funcp)transaction_1130, (funcp)transaction_1136, (funcp)transaction_1142, (funcp)transaction_1148, (funcp)transaction_1154, (funcp)transaction_1160, (funcp)transaction_1166, (funcp)transaction_1172, (funcp)transaction_1178, (funcp)transaction_1204, (funcp)transaction_1236, (funcp)transaction_1262, (funcp)transaction_1288, (funcp)transaction_1328, (funcp)transaction_1366, (funcp)transaction_1405, (funcp)transaction_1461, (funcp)transaction_1468, (funcp)transaction_1475, (funcp)transaction_1482, (funcp)transaction_1489, (funcp)transaction_1496, (funcp)transaction_1503, (funcp)transaction_1510, (funcp)transaction_1517, (funcp)transaction_1541, (funcp)transaction_1579, (funcp)transaction_1623, (funcp)transaction_1669, (funcp)transaction_1695, (funcp)transaction_1741, (funcp)transaction_1791, (funcp)transaction_1817};
const int NumRelocateId= 156;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TB_Nano_Processor_func_synth/xsim.reloc",  (void **)funcTab, 156);
	iki_vhdl_file_variable_register(dp + 335880);
	iki_vhdl_file_variable_register(dp + 335936);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TB_Nano_Processor_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/TB_Nano_Processor_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 341232, dp + 342576, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 341288, dp + 342744, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/TB_Nano_Processor_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TB_Nano_Processor_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TB_Nano_Processor_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
