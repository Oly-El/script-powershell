[Int]$nombrearticle = read-host "Combien d'articles voulez-vous ajouter?"
$tableau = @()
[Int]$compteurwhile = 0

while ($compteurwhile -ne $nombrearticle) {
	$compteurwhile++
	$article = read-host "entre l'article $compteurwhile que vous souhaitez ajouter à la liste de course"
	$tableau += $article
	}

[Int]$compteurforeach = 1

foreach ($élément in $tableau){
	write-output " $compteurforeach - $élément "
	$compteurforeach++
	}