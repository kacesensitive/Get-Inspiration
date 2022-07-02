<#
 .Synopsis
  Generates a link to an inspirational quote.

 .Description
  Makes a web request to https://inspirobot.me/ and returns a link to
  the generated inspirationsal quote.

 .Parameter X
  We are not using inputs but if you were, you would describe them here.

 .Example
   # Generate an inspirational quote.
   Get-Inspiration
#>
function Get-Inspiration {
    return (Invoke-WebRequest -Method "GET" -Uri "https://inspirobot.me/api?generate=true").Content
}

Export-ModuleMember -Function Get-Inspiration