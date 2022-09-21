$m =Get-Content -Path .\anhang_html.txt -Raw
$regEnd=[regex]'-(\s)?\r\n'
#
#$k=" Glasfasernetz von 1&1 Ver-
#satel betreibt United Internet eines der größten Glasfasernetze in Deutschland. "


$m -replace $regEnd,''>>anhang_html_withoutlinebreak.txt 