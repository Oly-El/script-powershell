[int]$randomnumber = get-random -minimum "1" -maximum "100"

[int]$guess = 0

[int]$gagner = 0 

[int]$manche = 1

while ($gagner -ne 1){

	if ($guess -eq $randomnumber){
		$gagner += 1
		}

	else {
		write-output "Manche $manche"
		$guess = read-host "Devine le nombre"
		if ($guess -lt $randomnumber){
			write-output "c'est plus grand"
			}
		elseif ($guess -gt $randomnumber){
			write-output "c'est plus petit"
			}
		else {
			write-output "Voyons voir...."
			}
		}	
	$manche += 1
	}

write-output "c'est gagné, VICTOIRE!"
Write-Output "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")