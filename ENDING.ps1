$c=Get-Content -Path .\JA.xhtml -Encoding UTF8
#$c[-1] -split '</p>'>> split55.txt
#$c[-1] -split '(</p><p.*?>)|(</tr>)'>> split55.txt
#$c[-1] -split '(</p><p.*?>)|(</p><table.*?>)|(</tr>)'>> split55.txt
#$c[-1] -split '(</div><div.*?>)'>> split55.txt
#$c[-1] -split '(</div><div style="left: 70.87pt;.*?>)'>> split55.txt
#$c[-1] -split '(<p class.*?>|<td class.*?>)'>> split55.txt
$c[-1] -split '(<p class.*?>)|(<table.*?>)|(</tr>)<tr>'>> split551.txt

#$m= Get-Content -path .\split55.txt -Encoding UTF8 -Raw
#$m -split '(<.*?left: 0pt.*?>)'>>01.txt

#$test01= Get-Content -path .\01.txt -Encoding UTF8 -RAW
$test01= Get-Content -path .\split551.txt -Encoding UTF8 -RAW
#$regdiv=[regex]'(</div></div></div>)'
#Table
#$reg0=[regex]'(\r\n</td><td .*?>)'
$reg0=[regex]'</td><td.*?>'
$reg1=[regex]'(<.*?>)'
$reg2=[regex]'(&amp;)'
$reg3=[regex]'(&#228;)' 
$reg4=[regex]'(&#196;)' 
$reg5=[regex]'(&#246;)' 
$reg6=[regex]'(&#214;)' 
$reg7=[regex]'(&#252;)' 
$reg8=[regex]'(&#220;)'
$reg9=[regex]'(&#xa0;)'
#Linebreak
$regEnd=[regex]'-(\s)?\r\n'
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg9,''-replace $regEnd,''>>test02.txt
$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $regEnd,''>>test021.txt
#这里可以调取extractHTMLcode这个文件来查找文件里还有那些特殊符号
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'>>test02.txt
#$test01 -replace $regdiv,'   '-replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $regEnd,''>>test02.txt