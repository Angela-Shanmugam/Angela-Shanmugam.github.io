$Host.UI.RawUI.ForegroundColor = "White"

$ProcessName = "Notepad"
$Process = Notepad
$Location = Get-Location

KillThatProcess ($ProcessName)

Function KillThatProcess ($ProcessName)
{
    $NumProcesses = (Get-Process -Name Notepad).Count
   
    Write-Host("There are " + $NumProcesses + " processes with the name " + $ProcessName + ", proceed?") -ForegroundColor Cyan
    
    Write-Host("Y/N : ") -NoNewLine -ForegroundColor Red
   
    $UserInput = Read-Host

    if ($UserInput -eq 'y')
        {
            Stop-Process -Name Notepad
        }
    if ($UserInput -ne 'y')
        {
            Write-Host "Cancelled" -ForegroundColor Red
        }
}

Bamboozle ($Location)

Function Bamboozle ($Location)
{
   $Letter= ((65..89) | Get-Random -Count 1 | % {[char]$_})
   
   Write-Host "Your random letter is: " -NoNewLine -ForegroundColor Cyan
   
   Write-Host $Letter -ForegroundColor Red

   Get-ChildItem -File $Location\[$Letter]* | where {!$_.PsIsContainer} | Remove-Item -WhatIf

   Write-Host "                      
                      ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                      ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                      ⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿
                      ⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿⣿
                      ⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿⣿
                      ⣿⣿⣿⣿⣷⣄⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿
                      ⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿⣿⣿
                      ⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⢰⣹⡆⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿
                      ⣿⣿⣿⣿⠃⠀ ⠀⠉⠁⠀ ⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿
                      ⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀ ⠀⢾⣿⣷⠀⢸⣿⣿⣿⣿
                      ⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄ ⢀ ⠀⠀⠀⠀⠉⠁⠀ ⣿⣿⣿⣿⣿
                      ⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿
                      ⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿" -ForegroundColor Yellow

}
