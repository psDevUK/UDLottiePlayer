# UDLottiePlayer
UDLottieplayer takes away the complexity from Motion Design
![Demo of component](/UDLottiePlayer/UDLottiePlayer.gif?raw=true "Demo of component")
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
