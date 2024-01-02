

$DHDUNINSTALL = "/X{9755EB71-FC9B-497D-A643-8FB5A68F5079} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall.txt" #DHD Uninstall

$SQL2012UNINSTALL = "/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012.txt"

$SQL2012TRANSACTUNINSTALL = "/X{0E8670B8-3965-4930-ADA6-570348B67153} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012TRANSACT.txt"

$SQL2012DATABASEENGINEUNINSTALL = "/X{18B2A97C-92C3-4AC7-BE72-F823E0BC895B} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE.txt"

$SQL2012DATABASEENGINE2UNINSTALL = "/X{84FBCA4A-D650-4B0D-8094-EC0671FA9B91} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINE_2.txt"

$SQL2012COMMONFILESUNINSTALL = "/X{1D411379-9CE0-4B13-A19B-72D3222DD620} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES.txt"

$SQL2012COMMONFILES2UNINSTALL = "/X{202AAF1F-69AA-442A-B59F-6B54B1AD07C6} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012COMMONFILES_2.txt"

$SQL2012VSSWRITERUNINSTALL = "/X{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012VSSWRITER.txt"

$SQL2012NATIVECLIENTUNINSTALL = "/X{49D665A2-4C2A-476E-9AB8-FCC425F526FC} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012NATIVECLIENT.txt"

$SQL2012DATABASEENGINESHAREDUNINSTALL = "/X{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED.txt"

$SQL2012DATABASEENGINESHARED2UNINSTALL = "/X{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012DATABASEENGINESHARED_2.txt"

$SQL2012SETUPUNINSTALL = "/X{8CB0713F-CFE0-445D-BCB2-538465860E1A} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SETUP.txt"

$SQL2012RSFXDRIVERUNINSTALL = "/X{A0F05048-7653-4FCD-9F3A-C740E4052ACE} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012RSFXDRIVER.txt"

$SQL2012SERVERBROWSERUNINSTALL = "/X{4B9E6EB0-0EED-4E74-9479-F982C3254F71} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2012SERVERBROWSER.txt"

$SQL2008SETUPUNINSTALL = "/X{B40EE88B-400A-4266-A17B-E3DE64E94431} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQL2008SETUP.txt"

$SQLCUSTOMEREXPIRENCEUNINSTALL = "/X{BED1EA3D-592D-4305-9D1F-20F03726EFC1} /q /NORESTART /Log C:\itslog\IntuneDHDUninstall\Intune_DHDUninstall_SQLCUSTOMEREXPIRENCE.txt"

$IESPELLUNINSTALL = "C:\Program Files (x86)\ieSpell\uninst.exe"
$RAILOUNINSTALL = "C:\railo\uninstall.exe"

$scripts = ${Function:Invoke-DHDUninstall}, ${Function:Invoke-SQL2012Uninstall}, ${Function:Invoke-SQL2012TransactUninstall}, ${Function:Invoke-SQL2012DataBaseEngineUninstall}, ${Function:Invoke-SQL2012DataBaseEngine2Uninstall}, ${Function:Invoke-SQL2012CommonFilesUninstall}, ${Function:Invoke-SQLCommonFiles2Uninstall}, ${Function:Invoke-SQL2012VSSWriterUninstall}, ${Function:Invoke-SQL2012NativeClientUninstall}, ${Function:Invoke-SQL2012DataBaseEngineSharedUninstall}, ${Function:Invoke-SQL2012DataBaseEngineShared2Uninstall}, ${Function:Invoke-SQL2012ServerSetUpUninstall}, ${Function:Invoke-SQL2012RsFxDriverUninstall}, ${Function:Invoke-SQL2012ServerBrowserUninstall}, ${Function:Invoke-SQL2008SetUpSupportFilesUninstall}, ${Function:Invoke-SQLCustomerExpirenceUninstall}, ${Function:Invoke-IeSpellUninstall}, ${Function:Invoke-RailoUninstall}

function Invoke-DHDUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9755EB71-FC9B-497D-A643-8FB5A68F5079}")) {
        Start-Process msiexec $DHDUNINSTALL -Wait 
    }
    else {
        Write-Output "DHDUNINSTAL"
        return 0
        
    }    
}

function Invoke-SQL2012Uninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}")) {
        Start-Process msiexec $SQL2012UNINSTALL -Wait
    }
    else {
        Write-Output "SQL2012"
        return 0
    }    
}

function Invoke-SQL2012TransactUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0E8670B8-3965-4930-ADA6-570348B67153}")) {
        Start-Process msiexec $SQL2012TRANSACTUNINSTALL -Wait
    }
    else {
        return 0
    }    
}

function Invoke-SQL2012DataBaseEngineUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{18B2A97C-92C3-4AC7-BE72-F823E0BC895B}")) {
        Start-Process msiexec $SQL2012DATABASEENGINEUNINSTALL -Wait
    }
    else {
        return 0
    }    
}

function Invoke-SQL2012DataBaseEngine2Uninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{84FBCA4A-D650-4B0D-8094-EC0671FA9B91}")) {
        Start-Process msiexec $SQL2012DATABASEENGINE2UNINSTALL -Wait
    }
    else {
        return 0
    } 
    
}

function Invoke-SQL2012CommonFilesUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1D411379-9CE0-4B13-A19B-72D3222DD620}")) {
        Start-Process msiexec $SQL2012COMMONFILESUNINSTALL -Wait
    }
    else {
        return 0
    }
    
}

function Invoke-SQLCommonFiles2Uninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{202AAF1F-69AA-442A-B59F-6B54B1AD07C6}")) {
        Start-Process msiexec $SQL2012COMMONFILES2UNINSTALL -Wait
    }
    else {
        return 0
    } 
    
}

function Invoke-SQL2012VSSWriterUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3E0DD83F-BE4C-4478-86A0-AD0D79D1353E}")) {
        Start-Process msiexec $SQL2012VSSWRITERUNINSTALL -Wait
    }
    else {
        return 0
    } 
}

function Invoke-SQL2012NativeClientUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{49D665A2-4C2A-476E-9AB8-FCC425F526FC}")) {
        Start-Process msiexec $SQL2012NATIVECLIENTUNINSTALL -Wait
    }
    else {
        return 0
    } 
}

function Invoke-SQL2012DataBaseEngineSharedUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{54FF8FAB-DE27-4187-82F1-EBAE6AEE869A}")) {
        Start-Process msiexec $SQL2012DATABASEENGINESHAREDUNINSTALL -Wait
    }
    else {
        return 0
    }
}

function Invoke-SQL2012DataBaseEngineShared2Uninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6603C2CE-3C54-4F1D-92F9-8390CD4CCCA8}")) {
        Start-Process msiexec $SQL2012DATABASEENGINESHARED2UNINSTALL -Wait
    }
    else {
        return 0
    }
}

function Invoke-SQL2012ServerSetUpUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8CB0713F-CFE0-445D-BCB2-538465860E1A}")) {
        Start-Process msiexec $SQL2012SETUPUNINSTALL -Wait
    }
    else {
        return 0
    }
}

function Invoke-SQL2012RsFxDriverUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A0F05048-7653-4FCD-9F3A-C740E4052ACE}")) {
        Start-Process msiexec $SQL2012RSFXDRIVERUNINSTALL -Wait
    }
    else {
        return 0
    }    
}

function Invoke-SQL2012ServerBrowserUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B9E6EB0-0EED-4E74-9479-F982C3254F71}")) {
        Start-Process msiexec $SQL2012SERVERBROWSERUNINSTALL -Wait
    }
    else {
        return 0
    } 
}

function Invoke-SQL2008SetUpSupportFilesUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B40EE88B-400A-4266-A17B-E3DE64E94431}")) {
        Start-Process msiexec $SQL2008SETUPUNINSTALL -Wait
    }
    else {
        return 0
    } 
}

function Invoke-SQLCustomerExpirenceUninstall {
    if ((Test-Path -Path registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{BED1EA3D-592D-4305-9D1F-20F03726EFC1}")) {
        Start-Process msiexec $SQLCUSTOMEREXPIRENCEUNINSTALL -Wait
    }
    else {
        return 0
    } 
}

function Invoke-IeSpellUninstall {
    if ((Test-Path -Path "C:\Program Files (x86)\ieSpell\uninst.exe")) {
        Start-Process $IESPELLUNINSTALL "/S" -Wait -ErrorAction SilentlyContinue
        $Error[0] | Out-File -FilePath "C:\itslog\Intune_DHDUninstall_IESPELL_ERRORLOG.txt" -Append
    }
    else {
        return 0
    } 
}

function Invoke-RailoUninstall {
    if ((Test-Path -Path "C:\Program Files (x86)\ieSpell\uninst.exe")) {
        Start-Process $RAILOUNINSTALL "--mode unattended" -Wait -ErrorAction SilentlyContinue
        $Error[0] | Out-File -FilePath "C:\itslog\Intune_DHDUninstall_RAILO_ERRORLOG.txt" -Append
        
    }
    else {
        return 0
    } 
}


$scripts | ForEach-Object Invoke



