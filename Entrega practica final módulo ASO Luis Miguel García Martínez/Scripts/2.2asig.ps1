Add-ADGroupMember -Identity "Domain Users"usuariosASI-44 -Members (Get-ADGroup usuariosASI-44)

Add-ADGroupMember -Identity usuariosASI-44 -Members (Get-ADGroup empresa)

Add-ADGroupMember -Identity empresa -Members (Get-ADGroup gestion)

Add-ADGroupMember -Identity empresa -Members (Get-ADGroup tecnicos)

Add-ADGroupMember -Identity tecnicos -Members (Get-ADGroup N1)

Add-ADGroupMember -Identity tecnicos -Members (Get-ADGroup N2)

Add-ADGroupMember -Identity tecnicos -Members (Get-ADGroup N3)

Add-ADGroupMember -Identity empresa -Members (Get-ADGroup admins)

Add-ADGroupMember -Identity "Schema Admins" -Members (Get-ADGroup admins)

Add-ADGroupMember -Identity "Enterprise Admins" -Members (Get-ADGroup admins)

Add-ADGroupMember -Identity "Domain Admins" -Members (Get-ADGroup admins)

Add-ADGroupMember -Identity usuariosASI-44 -Members (Get-ADGroup clientes)