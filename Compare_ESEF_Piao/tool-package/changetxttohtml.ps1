$m = Get-Content -Path 
ForEach($item in $m){
if($item -eq " "){"<br>">>01.txt}
elseif($item -match '(\d\d*)(\s{3})'){
"</p><p>"+$item.ma>>01.txt}
elseif($item -match '\([a-z]\)\s{3}'){
"</p><p class=indent>"+$item>>01.txt}
else {$item>>01.txt}}