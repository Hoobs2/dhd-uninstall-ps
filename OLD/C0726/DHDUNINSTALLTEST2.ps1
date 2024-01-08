# Define the list of MSI programs and their corresponding UninstallStrings
$msiPrograms = @(
    "/X{9755EB71-FC9B-497D-A643-8FB5A68F5079} /q /NORESTART /Log 'C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall.txt'"
    <#"/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012.txt",
    "/X{0E8670B8-3965-4930-ADA6-570348B67153} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012TRANSACT.txt",
    "/X{18B2A97C-92C3-4AC7-BE72-F823E0BC895B} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE.txt",
    "/X{84FBCA4A-D650-4B0D-8094-EC0671FA9B91} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE_2.txt",
    "/X{1D411379-9CE0-4B13-A19B-72D3222DD620} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES.txt",
    "/X{202AAF1F-69AA-442A-B59F-6B54B1AD07C6} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES_2.txt",
    "/X{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012VSSWRITER.txt",
    "/X{49D665A2-4C2A-476E-9AB8-FCC425F526FC} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012NATIVECLIENT.txt",
    "/X{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED.txt",
    "/X{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED_2.txt",
    "/X{8CB0713F-CFE0-445D-BCB2-538465860E1A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SETUP.txt",
    "/X{A0F05048-7653-4FCD-9F3A-C740E4052ACE} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012RSFXDRIVER.txt",
    "/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SERVERBROWSER.txt",
    "/X{B40EE88B-400A-4266-A17B-E3DE64E94431} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2008SETUP.txt",
    "/X{BED1EA3D-592D-4305-9D1F-20F03726EFC1} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQLCUSTOMEREXPIRENCE.txt"
    # Add more MSI programs and their UninstallStrings here
    #>
)

# Define the list of registry keys associated with each program
$registryKeys = @(
    "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9755EB71-FC9B-497D-A643-8FB5A68F5079}"
    "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0E8670B8-3965-4930-ADA6-570348B67153}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{18B2A97C-92C3-4AC7-BE72-F823E0BC895B}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{84FBCA4A-D650-4B0D-8094-EC0671FA9B91}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1D411379-9CE0-4B13-A19B-72D3222DD620}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{202AAF1F-69AA-442A-B59F-6B54B1AD07C6}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{49D665A2-4C2A-476E-9AB8-FCC425F526FC}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8CB0713F-CFE0-445D-BCB2-538465860E1A}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0F05048-7653-4FCD-9F3A-C740E4052ACE}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B40EE88B-400A-4266-A17B-E3DE64E94431}",
    "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{BED1EA3D-592D-4305-9D1F-20F03726EFC1}"
    # Add more registry keys for other programs here
)

# Define the list of EXE programs and their uninstall arguments and paths
$exePrograms = @(
    @{
        "Path" = "C:\railo\uninstall.exe"
        "UninstallArgs" = "--mode unattended"
    },
    @{
        "Path" = "C:\Program Files (x86)\ieSpell\uninst.exe"
        "UninstallArgs" = "/S"
    }
    # Add more EXE programs and their uninstall arguments and paths here
)

# Function to uninstall MSI programs
function UninstallMSIPrograms {
    foreach ($uninstallString in $msiPrograms) {
        Start-Process -FilePath Msiexec.exe -ArgumentList $uninstallString -Wait
    }
}
<#
# Function to uninstall EXE programs
function UninstallEXEPrograms {
    foreach ($program in $exePrograms) {
        $programPath = $program["Path"]
        $uninstallArgs = $program["UninstallArgs"]
        $uninstallExecutable = "$programPath"
        if (Test-Path $uninstallExecutable) {
            Start-Process $uninstallExecutable -ArgumentList $uninstallArgs -Wait -WindowStyle Hidden | Out-Null
        }
    }
}

# Function to check if MSI programs are uninstalled and re-attempt uninstallation if detected
function CheckUninstalledPrograms {
    $remainingPrograms = $msiPrograms  # Initialize with all MSI programs
    
    foreach ($program in $msiPrograms) {
        $uninstallString = $program
        $programUninstalled = $false
        
        # Check if the program is uninstalled by verifying registry keys
        foreach ($key in $registryKeys) {
            if (Test-Path Registry::$key) {
                $programUninstalled = $false  # Reset flag if key exists
                break  # If any key exists, the program is not uninstalled
            } else {
                $programUninstalled = $true  # Set flag if no key is found
            }
        }
        
        # If program is still detected, attempt to uninstall it again
        if (-not $programUninstalled) {
            Start-Process msiexec -ArgumentList $uninstallString -Wait
        } else {
            $remainingPrograms = $remainingPrograms | Where-Object { $_ -ne $program }  # Remove uninstalled program from remaining programs
        }
    }
    
    # If there are remaining programs, show a message or perform additional actions
    if ($remainingPrograms.Count -gt 0) {
        Write-Output "The following programs are still detected: $($remainingPrograms -join ', ')"
        # You can add more actions here for handling remaining programs
    } else {
        Write-Output "All MSI programs have been uninstalled."
    }
}
#>
# Start the uninstallation process
UninstallMSIPrograms
#UninstallEXEPrograms
#CheckUninstalledPrograms