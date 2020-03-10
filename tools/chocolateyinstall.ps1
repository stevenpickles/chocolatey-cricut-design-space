
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staticcontent.cricut.com/a/software/win32-native/Cricut%20Design%20Space%20Install%20v5.6.19.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'cricutdesignspace*'

  checksum      = 'E9096A6E69A46AE816075392B722436237811A48E570C5007C9822B7C31B2753'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








