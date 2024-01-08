<#
Davey Hobbs
2024/01/08
Detection Script for DHD Uninstall.
#>

# Defined list of registry keys associated with each program
$registryKeys = [ordered]@{
    "Program1" = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9755EB71-FC9B-497D-A643-8FB5A68F5079}"
    "Program2" = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}"
    "Program3" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1D411379-9CE0-4B13-A19B-72D3222DD620}"
    "Program4" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{202AAF1F-69AA-442A-B59F-6B54B1AD07C6}"
    "Program5" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{18B2A97C-92C3-4AC7-BE72-F823E0BC895B}"
    "Program6" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{84FBCA4A-D650-4B0D-8094-EC0671FA9B91}"
    "Program7" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A}"
    "Program8" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8}"
    "Program9" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0E8670B8-3965-4930-ADA6-570348B67153}"
    "Program10" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E}"
    "Program11" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{49D665A2-4C2A-476E-9AB8-FCC425F526FC}"
    "Program12" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0F05048-7653-4FCD-9F3A-C740E4052ACE}"
    "Program13" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8CB0713F-CFE0-445D-BCB2-538465860E1A}"
    "Program14" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B40EE88B-400A-4266-A17B-E3DE64E94431}"
    "Program15" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{BED1EA3D-592D-4305-9D1F-20F03726EFC1}"
    # Add more registry keys for other programs here
}

$exePrograms = @{
    "Program3" = @{
        "Path" = "C:\railo\uninstall.exe"
        "UninstallArgs" = "--mode unattended"
    }
    "Program4" = @{
        "Path" = "C:\Program Files (x86)\ieSpell\uninst.exe"
        "UninstallArgs" = "/S"
    }
    # Add more EXE programs and their uninstall arguments and paths here
}

function CheckMSIUninstalls {
    foreach ($program in $registryKeys.GetEnumerator()) {
        $Key = $program.Value
        
        if (Test-Path registry::$Key) {
            Write-Host "$($program.Key) registry key detected. Failure!"
            return 1
        }
    }

    foreach ($program in $exePrograms.GetEnumerator()) {
        $Path = $program.Value.Path
        
        if (Test-Path $Path) {
            Write-Host "$($program.Key) executable path detected. Failure!"
            return 1
        }
    }

    # If no failures found, return 0 (success)
    return 0
}

# Check for failures
$result = CheckMSIUninstalls
if ($result -eq 1) {
    Write-Host "Failure detected."
    return 1
} else {
    Write-Host "No failures detected."
    return 0
}
