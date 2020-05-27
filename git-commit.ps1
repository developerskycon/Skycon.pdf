$shellExecutionPath = $(Get-Item $($MyInvocation.MyCommand.Path)).DirectoryName

Set-Location -Path $shellExecutionPath

$lock_file = $shellExecutionPath+"\git\index.lock"        
if([System.IO.File]::Exists($lock_file)){
    Remove-Item $lock_file -Force
}

git credential-manager delete https://github.com

git config credential.helper store

git init
git add .
git status
git commit -m '.'

git remote add origin https://github.com/developerskycon/Skycon.pdf.git
git push -f origin master

pause