$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDLottiePlayer {
    <#
    .SYNOPSIS
    Displays a Lottie Animation 
    
    .DESCRIPTION
    Really nice JSON animations available using the lottie player animation JSON URLs can be obtained from  https://lottiefiles.com/ for free
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER AutoPlay
    Boolean value to determine if animation should auto-play or not default is true

    .PARAMETER Loop
    Boolean value to determine if animation should loop or not default is true

    .PARAMETER LottieURL
    Is a string value for the lottie animation url 

    .PARAMETER Controls
    Boolean value to determine if the lottie player controls should be shown default is true

    .PARAMETER Hover
    Boolean value to determine if the animation should play on mouse hover default is false

    .EXAMPLE
    New-UDComponent -LottieURL "https://assets6.lottiefiles.com/packages/lf20_0zomy8eb.json"
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [bool]$AutoPlay = $true,
        [Parameter()]
        [bool]$Loop = $true,
        [Parameter()]
        [string]$LottieURL,
        [Parameter()]
        [decimal]$Speed = 1,
        [Parameter()]
        [bool]$Controls = $true,
        [Parameter()]
        [bool]$Hover = $false
    )

    End {
        @{
            assetId  = $AssetId 
            isPlugin = $true 
            type     = "udlottieplayer"
            id       = $Id

            autoplay = $AutoPlay
            loop     = $Loop
            src      = $LottieURL
            speed    = $Speed
            visible  = $Controls
            hover    = $Hover
        }
    }
}