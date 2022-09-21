$m= Get-Content -path .\1test.txt

ForEach($item in $m){
    if($item -match '&#\d+;'){
    $matches.Values>>special1.txt
    }
   }

$spe= Get-Content -path .\special1.txt
$spe| Sort-Object | Get-Unique  >> UNIQ.txt

$uniq= Get-Content -path .\UNIQ.txt
ForEach($item in $uniq){
       '$reg'+$item.ReadCount+"=[regex]'("+$item+")'">>end02.txt

   }
