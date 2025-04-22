$phrase = Read-Host "Ecrivez votre phrase"

if ([string]::IsNullOrWhiteSpace($phrase) -or ($phrase -notmatch '[a-zA-Z0-9]')) {
    	Write-Output "Erreur : la saisie doit contenir au moins un mot avec des lettres ou des chiffres."
	}

else {
	$phrase = $phrase -replace "[’']", ' '
	$motsBruts = $phrase -split '\s+'
   	$mots = $motsBruts | Where-Object { $_ -match '[a-zA-Z0-9]' }
	$nombreDeMots = $mots.Count
   	Write-Output "Nombre de mots : $nombreDeMots"
	}
