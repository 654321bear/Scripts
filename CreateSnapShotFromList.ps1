Add-PSSnapin VMware.VimAutomation.Core
Connect-VIServer -Server ALNS0080 

$a = Get-Date
$snapshotName = "BeforePatch_" + $a.Month + "_" + $a.Day + "_" + $a.Year
$snapdescription = "BeforePatch_" + $a.Month + "_" + $a.Day + "_" + $a.Year
$vmlist = Get-Content C:\Users\f02983\Desktop\Patching\Servers.txt
foreach($VM in $VMlist) {    New-Snapshot -VM $vm -Name $snapshotName -Description $snapdescription
 }
Disconnect-VIServer -Confirm:$false  