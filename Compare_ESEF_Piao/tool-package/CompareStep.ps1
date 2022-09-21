cd OneDrive - EY\Documents\Working\ESEF\Beiersdorf AG
********************************************
cd 'C:\Users\GQ424BM\OneDrive - EY\Documents'
$m= Get-Content -path .\JA.xhtml -Encoding UTF8
******************************
换行替换<br> 
$reg6=[regex]'(<br..*?>)'
$test01= Get-Content -path .\p01_test.txt -Encoding UTF8
 $test01 -replace $reg6,"`n">>body_replace01.txt
********************************
留有中间<span class >
ForEach($item in $m){
>> $A=$item|Select-String -AllMatches -Pattern '<span.*?>(.*?)(<\/span)'
>> if($A.Matches.Groups[1].Success){$A.matches.Groups[1].Value>>text5.txt}
>> }
*****************************************************
留有paragraph中间
ForEach($item in $m){
>> if($item -match '<p.*?>(?<text>.*)<\/p'){
>> $matches.text>>p01_test.txt}
>> }
*******************************************************
留有span中间

 ForEach($item in $m){
>> if($item -match '<span.*?>(?<text>.*?)<\/span'){
>> $matches.text>>test6.txt}
>> } 

********************************************************

<span xmlns="http://www.w3.org/1999/xhtml" class="stl_05 stl_06">KONZERNLAGEBERI<span class="stl_07">CHT  </span></span>
(<span.*?>)(\w+)(<span.*?>)(\w+) miltiline
/<sp.*?>(.*?)<\/span>/

*******************************************
用改网站把pdf转变为word，docx
https://tools.pdf24.org/de/pdf-in-word
把word变为plain text 选项 other encoding utf8 options 不用选
word 比较

*********************************************
$m= Get-Content -path .\JA.xhtml -Encoding UTF8
ForEach($item in $m){
if($item -match '<span.*?>(?<text>.*)<\/span'){
$matches.text>>test01.txt}
}
$test01= Get-Content -path .\test01.txt -Encoding UTF8
$reg0=[regex]'(<.*?>)'
$reg1=[regex]'(&#...;)'
$reg2=[regex]'( ;)'
$test01 -replace $reg0,''-replace $reg1,''-replace $reg2,''>>test02.txt
cp test02.txt test03.doc
cp 源文件 to .doc
word COMPAIR
********************************************
找到特定的一页
$m= Get-Content -path .\JA.xhtml -Encoding UTF8
(<.*\n\s*)+<\/div>
$teil=$m -match '</div><div class=".*?" id="pdfhtmlmain.*?_5">'
ForEach($item in $teil){
>> "**********";$item}

 $m -match 'left:24'

---------------------------------
ForEach($item in $c){
>> "***********"
>> if($item -match '\t+</?div>'){
>> $count
>> New-Item -Path . -Name "$count.txt" -ItemType "file"
>> $item>>$count.txt
>> $count=$count+1}
>> }
>>---------------------------
ForEach($item in $c){
>>
>> if($item -match '\t+</div><div class=".*" id="pdfhtmlmain'){
>> $count
>> $item
>> $count=$count+1}
>> }
-------------------------------------------
分割每一张
$count=0
$c=Get-Content -Path .\JA.TXT  -Encoding UTF8
ForEach($item in $c){
if($item -match '\t+</div><div class=".*" id="pdfhtmlmain'){
$count=$count+1
$item >> item_$count.txt
}
else{
$item>>item_$count.txt}
}

-----------------------------
设置regex
$reg0=[regex]'(<.*?>)'
$reg1=[regex]'(&#...;)'
$reg2=[regex]'( ;)'
-----------------------------------------
大循环
Get-Item item_* | ForEach-Object
for ($i=1; $i -le 5; $i++) {
-----------------------------------------
对于每一张
$item2=Get-Content -Path .\item_2.txt  -Encoding UTF8
对于左边的字
ForEach($item in $item2){
>> if($item -match 'left:4..*|left:5..*'){
>> if($item -match '<span.*?>(?<text>.*)<\/span'){
>> $Matches.text >> 00005.txt
>> }
>> }
>> }
对于右边的字
 ForEach($item in $item2){
>> if($item -match 'left:26..*|left:27..*'){
>> if($item -match '<span.*?>(?<text>.*)<\/span'){
>> $Matches.text >> 00005.txt
>> }
>> }
>> }
---------------------------------
完成所有以后
$test01= Get-Content -path .\test01.txt -Encoding UTF8
$test01 -replace $reg0,''-replace $reg1,''-replace $reg2,''>>test02.txt

------------------------------------
最终结果 
for ($i=1; $i -le 117; $i++) {
$item2=Get-Content -Path .\item_$i.txt
    
    
    forEach($item in $item2){
        if($item -match 'left:5\.43..em|left:4\.72..em|left:5\.43..em|left:2\.36..em|left:3\.0...em'){
            if($item -match '<span.*?>(?<text>.*)<\/span'){
                    $Matches.text >> 00117.txt}
        
        
        }

    }

    ForEach($item in $item2){
        if($item -match 'left:26\.5...em|left:24\.21..em|left:27\.28..em|left:24\.92..em'){
            if($item -match '<span.*?>(?<text>.*)<\/span'){
                    $Matches.text >> 00117.txt}
         
            }
      }

}

$reg0=[regex]'(<.*?>)'
$reg1=[regex]'(&#...;)'
$reg2=[regex]'( ;)'
$test01= Get-Content -path .\00117.txt -Encoding UTF8
$test01 -replace $reg0,''-replace $reg1,''-replace $reg2,''>>001170.txt

----------------------------------------------------------------
for ($i=1; $i -le 5; $i++) {
$item_2=Get-Content -Path .\item_$i.txt  -Encoding UTF8
ForEach($item in $item2){
if($item -match 'left:[2,3,4,5]..*'){
if($item -match '<span.*?>(?<text>.*)<\/span'){
$Matches.text >> 000020.txt
}
}
}ForEach($item in $item2){
if($item -match 'left:[25,26,27]..*'){
if($item -match '<span.*?>(?<text>.*)<\/span'){
$Matches.text >> 000020.txt
}
} }
}
$reg0=[regex]'(<.*?>)'
$reg1=[regex]'(&#...;)'
$reg2=[regex]'( ;)'
$test01= Get-Content -path .\000020.txt -Encoding UTF8
$test01 -replace $reg0,''-replace $reg1,''-replace $reg2,''>>5555555.txt