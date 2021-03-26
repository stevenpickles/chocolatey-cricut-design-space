
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staticcontent.cricut.com/a/software/win32-native/Cricut%20Design%20Space%20Install%20v6.6.121.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'cricutdesignspace*'

  checksum      = 'E19EF45C5836A2742CEA1A81DF4B97D00CA3594CB0AC92FD413BD108BFA9F963'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








