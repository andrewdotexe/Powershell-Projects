# PowerShell Script to Decode a Base64 Encoded String

function Decode-Base64String {
    param (
        [string]$Base64String
    )

    try {
        # Convert Base64 string to bytes
        $byteArray = [System.Convert]::FromBase64String($Base64String)

        # Convert bytes to string
        $decodedString = [System.Text.Encoding]::UTF8.GetString($byteArray)

        return $decodedString
    }
    catch {
        Write-Host "Error: $($_.Exception.Message)"
    }
}

# Prompt user for input
$base64Input = Read-Host -Prompt "Enter the Base64 encoded string to decode"

# Decode the Base64 string
$decodedOutput = Decode-Base64String -Base64String $base64Input

# Output the decoded string
Write-Host "Decoded String: $decodedOutput"