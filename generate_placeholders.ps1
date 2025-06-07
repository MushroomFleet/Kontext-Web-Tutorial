# PowerShell script to generate all placeholder images for FLUX Kontext prompts

Add-Type -AssemblyName System.Drawing

function Create-PlaceholderImage {
    param(
        [string]$filename,
        [string]$text,
        [string]$idText
    )
    
    $bitmap = New-Object System.Drawing.Bitmap(1024, 1024)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    
    # Fill with gray background
    $brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(128, 128, 128))
    $graphics.FillRectangle($brush, 0, 0, 1024, 1024)
    
    # Main text (BEFORE/AFTER)
    $font = New-Object System.Drawing.Font("Arial", 48, [System.Drawing.FontStyle]::Bold)
    $textBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
    $size = $graphics.MeasureString($text, $font)
    $x = (1024 - $size.Width) / 2
    $y = (1024 - $size.Height) / 2 - 50
    $graphics.DrawString($text, $font, $textBrush, $x, $y)
    
    # ID text
    $idFont = New-Object System.Drawing.Font("Arial", 24, [System.Drawing.FontStyle]::Regular)
    $idSize = $graphics.MeasureString($idText, $idFont)
    $idX = (1024 - $idSize.Width) / 2
    $idY = $y + $size.Height + 20
    $graphics.DrawString($idText, $idFont, $textBrush, $idX, $idY)
    
    # Save the image
    $bitmap.Save("images/$filename", [System.Drawing.Imaging.ImageFormat]::Png)
    
    # Cleanup
    $graphics.Dispose()
    $bitmap.Dispose()
    $brush.Dispose()
    $textBrush.Dispose()
    $font.Dispose()
    $idFont.Dispose()
}

# Generate all placeholder images (id01 to id25)
for ($i = 1; $i -le 25; $i++) {
    $id = "{0:D2}" -f $i
    
    Write-Host "Generating placeholders for id$id..."
    
    # Before image
    Create-PlaceholderImage -filename "id${id}a.png" -text "BEFORE" -idText "id${id}a.png"
    
    # After image  
    Create-PlaceholderImage -filename "id${id}b.png" -text "AFTER" -idText "id${id}b.png"
}

Write-Host "All placeholder images generated successfully!"
