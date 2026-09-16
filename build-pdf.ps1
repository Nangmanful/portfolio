# index.html의 print 레이아웃(A4 1장)을 그대로 PDF로 뽑는다.
# 사용: powershell -File build-pdf.ps1
$root = $PSScriptRoot
$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$src = "file:///" + ($root -replace '\\', '/') + "/index.html"
$out = Join-Path $root "KimChanggyu_Portfolio.pdf"
& $chrome --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$out" --virtual-time-budget=8000 $src
Write-Host "PDF -> $out"
