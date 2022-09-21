$test01= Get-Content -path .\529900RJL86244E1I652-2021-12-31.xhtml -Encoding UTF8 -RAW
$reghead=[regex]'(<head>(\n.*)+<\/head>)'
$regpdf=[regex]'(<div id=("pf1")|("pf2").*>(\n.*)+<\/div>)'
#Table
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
#Linebreak
$regEnd=[regex]'-(\s)?\r\n'
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg9,''-replace $regEnd,''>>test02.txt
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $regEnd,''>>test02.txt
#$test01 -replace $reghead,''-replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $regEnd,''>>test02.txt
$test01 -replace $regpdf,''-replace $reghead,''-replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'-replace $reg3,'ä' -replace $reg4,'Ä'-replace $reg5,'ö'-replace $reg6,'Ö'-replace $reg7,'ü'-replace $reg8,'Ü'-replace $reg9,''-replace $regEnd,''>>test02.txt
#这里可以调取extractHTMLcode这个文件来查找文件里还有那些特殊符号
#$test01 -replace $reg0,'   '-replace $reg1,''-replace $reg2,'&'>>test02.txt