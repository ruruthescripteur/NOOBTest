"	
                              .___.
          /)               ,-^     ^-. 
         //               /           \
.-------| |--------------/  __     __  \-------------------.__
|WMWMWMW| |>>>>>>>>>>>>> | />>\   />>\ |>>>>>>>>>>>>>>>>>>>>>>:>
`-------| |--------------| \__/   \__/ |-------------------'^^
         \\               \    /|\    /
          \)               \   \_/   /
                            |       |
                            |+H+H+H+|
                            \       /"



#ini

[int]$user = 0
[int]$ordi = 0


do{

#tab ppc
$tab = ("Pierre","Papier","Ciseaux")

    echo "+------------------+"
    echo "|  Pierre          |"
    echo "|  Papier          |"
    echo "|  Ciseaux         |"
    echo "+------------------+"


#tab utilisateur
do{
$wrong = 0
$tabuser = read-host " Pierre, Papier Ciseaux? "

switch ($tabuser){
    "Pierre" {$tab = $tab[0]}
    "Papier" {$tab = $tab[1]}
    "Ciseaux"{$tab = $tab[2]}
    default {Write-Host "wrong value"
    $wrong=1}
        }
    
}while ($wrong -eq 1)
    
#tabpc 
$tabpc = ("Pierre","Papier","Ciseaux")


#réponse IA
$tabordi = Get-random $tabpc  
$tabordi

#résultats 
if ($tabuser -eq "Pierre" -and $tabordi -eq "Papier") {write-host "Ordi gagne"
 $ordi++}

elseif($tabuser -eq "Pierre" -and $tabordi -eq "Ciseaux") {write-host "User gagne"
 $user++}

elseif($tabuser -eq "Papier" -and $tabordi -eq "Ciseaux") {write-host "Ordi gagne"
 $ordi++}

elseif($tabuser -eq "Papier" -and $tabordi -eq "Pierre") {write-host "User gagne"
 $user++}

elseif($tabuser -eq "Ciseaux" -and $tabordi -eq "Pierre") {write-host "Ordi gagne"
 $ordi++}

elseif($tabuser -eq "Ciseaux" -and $tabordi -eq "Papier") {write-host "User gagne"
 $user++}

else {write-host "Equality"}

#score

write-host " Ordi à $ordi points et User à $user points"

#si l'un des joueur à 5 points alors quitter sinon continuer

if (($ordi -eq 5) -or ($user -eq 5)) {exit 0}
else {}

} while ($true)
