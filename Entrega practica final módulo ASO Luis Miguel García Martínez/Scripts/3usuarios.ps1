Set-ExecutionPolicy Unrestricted
$dom="OU=usuarios, DC=asi-44, DC=cifpaviles, DC=com"

New-ADUser –Name aurora -GivenName "Aurora" -Surname García –City Aviles  –DisplayName “Aurora Garcia” –EmailAddress aurora@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=gestion, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity gestion -Members (Get-ADUser aurora)

New-ADUser –Name luisma -GivenName "Luisma" -Surname Alvarez -userPrincipalName luisma@asi-44.cifpaviles.com –City Aviles  –DisplayName “Luisma Alvarez” –EmailAddress luisma@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=N1, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N1 -Members (Get-ADUser luisma)

New-ADUser –Name guillermo -GivenName "Guillermo" -Surname González -userPrincipalName guillermo@asi-44.cifpaviles.com –City Aviles  –DisplayName “Guillermo González” –EmailAddress guillermo@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=N1, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N1 -Members (Get-ADUser guillermo)

New-ADUser –Name mercedes -GivenName "Mercedes" -Surname Diez -userPrincipalName mercedes@asi-44.cifpaviles.com –City Aviles  –DisplayName “Mercedes Diez” –EmailAddress mercedes@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6gs” –AsPlainText –Force) -Path ("OU=N2, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N2 -Members (Get-ADUser mercedes)

New-ADUser –Name maite -GivenName "Maite" -Surname Alba -userPrincipalName maite@asi-44.cifpaviles.com –City Aviles  –DisplayName “Maite Alba” –EmailAddress maite@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=N2, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N2 -Members (Get-ADUser maite)

New-ADUser –Name noelia -GivenName "Noelia" -Surname Barreiro -userPrincipalName noelia@asi-44.cifpaviles.com –City Aviles  –DisplayName “Noelia Barreiro” –EmailAddress noelia@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=N3, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N3 -Members (Get-ADUser noelia)

New-ADUser –Name aida -GivenName "Aida" -Surname Sariego -userPrincipalName aida@asi-44.cifpaviles.com –City Aviles  –DisplayName “Aida Sariego” –EmailAddress aida@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=N3, OU=tecnicos, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity N3 -Members (Get-ADUser aida)

New-ADUser –Name juanjo -GivenName "Juanjo" -Surname Erausquin -userPrincipalName juanjo@asi-44.cifpaviles.com –City Aviles  –DisplayName “Juanjo Erausquin” –EmailAddress juanjo@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=admins, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity admins -Members (Get-ADUser juanjo)

New-ADUser –Name eduardo -GivenName "Eduardo" -Surname Carreira -userPrincipalName eduardo@asi-44.cifpaviles.com –City Aviles  –DisplayName “Eduardo Carreira” –EmailAddress eduardo@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=admins, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity admins -Members (Get-ADUser eduardo)

New-ADUser –Name miguelgm -GivenName "Luis Miguel" -Surname miguelgm -userPrincipalName miguelgm@asi-44.cifpaviles.com –City Aviles  –DisplayName “Luis Miguel” –EmailAddress miguelgm@asi-44.com -AccountPassword $(ConvertTo-SecureString “ab123.ff6g” –AsPlainText –Force) -Path ("OU=admins, OU=empresa, "+$dom) -ChangePasswordAtLogon $false -Enabled $true
Add-ADGroupMember -Identity admins -Members (Get-ADUser miguelgm)

