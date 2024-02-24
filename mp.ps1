# Function to read clipboard content
function Get-ClipboardContent {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Clipboard]::GetText()
}

# Function to process clipboard text
function Process-ClipboardText {
    param (
        [string]$Text
    )

    # Extract the name and starting code
    $name = $Text -split "`n" | Select-Object -First 1
    $starting_code = ($Text -split "`n")[1..($Text -split "`n").Length] -join "`n"

    # Print the extracted name
    Write-Host "Extracted name: $name"

    # Format the output
    $output = @"
Name: $name

Starting Code:
$starting_code
"@

    # Print the formatted output
    Write-Output $output

    # Ask for confirmation
    $confirmation = Read-Host "Do you want to create a file with this information? (Y/N)"

    if ($confirmation.ToLower() -eq 'y') {
        # Filter out invalid characters from the filename
        $invalidChars = [System.IO.Path]::GetInvalidFileNameChars()
        $filename = $name -replace "[{0}]" -f ($invalidChars -join '')

        # Append the .rb extension
        $filename += ".rb"

        # Print the filename for debugging
        Write-Host "Generated filename: $filename"

        # Create a file with the problem name and save the starting code
        try {
            New-Item -Path . -Name $filename -ItemType "file" -Value $starting_code -ErrorAction Stop
            Write-Host "File '$filename' created successfully."
            
            # Open the file in Visual Studio Code
            code $filename
        } catch {
            Write-Host "Error creating file: $_"
        }
    } else {
        Write-Host "Operation canceled. No file created."
    }
}

# Read clipboard content
$clipboard_text = Get-ClipboardContent

# Process clipboard text
Process-ClipboardText -Text $clipboard_text
