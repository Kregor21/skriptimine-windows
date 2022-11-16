#määrame kasutajale parool
$Kasutajaparool = ConvertTo-SecureString 'Parool11!' -Asplaintext -force
#kasutaja andmed
$Eesnimi = Read-host "Sisesta oma eesnimi"
$Perenimi = Read-Host "Sisesta oma perenimi"
#$kasutajnime sätestamine
$KasutajaNimi = $Eesnimi.ToLower() + " " + $Perenimi.ToLower()
#$täisnimi
$TaisNimi =$Eesnimi + " " + $Perenimi
#$kontokirjeldus
#kasutajanime confirmimine? write-outputiga
Write-Output "kustutatav kasutaja on $($KasutajaNimi)"
#lylitame systeemi veateate valja
$ErrorActionPreference = "Silentlycontinue"
#kasutaja loomise command
Remove-Localuser $Kasutajanimi
#kontroll
if(!$?){
        Write-Output "Tekkinud probleem kasutaja kustutamisega"
        }
#systeemi teaded tagasi sisse
$ErrorActionPreference = "stop"