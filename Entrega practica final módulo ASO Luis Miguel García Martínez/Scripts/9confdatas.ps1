Get-Module -ListAvailable -name "vmware*" | Import-Module
$servidor_vcenter="vcenter01-44.asi-44.cifpaviles.com"
Write-Host "Conectando a servidor vcenter: " $servidor_vcenter
Connect-VIServer -server $servidor_vcenter -User miguelgm -Password ab123.ff6g
Write-Host "Conexión completada."

Get-Folder "datastore" | New-Folder "HV01-44"
Get-Folder "HV01-44" -type "datastore" | New-VIPermission -Role crear_en_datastore -Principal "ASI-44\usuariosHV01-44"
Get-Folder "datastore" | New-Folder "HV02-44"
Get-Folder "HV02-44" -type "datastore" | New-VIPermission -Role crear_en_datastore -Principal "ASI-44\usuariosHV02-44"

Get-Folder "datastore" | New-Folder "Publico"
Get-Folder "Publico" -type "datastore" | New-VIPermission -Role explorador_de_datastore -Principal "ASI-44\usuarios de vcenter"