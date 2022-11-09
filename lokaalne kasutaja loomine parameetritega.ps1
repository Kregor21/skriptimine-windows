#vajalikud parameetrid
param(
$kasutajanimi,
$taisnimi,
$kontokirjeldus
)
#loome kasutaja jaoks parooli
$kasutajaparool = ConvertTo-SecureString "Qwerty12" -AsPlainText -Force
# loome kasutaja
New-LocalUser $kasutajanimi -Password $kasutajaparool -FullName $taisnimi -Description $kontokirjeldus