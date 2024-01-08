# Define the log directory path
$logDirectory = "C:\itslog"
if (-not (Test-Path -Path $logDirectory)) {
    New-Item -Path $logDirectory -ItemType Directory | Out-Null
}

# Define an array of MSI registry keys for the programs to uninstall
$msiprogramsToUninstall = @(
    "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9755EB71-FC9B-497D-A643-8FB5A68F5079}",
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

    # Add more programs as needed with their respective MSI registry keys
)
Path = "C:\railo\uninstall.exe"
        Argument = "--mode unattended"
    },
    @{
        Path = "C:\Program Files (x86)\ieSpell\uninst.exe"
        Argument = "/S"
        registry::

# Define the list of MSI programs and their corresponding UninstallStrings and arguments
$msiPrograms = @{
    "Program1" = "/X{9755EB71-FC9B-497D-A643-8FB5A68F5079} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall.txt"
    "Program2" = "/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012.txt"
    "Program3" = "/X{0E8670B8-3965-4930-ADA6-570348B67153} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012TRANSACT.txt"
    "Program4" = "/X{18B2A97C-92C3-4AC7-BE72-F823E0BC895B} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE.txt"
    "Program5" = "/X{84FBCA4A-D650-4B0D-8094-EC0671FA9B91} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE_2.txt"
    "Program6" = "/X{1D411379-9CE0-4B13-A19B-72D3222DD620} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES.txt"
    "Program7" = "/X{202AAF1F-69AA-442A-B59F-6B54B1AD07C6} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES_2.txt"
    "Program8" = "/X{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012VSSWRITER.txt"
    "Program9" = "/X{49D665A2-4C2A-476E-9AB8-FCC425F526FC} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012NATIVECLIENT.txt"
    "Program10" = "/X{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED.txt"
    "Program11" = "/X{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED_2.txt"
    "Program12" = "/X{8CB0713F-CFE0-445D-BCB2-538465860E1A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SETUP.txt"
    "Program13" = "/X{A0F05048-7653-4FCD-9F3A-C740E4052ACE} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012RSFXDRIVER.txt"
    "Program14" = "/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SERVERBROWSER.txt"
    "Program15" = "/X{B40EE88B-400A-4266-A17B-E3DE64E94431} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2008SETUP.txt"
    "Program16" = "/X{BED1EA3D-592D-4305-9D1F-20F03726EFC1} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQLCUSTOMEREXPIRENCE.txt"
    
    # Add more programs and their UninstallStrings here
}

# Define the list of registry keys associated with each program
$registryKeys = @{
    "Program1" = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9755EB71-FC9B-497D-A643-8FB5A68F5079}"
    "Program2" = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}"
    "Program3" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0E8670B8-3965-4930-ADA6-570348B67153}"
    "Program4" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{18B2A97C-92C3-4AC7-BE72-F823E0BC895B}"
    "Program5" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{84FBCA4A-D650-4B0D-8094-EC0671FA9B91}"
    "Program6" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1D411379-9CE0-4B13-A19B-72D3222DD620}"
    "Program7" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{202AAF1F-69AA-442A-B59F-6B54B1AD07C6}"
    "Program8" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E}"
    "Program9" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{49D665A2-4C2A-476E-9AB8-FCC425F526FC}"
    "Program10" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A}"
    "Program11" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8}"
    "Program12" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8CB0713F-CFE0-445D-BCB2-538465860E1A}"
    "Program13" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0F05048-7653-4FCD-9F3A-C740E4052ACE}"
    "Program14" = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}"
    "Program15" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B40EE88B-400A-4266-A17B-E3DE64E94431}"
    "Program16" = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{BED1EA3D-592D-4305-9D1F-20F03726EFC1}"

    # Add more registry keys for other programs here
}

# Define the list of EXE programs and their uninstall arguments and paths
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

# Function to uninstall MSI programs
function UninstallMSIPrograms {
    foreach ($program in $msiPrograms.Keys) {
        $uninstallString = $msiPrograms[$program]
        Start-Process "msiexec.exe" -ArgumentList $uninstallString -Wait -WindowStyle Hidden | Out-Null
    }
}

# Function to uninstall EXE programs
function UninstallEXEPrograms {
    foreach ($program in $exePrograms.Keys) {
        $programPath = $exePrograms[$program]["Path"]
        $uninstallArgs = $exePrograms[$program]["UninstallArgs"]
        Start-Process "$programPath\$program.exe" -ArgumentList $uninstallArgs -Wait -WindowStyle Hidden | Out-Null
    }
}

# Function to check if programs are uninstalled by verifying registry keys
function CheckUninstalledPrograms {
    foreach ($program in $registryKeys.Keys) {
        $keyExists = Test-Path $registryKeys[$program]
        if ($keyExists) {
            if ($msiPrograms.ContainsKey($program)) {
                $uninstallString = $msiPrograms[$program]
                Start-Process "msiexec.exe" -ArgumentList $uninstallString -Wait -WindowStyle Hidden | Out-Null
            } elseif ($exePrograms.ContainsKey($program)) {
                $programPath = $exePrograms[$program]["Path"]
                $uninstallArgs = $exePrograms[$program]["UninstallArgs"]
                Start-Process "$programPath\$program.exe" -ArgumentList $uninstallArgs -Wait -ErrorAction SilentlyContinue -WindowStyle Hidden | Out-Null
            }
        }
    }
}

# Start the uninstallation process
UninstallMSIPrograms
UninstallEXEPrograms
CheckUninstalledPrograms
