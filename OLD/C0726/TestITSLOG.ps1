function Test-ITSLog {
    param ()

    if (!(Test-Path "C:\itslog")) {
        New-Item -ItemType Directory -Path "C:\itslog\Intune" -Force
    }
    
}