# calculatrice tp 


Write-Host "                         ,.
                        (_|,.
                       ,' /, )_______   _
                    __j o``-'        `.'-)'
                   ()                 \'
                    `-j                |
                      `-._(           /
                  hjw    |_\  |--^.  /
                        /_]'|_| /_)_/
                           /_]'  /_]' 
                          
                       
                       
                                          "
[int]$nb1 = Read-Host "Saisir votre premier nombre " 

$op = Read-Host " Saisir votre opérateur + ; - ; * ; / "

[int]$nb2 = Read-Host " Saisir votre deuxieme nombre "


switch ($op)
{
#LE PLUS +
  +
  { $result = $nb1 + $nb2 } 
  -
  { $result = $nb1 - $nb2 }
  *
  { $result = $nb1 * $nb2 }
  /
  { $result = $nb1 / $nb2 }
  
  Default
  {
  
Write-Host "what are you doing bro ?"
  }
} 
Write-Host "LE RESULTAT est: "$result 


start-sleep -s 120