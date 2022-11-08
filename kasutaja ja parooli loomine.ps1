#Loome kasutajale parooli
$kasutajaparool = ConvertTo-SecureString "Qwerty12" -ASPlainText -force
#Loon Kasutaja
New-LocalUser "kasutaja1" -Password $kasutajaparool -FullName "esimene kasutaja" -Description "Local account"