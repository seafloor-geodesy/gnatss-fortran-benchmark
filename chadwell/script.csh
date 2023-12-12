#!/bin/csh


#cat \
#../211/WG_20220730/pxp_tt_j2k \
#../212/WG_20220731/pxp_tt_j2k \
#../213/WG_20220801/pxp_tt_j2k \
#../214/WG_20220802/pxp_tt_j2k \
#../215/WG_20220803/pxp_tt_j2k \
#../216/WG_20220804/pxp_tt_j2k \
# > pxp_tt_j2k
 
#cat \
#../211/WG_20220730/pxp_tt \
#../212/WG_20220731/pxp_tt \
#../213/WG_20220801/pxp_tt \
#../214/WG_20220802/pxp_tt \
#../215/WG_20220803/pxp_tt \
#../216/WG_20220804/pxp_tt \
# > pxp_tt

#cat \
#../211/posfilter/POS_FREED_TRANS_TWTT \
#../212/posfilter/POS_FREED_TRANS_TWTT \
#../213/posfilter/POS_FREED_TRANS_TWTT \
#../214/posfilter/POS_FREED_TRANS_TWTT \
#../215/posfilter/POS_FREED_TRANS_TWTT \
#../216/posfilter/POS_FREED_TRANS_TWTT \
# > POS_FREED_TRANS_TWTT



set sv_file_  = (1 2 3)
set gps_file = (1 2)

set label         = NDP1_center
set sfg_file      = NDP1.master
set pxp_data      = pxp_tt
set gps_file[1]   = POS_FREED_TRANS_TWTT
set deletes_file  = deletns.dat 

set sv_file_[1]   =  ../ctd/NDP1_Ch_Mi_2022_fit
set sv_file_[2]   =  ../ctd/NDP1_Ch_Mi_2022_fit
set sv_file_[3]   =  ../ctd/NDP1_Ch_Mi_2022_fit
set tide_file     =  ../tide_model/NDP1_22a_tm.osu.tpxo72.2010

set dist_limit     = 150       ## meters from center to exclude
#set residual_limit =  250       ## centimeter residual to exclude
set residual_limit =  40       ## centimeter residual to exclude

proc_sfgsolve_center_WG.csh $label "Ch_Mi" "scale" "xy_no" "freed"  $sfg_file $pxp_data "$gps_file[1] $gps_file[2]"  $deletes_file  "$sv_file_[1] $sv_file_[2] $sv_file_[3]" $tide_file $dist_limit $residual_limit


filtflag.csh

stop

