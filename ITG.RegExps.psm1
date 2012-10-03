# регулярное выражение для выделения адреса электронной почты 
[System.Text.RegularExpressions.Regex]$reDomain = "(?<domain>(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+(?:aero|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|[a-zA-Z]{2}))"
[System.Text.RegularExpressions.Regex]$reMailAddr = "(?<addr>(?<lname>[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*)@$($reDomain))"

Export-ModuleMember -variable `
    reDomain `
    ,reMailAddr
