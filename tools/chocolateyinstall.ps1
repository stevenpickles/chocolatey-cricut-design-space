
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staticcontent.cricut.com/a/software/win32-native/Cricut%20Design%20Space%20Install%20v6.2.100.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'cricutdesignspace*'

  checksum      = '04DC285D4CED444E0D01AACEC88E59677315E6CCC0C31A8755297ECCF16D67CF'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








