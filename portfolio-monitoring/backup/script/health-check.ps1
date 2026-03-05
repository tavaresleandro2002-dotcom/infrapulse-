$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# CPU
try {
    $cpu = (Get-WmiObject Win32_Processor).LoadPercentage
    if(!$cpu){ $cpu = 0 }
}
catch {
    $cpu = 0
}

# Memória
try {
    $os = Get-CimInstance Win32_OperatingSystem

    $memTotal = [double]$os.TotalVisibleMemorySize
    $memLivre = [double]$os.FreePhysicalMemory

    if($memTotal -gt 0){
        $memUso = [math]::Round((($memTotal - $memLivre)/$memTotal)*100,2)
    }else{
        $memUso = 0
    }
}
catch {
    $memUso = 0
}

# Disco C
try {
    $disk = Get-PSDrive C

    if($disk.Free -gt 0){
        $diskFree = [math]::Round(($disk.Free/($disk.Free + $disk.Used))*100,2)
    }else{
        $diskFree = 0
    }
}
catch {
    $diskFree = 0
}

# Rede
try {
    $rede = Test-Connection 8.8.8.8 -Count 1 -Quiet
}
catch {
    $rede = $false
}

# JSON final
$health = @{
    Data = $timestamp
    CPU = $cpu
    Memoria = $memUso
    DiscoLivre = $diskFree
    RedeOK = $rede
}

$health | ConvertTo-Json | Out-File "C:\Users\ltavares\Desktop\portfolio-monitoring\data\health.json" -Force