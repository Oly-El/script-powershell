$nom = read-host "quel est votre nom?"

$prenom = read-host "quel est votre prenom?"

$age = read-host "quel âge allez-vous avoir cette année?"

$anneeactuelle = get-date -format "yyyy"
$anneenaissance = $anneeactuelle - $age

write-output "vous vous appelez $prenom $nom, vous aurez $age en $anneeactuelle donc vous etes né(e) en $anneenaissance "

Write-Output "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")