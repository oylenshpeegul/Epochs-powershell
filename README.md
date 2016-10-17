# Epochs-powershell
Convert various epoch times to System.DateTime times in [PowerShell](https://github.com/PowerShell/PowerShell).

## A note about environment

I am developing this in Linux. If I clone this repository, change to
the directory, and start PowerShell

```bash
git clone https://github.com/oylenshpeegul/Epochs-powershell.git
cd Epochs-powershell
powershell
```

Then the tests don't work. [Pester](https://github.com/pester/Pester) requires ```$env:TEMP``` and I have an empty environment, apparently. So I just set it to ```/tmp```.

```powershell
$env:TEMP = '/tmp'
```

After that, the tests work!

```powershell
Import-Module ./Epochs
Invoke-Pester
```

**N.B.** As you're working, you need to ```-force``` the reload.

```powershell
Import-Module ./Epochs -force
Invoke-Pester
```

I have not tried anything in Windows or MacOS. Pull requests welcome!

## See Also

This project was originally done [in Perl](https://github.com/oylenshpeegul/Epochs-perl). See [its gh-page](http://oylenshpeegul.github.io/Epochs-perl/) for motivation.

There is also a version [in Go](https://github.com/oylenshpeegul/epochs).

There is one partially completed [in Elixir](https://github.com/oylenshpeegul/Epochs-elixir).

