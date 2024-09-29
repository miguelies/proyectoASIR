$dominio="OU=empresa, OU=usuarios, DC=asi-44, DC=cifpaviles, DC=com"
New-ADOrganizationalUnit –name virtualizacion –Path $dominio -ProtectedFromAccidentalDeletion:$false
$vir="OU=virtualizacion, OU=empresa, OU=usuarios, DC=asi-44, DC=cifpaviles, DC=com"
New-ADGroup “admins de vcenter” –GroupCategory Security –GroupScope Universal –Description “admins de vcenter” –Path ($vir)
Add-ADGroupMember -Identity "admins de vcenter" -Members (Get-ADGroup admins)
New-ADGroup “usuarios de vcenter” –GroupCategory Security –GroupScope Global –Description “usuarios de vcenter” –Path ($vir)
Add-ADGroupMember -Identity "usuarios de vcenter" -Members (Get-ADGroup empresa)
New-ADGroup “usuariosHV01-44” –GroupCategory Security –GroupScope Global –Description “usuarios de HV01-44” –Path ($vir)
New-ADGroup “usuariosHV02-44” –GroupCategory Security –GroupScope Global –Description “usuarios de HV02-44” –Path ($vir)

Add-ADGroupMember -Identity "usuarios de vcenter" -Members (Get-ADGroup usuariosHV01-44)
Add-ADGroupMember -Identity "usuarios de vcenter" -Members (Get-ADGroup usuariosHV02-44)

New-ADGroup “usuariosHV01-44.usu1” –GroupCategory Security –GroupScope Global –Description “Usuario 1 de usuariosHV01-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV01-44 -Members (Get-ADGroup usuariosHV01-44.usu1)
New-ADGroup “usuariosHV01-44.usu2” –GroupCategory Security –GroupScope Global –Description “Usuario 2 de usuariosHV01-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV01-44 -Members (Get-ADGroup usuariosHV01-44.usu2)
New-ADGroup “usuariosHV01-44.usu3” –GroupCategory Security –GroupScope Global –Description “Usuario 3 de usuariosHV01-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV01-44 -Members (Get-ADGroup usuariosHV01-44.usu3)
New-ADGroup “usuariosHV01-44.usu4” –GroupCategory Security –GroupScope Global –Description “Usuario 4 de usuariosHV01-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV01-44 -Members (Get-ADGroup usuariosHV01-44.usu4)



New-ADGroup “usuariosHV02-44.usu1” –GroupCategory Security –GroupScope Global –Description “usuario 1 de usuariosHV02-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV02-44 -Members (Get-ADGroup usuariosHV02-44.usu1)
New-ADGroup “usuariosHV02-44.usu2” –GroupCategory Security –GroupScope Global –Description “usuario 2 de usuariosHV02-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV02-44 -Members (Get-ADGroup usuariosHV02-44.usu2)
New-ADGroup “usuariosHV02-44.usu3” –GroupCategory Security –GroupScope Global –Description “usuario 3 de usuariosHV02-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV02-44 -Members (Get-ADGroup usuariosHV02-44.usu3)
New-ADGroup “usuariosHV02-44.usu4” –GroupCategory Security –GroupScope Global –Description “usuario 4 de usuariosHV02-44 virtualización” –Path ($vir)
Add-ADGroupMember -Identity usuariosHV02-44 -Members (Get-ADGroup usuariosHV02-44.usu4)