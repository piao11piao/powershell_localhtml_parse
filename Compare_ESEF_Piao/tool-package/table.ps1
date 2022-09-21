$text='<tr><td class="d927bb4"><p class="Ttext" style="page-break-after:avoid">Deutschland
</td><td class="c7c1d2"><p class="Tnumber" style="page-break-after:avoid"><span />+10,1
</td><td class="c7c1d2"><p class="Tnumber" style="page-break-after:avoid"><span />+12,7
</td></tr><tr><td class="d2f340e"><p class="Ttext" style="page-break-after:avoid">Österreich
</td><td class="f87072"><p class="Tnumber" style="page-break-after:avoid"><span />+15,2
</td><td class="f87072"><p class="Tnumber" style="page-break-after:avoid"><span />+19,7
</td></tr><tr><td class="d55d928"><p class="Ttext" style="page-break-after:avoid">Schweiz
</td><td class="b54575"><p class="Tnumber" style="page-break-after:avoid"><span />‒2,3
</td><td class="b54575"><p class="Tnumber" style="page-break-after:avoid"><span />+6,3
</td></tr></table><p class="d009AbsatznachTabellenundGraphiken"><br />'

$reg0=[regex]'(\r\n</td><td .*?>)'
$reg1=[regex]'(<.*?>)'
$text -replace $reg0,'      '-replace $reg1,''