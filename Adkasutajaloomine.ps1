# Location of AD user file
$file = "C:\Users\Administrator\Documents\adkasutajad.csv"
# import file content
$users = Import-Csv $file -Encoding Default -Delimiter ";"
# foreach user data dow in file
foreach ($user in $users){
        # username in firstename.lastname
        $username = $user.FirstName + "." + $user.LastName
        $username = $username.ToLower()
        $username = Translit($username)
        # user principal name
        $upname = $username + "sv-kool.local"
        echo $username
}
# function translit UTF-8 characters to LATIN
function Translit {
                    #function use as parameters string to translit
                   param(
                           [string] $inputstring
                           )
    #define the characters wich have to be translited
        $Translit = @{
         [char] 'ä' = "a"
         [char] 'ö' = "o"
         [char] 'ü' = "u"
         [char] 'õ' = "o"
         }
    # create translited output
    $outputstring=""
    # transfer string to array of characters and by character
    foreach ($character in $inputcharacter = $inputstring.ToCharArray())
    {
        # if cjaracter os exsits in the list of characters for transliting
        if ($Translit[$character] -cne $null ){
        $outputstring += $Translit[$character]
        } else {
            # otherwise add the initial character
            $outputstring += $character
        }
    }
    Write-Output $outputstring
}