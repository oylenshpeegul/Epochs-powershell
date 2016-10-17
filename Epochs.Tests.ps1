
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

$manifestPath   = "$here/Epochs.psd1"

Describe -Tags 'VersionChecks' "Epochs manifest" {
    $script:manifest = $null
    It "has a valid manifest" {
        {
            $script:manifest = Test-ModuleManifest -Path $manifestPath -ErrorAction Stop -WarningAction SilentlyContinue
        } | Should Not Throw
    }

    It "has a valid name in the manifest" {
        $script:manifest.Name | Should Be Epochs
    }

}

Describe "Unix tests" {
	Context "1234567890 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 1234567890
		It "Unix(1234567890)" {
			Unix($epoch) | Should Be $dt
		}
		It "ToUnix('2009-02-13 23:31:30')" {
			ToUnix($dt) | Should Be $epoch
		}
	}
}

Describe "Windows date tests" {
	Context "633701646900000000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 633701646900000000
		It "WindowsDate(633701646900000000)" {
			WindowsDate($epoch) | Should Be $dt
		}
		It "ToWindowsDate('2009-02-13 23:31:30')" {
			ToWindowsDate($dt) | Should Be $epoch
		}
	}
}

Describe "Windows file tests" {
	Context "128790414900000000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 128790414900000000
		It "WindowsFile(633701646900000000)" {
			WindowsFile($epoch) | Should Be $dt
		}
		It "ToWindowsFile('2009-02-13 23:31:30')" {
			ToWindowsFile($dt) | Should Be $epoch
		}
	}
}

