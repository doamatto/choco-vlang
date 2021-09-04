$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://github.com/vlang/v/releases/download/0.2.4/v_windows.zip'
$checksum = '8DBF0766DE9124ECF1208731B7B244286A7CB857BDB49E95D4213651EE2D973A'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
