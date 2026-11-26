# Version 2: busca TODOS los archivos .md cuyo nombre contenga "guion" (no solo los 2 nombres exactos
# de antes), para agarrar también copias nuevas/duplicadas que se hayan creado con otro nombre de archivo.
$archivos = Get-ChildItem -Recurse -Filter "*guion*.md"

if (-not $archivos) {
    Write-Host "No se encontro ningun archivo que contenga 'guion' en el nombre."
    exit
}

Write-Host "Archivos encontrados:"
foreach ($a in $archivos) {
    Write-Host " - $($a.FullName)"
}
Write-Host ""

foreach ($a in $archivos) {
    $path = $a.FullName
    $content = Get-Content -Raw -Encoding UTF8 $path
    if ($content -match "nav_exclude") {
        Write-Host "Ya tiene nav_exclude, no se toca: $($a.Name)"
        continue
    }
    $new = $content -replace "(?s)^---\r?\n", "---`r`nnav_exclude: true`r`nsearch_exclude: true`r`n"
    Set-Content -Path $path -Value $new -Encoding UTF8 -NoNewline
    Write-Host "Corregido: $($a.Name)"
}
