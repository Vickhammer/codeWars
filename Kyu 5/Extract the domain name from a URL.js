DESCRIPTION:
// Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

// * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
// * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
// * url = "https://www.cnet.com"                -> domain name = cnet"

function domainName(url){
    let a = url.replace(/[:./]/g, ' ').split(' ').filter(x => x.match(/\w/g))
    for(let i = 0; i < a.length; i++){
      if(a[i] == 'www' || a[i] == 'http' || a[i] == 'https'){
        a[i] = ''
    }
    }
    return a.filter(x => x != '')[0]
  }