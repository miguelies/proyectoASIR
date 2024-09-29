$dominio="OU=usuarios ,DC=asi-44 ,DC=cifpaviles ,DC=com"
New-ADGroup "usuariosASI-44" -GroupCategory Security -GroupScope Global -Description "Usuarios del dominio ASI-44" -Path $dominio
New-ADGroup "empresa" -GroupCategory Security -GroupScope Global -Description "Grupo de los usuarios de la empresa" -Path ("OU=empresa,"+$dominio)
New-ADGroup "gestion" -GroupCategory Security -GroupScope Global -Description "Grupo de usuarios designados a gestion" -Path ("OU=gestion,OU=empresa,"+$dominio)
New-ADGroup "tecnicos" -GroupCategory Security -GroupScope Global -Description "Grupo de usuarios tecnicos" -Path ("OU=tecnicos,OU=empresa,"+$dominio)
New-ADGroup "N1" -GroupCategory Security -GroupScope Global -Description "Usuarios del nivel 1" -Path ("OU=N1,OU=tecnicos,OU=empresa,"+$dominio)
New-ADGroup "N2" -GroupCategory Security -GroupScope Global -Description "Usuarios del nivel 2" -Path ("OU=N2,OU=tecnicos,OU=empresa,"+$dominio)
New-ADGroup "N3" -GroupCategory Security -GroupScope Global -Description "Usuarios del nivel 3" -Path ("OU=N3,OU=tecnicos,OU=empresa,"+$dominio)
New-ADGroup "admins" -GroupCategory Security -GroupScope Universal -Description "Grupo de usuarios administradores" -Path ("OU=admins,OU=empresa,"+$dominio)
New-ADGroup "clientes" -GroupCategory Security -GroupScope Global -Description "Usuarios de clientes" -Path ("OU=clientes,"+$dominio)
