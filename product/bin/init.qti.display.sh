#! /system/bin/sh
#==============================================================================
#       init.qti.display.sh
#
#  Copyright (c) 2020-2021 Qualcomm Technologies, Inc.
#  All Rights Reserved.
#  Confidential and Proprietary - Qualcomm Technologies, Inc.
#===============================================================================

if [ -f /sys/devices/soc0/soc_id ]; then
    soc_hwid=`cat /sys/devices/soc0/soc_id` 2> /dev/null
else
    soc_hwid=`cat /sys/devices/system/soc/soc0/id` 2> /dev/null
fi

target=`getprop ro.board.platform`
case "$target" in
    "lahaina")
        #Set property to differentiate Lahaina & Cedros
        #SOC ID for Lahaina is 415, Lahaina P is 439, Lahaina-ATP is 456
        #soc ID for SM8325 is 501, for SM8325P 502
        case "$soc_hwid" in
           415|439|456|501|502)
               setprop vendor.display.disable_rounded_corner 0
        esac
        ;;
    "lito")
        #Set property to differentiate LITO & LAGOON
        #SOC ID for Lito is 400
        case "$soc_hwid" in
           400)
               setprop vendor.display.disable_rounded_corner 1
        esac
        ;;
    "bengal")
        #Set property to differentiate Bengal and Khaje
        #SOC ID for Bengal is 417, 420,444 and 445
        case "$soc_hwid" in
           417|420|444|445)
               setprop vendor.display.disable_rounded_corner 1
        esac
        ;;
esac
