$c=Get-Content -Path .\LU2290523658-JA-2021-EQ-E-01.xhtml -Encoding UTF8
#$c[-1] -split '</p>'>> split55.txt
#$c[-1] -split '(</p><p.*?>)|(</tr>)'>> split55.txt
#$c[-1] -split '(</p><p.*?>)|(</p><table.*?>)|(</tr>)'>> split55.txt
$c[-1] -split '(</div><div.*?>)'>> split09.txt
#$c[-1] -split '(</div><div style="left:.*?>)'>> split09.txt

$test01= Get-Content -path .\split09.txt -Encoding UTF8 -RAW
$reg0=[regex]'(\r\n</td><td .*?>)'
#$reg0=[regex]'</td><td.*?>'
$reg1=[regex]'(<.*?>)'
$reg2=[regex]'(&amp;)'
$reg3=[regex]'(&#228;)' 
$reg4=[regex]'(&#196;)' 
$reg5=[regex]'(&#246;)' 
$reg6=[regex]'(&#214;)' 
$reg7=[regex]'(&#252;)' 
$reg8=[regex]'(&#220;)'
$reg9=[regex]'(&#xa0;)'
$reg10=[regex]'(&#167;)'
$reg11=[regex]'(&#223;)'
#Linebreak
$regEnd=[regex]'-(\s)?\r\n'
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg9,''-replace $regEnd,''>>test02.txt
$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $reg10,'§'-replace $reg11,'ß'-replace $regEnd,''>>test09.txt


