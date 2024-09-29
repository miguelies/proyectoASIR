Set-ExecutionPolicy Unrestricted
$dominio="OU=moodleroles, DC=asi-44, DC=cifpaviles, DC=com"


New-ADGroup DOCSN1 -SamAccountName DOCSN1-creador –GroupCategory Security –GroupScope Global –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Creador de curso, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-creador –GroupCategory Security –GroupScope Global –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Creador de curso, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-creador –GroupCategory Security –GroupScope Global –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Creador de curso, "+$dominio)

New-ADGroup DOCSN1 -SamAccountName DOCSN1-estudiante –GroupCategory Security –GroupScope Global –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Estudiante, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-estudiante –GroupCategory Security –GroupScope Global –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Estudiante, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-estudiante –GroupCategory Security –GroupScope Global –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Estudiante, "+$dominio)

New-ADGroup DOCSN1 -SamAccountName DOCSN1-gestor –GroupCategory Security –GroupScope Universal –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Gestor, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-gestor –GroupCategory Security –GroupScope Universal –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Gestor, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-gestor –GroupCategory Security –GroupScope Universal –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Gestor, "+$dominio)

New-ADGroup DOCSN1 -SamAccountName DOCSN1-invitado –GroupCategory Security –GroupScope Global –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Invitado, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-invitado –GroupCategory Security –GroupScope Global –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Invitado, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-invitado –GroupCategory Security –GroupScope Global –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Invitado, "+$dominio)

New-ADGroup DOCSN1 -SamAccountName DOCSN1-profesor –GroupCategory Security –GroupScope Global –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Profesor, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-profesor –GroupCategory Security –GroupScope Global –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Profesor, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-profesor –GroupCategory Security –GroupScope Global –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Profesor, "+$dominio)

New-ADGroup DOCSN1 -SamAccountName DOCSN1-profesorsin –GroupCategory Security –GroupScope Global –Description 'Documentos N1' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 1'} -Path ("OU=Profesor sin permiso de edición, "+$dominio)
New-ADGroup DOCSN2 -SamAccountName DOCSN2-profesorsin –GroupCategory Security –GroupScope Global –Description 'Documentos N2' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 2'} -Path ("OU=Profesor sin permiso de edición, "+$dominio)
New-ADGroup DOCSN3 -SamAccountName DOCSN3-profesorsin –GroupCategory Security –GroupScope Global –Description 'Documentos N3' -OtherAttributes @{'info'='Documentación para técnicos de ASI-44, Nivel 3'} -Path ("OU=Profesor sin permiso de edición, "+$dominio)


Add-ADGroupMember -Identity DOCSN1-gestor -Members (Get-ADGroup admins)
Add-ADGroupMember -Identity DOCSN2-gestor -Members (Get-ADGroup admins)
Add-ADGroupMember -Identity DOCSN3-gestor -Members (Get-ADGroup admins)
Add-ADGroupMember -Identity DOCSN3-estudiante -Members (Get-ADGroup N3)
Add-ADGroupMember -Identity DOCSN2-estudiante -Members (Get-ADGroup N3)
Add-ADGroupMember -Identity DOCSN1-estudiante -Members (Get-ADGroup N3)
Add-ADGroupMember -Identity DOCSN2-estudiante -Members (Get-ADGroup N2)
Add-ADGroupMember -Identity DOCSN1-estudiante -Members (Get-ADGroup N2)
Add-ADGroupMember -Identity DOCSN1-estudiante -Members (Get-ADGroup N1)