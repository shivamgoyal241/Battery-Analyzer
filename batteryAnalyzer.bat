@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
echo "Battery Analyzer by Shivam"
powercfg /batteryreport /output "C:\battery_report.html"
start C:\battery_report.html
pause

