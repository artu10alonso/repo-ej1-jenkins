# script.ps1

# Ruta al archivo que se creará
$filePath = "C:\Temp\salida_jenkins.txt"

# Crea la carpeta si no existe
if (!(Test-Path "C:\Temp")) {
    New-Item -Path "C:\" -Name "Temp" -ItemType "Directory"
}

# Escribe un mensaje dinámico en el archivo
"Hola desde Jenkins. Este archivo fue generado por un script de PowerShell que está en Git." | Out-File -FilePath $filePath -Encoding UTF8

# Simula la instalación de un servicio falso escribiendo otra línea
"Simulación de instalación completa: Servicio ficticio instalado correctamente." | Out-File -Append -FilePath $filePath -Encoding UTF8

Write-Host "El script se completó correctamente. Archivo creado: $filePath"
