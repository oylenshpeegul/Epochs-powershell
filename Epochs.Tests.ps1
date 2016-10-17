
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

Describe "Chrome tests" {
	Context "12879041490000000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 12879041490000000
		It "Chrome($epoch)" {
			Chrome($epoch) | Should Be $dt
		}
		It "ToChrome('2009-02-13 23:31:30')" {
			ToChrome($dt) | Should Be $epoch
		}
	}
}

Describe "Cocoa tests" {
	Context "256260690 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 256260690
		It "Cocoa($epoch)" {
			Cocoa($epoch) | Should Be $dt
		}
		It "ToCocoa('2009-02-13 23:31:30')" {
			ToCocoa($dt) | Should Be $epoch
		}
	}
}

Describe "Java tests" {
	Context "1234567890000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 1234567890000
		It "Java($epoch)" {
			Java($epoch) | Should Be $dt
		}
		It "ToJava('2009-02-13 23:31:30')" {
			ToJava($dt) | Should Be $epoch
		}
	}
}

Describe "Mozilla tests" {
	Context "1234567890000000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 1234567890000000
		It "Mozilla($epoch)" {
			Mozilla($epoch) | Should Be $dt
		}
		It "ToMozilla('2009-02-13 23:31:30')" {
			ToMozilla($dt) | Should Be $epoch
		}
	}
}

Describe "Symbian tests" {
	Context "63401787090000000 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 63401787090000000
		It "Symbian($epoch)" {
			Symbian($epoch) | Should Be $dt
		}
		It "ToSymbian('2009-02-13 23:31:30')" {
			ToSymbian($dt) | Should Be $epoch
		}
	}
}

Describe "Unix tests" {
	Context "1234567890 is 2009-02-13 23:31:30" {
		[datetime]$dt = '2009-02-13 23:31:30'
		$epoch = 1234567890
		It "Unix($epoch)" {
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
		It "WindowsDate($epoch)" {
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
		It "WindowsFile($epoch)" {
			WindowsFile($epoch) | Should Be $dt
		}
		It "ToWindowsFile('2009-02-13 23:31:30')" {
			ToWindowsFile($dt) | Should Be $epoch
		}
	}
}

