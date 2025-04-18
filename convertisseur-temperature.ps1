[int]$sensconversion = read-host "1 pour Fahrenheit vers Celsius, 2 pour Celsius vers Fahrenheit"


if ( $sensconversion -eq 1){
	[decimal]$temperature = read-host "quelle temperature voulez-vous convertir?"
	[decimal]$tempavantconv = $temperature
	$temperature = ($temperature - 32) * 5/9
	write-output "$tempavantconv degres F font $temperature degres C"
	}

elseif ($sensconversion -eq 2){
	[decimal]$temperature = read-host "quelle temperature voulez-vous convertir?"
	[decimal]$tempavantconv = $temperature
	$temperature = ($temperature * 9/5) + 32
	write-output "$tempavantconv degres C font $temperature degres F"
	}

else {
	write-output "vous ne pouvez rentrer que 1 ou 2 comme valeur"
	}

Write-Output "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")