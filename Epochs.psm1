
# Chrome time is the number of microseconds since 1601-01-01, which is
# 11,644,473,600 seconds before the Unix epoch.
Function Chrome ($num) {
	epoch2time $num 1000000 -11644473600
}
Function ToChrome ($dt) {
	time2epoch $dt 1000000 -11644473600
}

# Cocoa time is the number of seconds since 2001-01-01, which
# is 978,307,200 seconds after the Unix epoch.
Function Cocoa ($num) {
	epoch2time $num 1 978307200
}
Function ToCocoa ($dt) {
	time2epoch $dt 1 978307200
}

# Java time is in milliseconds since the Unix epoch.
Function Java ($num) {
	epoch2time $num 1000
}
Function ToJava ($dt) {
	time2epoch $dt 1000
}

# Mozilla time is in microseconds since the Unix epoch.
Function Mozilla ($num) {
	epoch2time $num 1000000
}
Function ToMozilla ($dt) {
	time2epoch $dt 1000000
}

# Symbian time is the number of microseconds since the year 0, which
# is 62,167,219,200 seconds before the Unix epoch.
Function Symbian ($num) {
	epoch2time $num 1000000 -62167219200
}
Function ToSymbian ($dt) {
	time2epoch $dt 1000000 -62167219200
}

# Unix time is the number of seconds since 1970-01-01.
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

[datetime]$unix_epoch = '1970-01-01 00:00:00'

Function epoch2time ($num, $d = 1, $s = 0) {
	$rem = $num % $d
	$div = ($num - $rem) / $d
	$unix_epoch.AddSeconds($div + $s)
}

Function time2epoch ($dt, $m = 1, $s = 0) {
    $et = (New-TimeSpan -Start $unix_epoch -End $dt).TotalSeconds
	$m*($et - $s)
}
