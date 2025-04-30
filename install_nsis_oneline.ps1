 choco install nsis -y; $addPath='C:\Program Files (x86)\NSIS'; if (-not ($env:PATH.Split(';') -contains $addPath)) { $env:PATH+=";$addPath"; setx PATH $env:PATH } 
