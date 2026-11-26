$files = @("pitch-guion-semana9-vigilio.md", "guion-demo-video-semana9-vigilio.md")

foreach ($f in $files) {
    $path = Get-ChildItem -Recurse -Filter $f | Select-Object -First 1 -ExpandProperty FullName
    if (-not $path) {
        Write-Host "No encontrado: $f"
        continue
    }
    $content = Get-Content -Raw -Encoding UTF8 $path
    if ($content -match "nav_exclude") {
        Write-Host "Ya tiene nav_exclude, no se toca: $f"
        continue
    }
    $new = $content -replace "(?s)^---\r?\n", "---`r`nnav_exclude: true`r`nsearch_exclude: true`r`n"
    Set-Content -Path $path -Value $new -Encoding UTF8 -NoNewline
    Write-Host "Corregido: $f"
}
