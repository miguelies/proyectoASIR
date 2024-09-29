$dominio="DC=asi-44 ,DC=cifpaviles ,DC=com"
New-ADOrganizationalUnit –name usuarios –Path $dominio -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name equipos –Path $dominio -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name servidores –Path ("OU=equipos,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name estaciones –Path ("OU=equipos,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name empresa –Path ("OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name gestion –Path ("OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name tecnicos –Path ("OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name N1 –Path ("OU=tecnicos,OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name N2 –Path ("OU=tecnicos,OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name N3 –Path ("OU=tecnicos,OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name admins –Path ("OU=empresa,OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –name clientes –Path ("OU=usuarios,"+$dominio) -ProtectedFromAccidentalDeletion:$false
