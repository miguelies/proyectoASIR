Set-ExecutionPolicy Unrestricted
$dominio="DC=asi-44, DC=cifpaviles, DC=com"
$dom="OU=moodleroles, DC=asi-44, DC=cifpaviles, DC=com"
New-ADOrganizationalUnit –Name moodleroles –Path $dominio –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name 'Creador de curso' –Path $dom –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name Estudiante –Path $dom –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name Gestor –Path $dom –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name Invitado –Path $dom –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name Profesor –Path $dom –ProtectedFromAccidentalDeletion:$false
New-ADOrganizationalUnit –Name 'Profesor sin permiso de edición' –Path $dom –ProtectedFromAccidentalDeletion:$false
