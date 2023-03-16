echo "Stopping ICE2"

get-Process WoodPlan5 | Stop-Process -Force

try {
    Write-Output "Trying first Network Location"
    \\gcontrol.local\NETLOGON\LoginGritting.bat
}
catch [System.IO.IOException] {
    "Trying second network location"
    }
try {
    \\gcvdc01\NETLOGON\LoginGritting.bat
} 
catch [System.IO.IOException] {
    "Trying final network location"
    }
try {    
    \\gcpdc\NETLOGON\LoginGritting.bat
}
catch [System.IO.IOException] {
    "The network path was not found"
}
