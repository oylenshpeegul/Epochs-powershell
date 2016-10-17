
[datetime]$unix_epoch = '1970-01-01 00:00:00'

Function Unix ($num) {
    epoch2time($num)
}
Function ToUnix ($dt) {
    time2epoch($dt)
}

# Windows date time (e.g., .NET) is the number of hectonanoseconds
# (100 ns) since 0001-01-01, which is 62,135,596,800 seconds before
# the Unix epoch.
Function WindowsDate ($num) {
	epoch2time $num 10000000 -62135596800
}
Function ToWindowsDate ($dt) {
	time2epoch $dt 10000000 -62135596800
}

# Windows file time (e.g., NTFS) is the number of hectonanoseconds
# (100 ns) since 1601-01-01, which is 11,644,473,600 seconds before
# the Unix epoch.
Function WindowsFile ($num) {
	epoch2time $num 10000000 -11644473600
}
Function ToWindowsFile ($dt) {
	time2epoch $dt 10000000 -11644473600
}

Function epoch2time ($num, $d = 1, $s = 0) {
	$rem = $num % $d
	$div = ($num - $rem) / $d
	$unix_epoch.AddSeconds($div + $s)
}

Function time2epoch ($dt, $m = 1, $s = 0) {
    $et = (New-TimeSpan -Start $unix_epoch -End $dt).TotalSeconds
	$m*($et - $s)
}
