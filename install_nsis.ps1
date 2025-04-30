Write-Host "Installing NSIS"
choco install nsis -y
Write-Host "Installed" -ForegroundColor Green
$addPath = 'C:\Program Files (x86)\NSIS'

if (-not ($env:PATH.Split(';') -contains $addPath)) { 
    Write-Host "Adding to PATH"
    $env:PATH += ";$addPath" 
}

if ($env:PATH.Split(';') -contains $addPath) {
    Write-Host "Added to PATH" -ForegroundColor Green
} else {
    Write-Host "Added to PATH - FAIL" -ForegroundColor Red
}
makensis /VERSION 
