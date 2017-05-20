# Epochs-powershell
Convert various epoch times to System.DateTime times in [PowerShell](https://github.com/PowerShell/PowerShell).

```powershell

PS /home/tim/posh/Epochs-powershell> Import-Module ./Epochs

PS /home/tim/posh/Epochs-powershell> Unix(1234567890)

Friday, February 13, 2009 11:31:30 PM


PS /home/tim/posh/Epochs-powershell> Chrome(12879041490654321)

Friday, February 13, 2009 11:31:30 PM


PS /home/tim/posh/Epochs-powershell> ToUnix([datetime]"2009-02-13 23:31:30")

1234567890


PS /home/tim/posh/Epochs-powershell> ToChrome([datetime]"2009-02-13 23:31:30")

1.287904149E+16
```

## A note about environment

[I am developing this in Linux](https://oylenshpeegul.wordpress.com/2016/10/29/testing-in-powershell/). I have not tried anything in Windows or MacOS. Pull requests welcome!

## See Also

This project was originally done in [Perl](https://github.com/oylenshpeegul/Time-Moment-Epoch). See [the Time::Moment::Epoch web page](http://oylenshpeegul.github.io/Time-Moment-Epoch/) for motivation.

There are also a versions in
- [Go](https://github.com/oylenshpeegul/epochs)
- [Elixir](https://github.com/oylenshpeegul/Epochs-elixir)
- [Rust](https://github.com/oylenshpeegul/Epochs-rust)

