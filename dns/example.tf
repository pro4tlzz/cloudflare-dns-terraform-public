records = {
  "domain1.com" = {
    "TXT" = {
      spf : {
        record = "v=spf1 include:_spf.google.com -all"
        name   = "@"
      }
      dmarc : {
        record = "v=DMARC1; p=reject;"
        name   = "_dmarc"
      }
    }
    "MX" = {
      mx4 : {
        record   = "alt4.aspmx.l.google.com"
        name     = "@"
        priority = "10"
      }
      mx3 : {
        record   = "alt3.aspmx.l.google.com"
        name     = "@"
        priority = "10"
      }
      mx2 : {
        record   = "alt2.aspmx.l.google.com"
        name     = "@"
        priority = "5"
      }
      mx1 : {
        record   = "alt1.aspmx.l.google.com"
        name     = "@"
        priority = "5"
      }
      mx0 : {
        record   = "aspmx.l.google.com"
        name     = "@"
        priority = "1"
      }
    }
    "CNAME" : {
      wildcard : {
        record : "domain1.com"
        name : "*"
      }
    }
    "A" : {
      awesomewebsite : {
        record : "172.20.0.1"
        name : "@"
      }
    }
  }
  "domain2.com" = {
    "TXT" = {
      spf : {
        record = "v=spf1 include:_spf.google.com -all"
        name   = "@"
      }
      dmarc : {
        record = "v=DMARC1; p=reject;"
        name   = "_dmarc"
      }
    }
    "MX" = {
      mx4 : {
        record   = "alt4.aspmx.l.google.com"
        name     = "@"
        priority = "10"
      }
      mx3 : {
        record   = "alt3.aspmx.l.google.com"
        name     = "@"
        priority = "10"
      }
      mx2 : {
        record   = "alt2.aspmx.l.google.com"
        name     = "@"
        priority = "5"
      }
      mx1 : {
        record   = "alt1.aspmx.l.google.com"
        name     = "@"
        priority = "5"
      }
      mx0 : {
        record   = "aspmx.l.google.com"
        name     = "@"
        priority = "1"
      }
    }
    "CNAME" : {
      wildcard : {
        record : "domain2.com"
        name : "*"
      }
    }
    "A" : {
      awesomewebsite : {
        record : "172.20.0.1"
        name : "@"
      }
    }
  }
}