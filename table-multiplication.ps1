[int]$nombre = read-host "choisissez un chiffre ou un nombre"

$tableau = @(1,2,3,4,5,6,7,8,9,10)

foreach ($element in $tableau){
	$calcul = $nombre * $element
	write-output "$nombre X $element = $calcul"
	}


Write-Output "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")