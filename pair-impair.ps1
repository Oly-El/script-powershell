$nombrenombre = read-host "combien de nombres veux-tu vérifier?"
$tableau = @()
$compteur = 0

while ($compteur -ne $nombrenombre){
	$compteur++
	$nombres = read-host "entre le $compteur e nombres à vérifier"
	$tableau += $nombres
	}

foreach ($element in $tableau){
	if ($element % 2 -ne 0){
		write-output "$element est un nombre impair"
		}
	else{
		write-output "$element est un nombre pair"
		}
	}