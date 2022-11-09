echo $args
#kontroll parameetri arvudele
if($args.Count -ne 3){
 echo ".\skriptifailinimi.ps1 kasutajanimi taisnimi kirjeldus"
} else {
        $kasutajanimi = $args[0]
        $taisnimi = $args[1]
        $kontokirjeldus = $args[2]
#loome kasutaja jaoks parooli
$kasutajaparool = ConvertTo-SecureString "Qwerty12" -AsPlainText -Force
# loome kasutaja
New-LocalUser $kasutajanimi -Password $kasutajaparool -FullName $taisnimi -Description $kontokirjeldus
}