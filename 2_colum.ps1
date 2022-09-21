$count=0
$c=Get-Content -Path .\JA.xhtml -Encoding UTF8
ForEach($item in $c){
if($item -match '<div class=".*file_5"id="pdfhtmlmain\d_5">'){
$count=$count+1
$item >> item_$count.txt
}
else{
$item>>item_$count.txt}
}

for ($i=1; $i -le 35; $i++) {
$item2=Get-Content -Path .\item_$i.txt
    
    
    forEach($item in $item2){
        if($item -match 'left:[0-9]\.\d+em'){
            if($item -match '<span.*?>(?<text>.*)<\/span'){
                    $Matches.text >> 00117.txt}
        
        
        }

    }

    ForEach($item in $item2){
        if($item -match 'left:[2][0-9]\.\d+em'){
            if($item -match '<span.*?>(?<text>.*)<\/span'){
                    $Matches.text >> 00117.txt}
         
            }
      }

}

$0017=Get-Content -Path .\00117.txt -Encoding UTF8
$reg0=[regex]'(<.*?>)'
$reg1=[regex]'(&#...;)'

$0017 -replace $reg0,''-replace $reg1,''>>001170.txt

$00170=Get-Content -Path .\001170.txt -Encoding UTF8
$reg2=[regex]'-(\s)?\r\n'
$00170 -replace $reg2,''>>001171.txt