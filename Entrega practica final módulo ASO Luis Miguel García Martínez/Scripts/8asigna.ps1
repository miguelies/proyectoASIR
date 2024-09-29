Get-Module -ListAvailable -name "vmware*" | Import-Module
$servidor_vcenter="vcenter01-44.asi-44.cifpaviles.com"
Write-Host "Conectando a servidor vcenter: " $servidor_vcenter
Connect-VIServer -server $servidor_vcenter -User miguelgm -Password ab123.ff6g
Write-Host "Conexión completada."

Get-Folder "vm" | New-Folder "usuariosHV01-44" 
Get-Folder "vm" | New-Folder "usuariosHV02-44"

Get-Folder "usuariosHV01-44" | New-Folder "usuariosHV01-44.usu1"
Get-Folder "usuariosHV01-44.usu1" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV01-44.usu1"
Get-Folder "usuariosHV01-44" | New-Folder "usuariosHV01-44.usu2"
Get-Folder "usuariosHV01-44.usu2" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV01-44.usu2"
Get-Folder "usuariosHV01-44" | New-Folder "usuariosHV01-44.usu3"
Get-Folder "usuariosHV01-44.usu3" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV01-44.usu3"
Get-Folder "usuariosHV01-44" | New-Folder "usuariosHV01-44.usu4"
Get-Folder "usuariosHV01-44.usu4" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV01-44.usu4"

Get-Folder "usuariosHV02-44" | New-Folder "usuariosHV02-44.usu1"
Get-Folder "usuariosHV02-44.usu1" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV02-44.usu1"
Get-Folder "usuariosHV02-44" | New-Folder "usuariosHV02-44.usu2"
Get-Folder "usuariosHV02-44.usu2" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV02-44.usu2"
Get-Folder "usuariosHV02-44" | New-Folder "usuariosHV02-44.usu3"
Get-Folder "usuariosHV02-44.usu3" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV02-44.usu3"
Get-Folder "usuariosHV02-44" | New-Folder "usuariosHV02-44.usu4"
Get-Folder "usuariosHV02-44.usu4" -type "vm" | New-VIPermission -Role usuario -Principal "ASI-44\usuariosHV02-44.usu4"

Get-Folder "vm" | New-Folder templates_publicas
Get-Folder templates_publicas -type "vm" | New-VIPermission -Role desplegar_desde_template -Principal 'ASI-44\usuarios de vcenter'