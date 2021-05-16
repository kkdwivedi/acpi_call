#!/bin/bash

case "$@" in
	"on")
	echo '\_SB.PCI0.LPCB.EC0.VPC0.SBMC 3' | tee /proc/acpi/call
	exit
	;;

	"off")
	echo '\_SB.PCI0.LPCB.EC0.VPC0.SBMC 5' | tee /proc/acpi/call
	exit
	;;

	*)
	echo "Legion 5 conservation_mode on/off"
	echo "On at 55/60, Off at 95/100"
	exit
	;;
esac
