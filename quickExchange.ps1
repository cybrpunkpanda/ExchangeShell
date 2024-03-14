Write-Host "#########################################################################################################"
Write-Host "##"
Write-Host "##"
Write-Host "## Quick Exchange Shell"
Write-Host "##"
Write-Host "## By: Devrryn Jenkins"
Write-Host "##"
Write-Host "##"
Write-Host "#########################################################################################################"

While ($true) {

$creds = Get-Credential

Try {

$sesh = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://<YOUR_ORGS_URI>/Powershell -Authentication Kerberos -Credential $creds 

Import-PSSession $sesh -DisableNameChecking -AllowClobber -ErrorAction Stop

break

} catch {

Write-Host "Hmmmm....Looks like something went wrong. Try again."

} Finally {

Read-Host "When you're done, press enter"

}
}
