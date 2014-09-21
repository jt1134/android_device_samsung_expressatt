#!/system/bin/sh

LOG_TAG="qcom-bluetooth"
LOG_NAME="${0}:"

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

BDADDR=`cat /efs/bluetooth/bt_addr`

logi "BDADDR: $BDADDR"

if [ $BDADDR == "" ]; then
  logwrapper /system/bin/hci_qcomm_init -e -p 2 -vv
else
  logwrapper /system/bin/hci_qcomm_init -b $BDADDR -e -p 2 -vv
fi

case $? in
  0) logi "Bluetooth QSoC firmware download succeeded";;
  *) failed "Bluetooth QSoC firmware download failed" $?;
     setprop bluetooth.status off;
     exit $?;;
esac

logi "start bluetooth smd transport"

exit 0
