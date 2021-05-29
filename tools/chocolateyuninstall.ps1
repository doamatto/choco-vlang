$ErrorActionPreference = 'Stop';
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'vlang*'

$uninstalled = $false

Uninstall-ChocolateyPackage $packageName 
