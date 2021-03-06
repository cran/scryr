structure(list(url = "https://api.scryfall.com/cards/named?fuzzy=aust", 
    status_code = 404L, headers = structure(list(date = "Wed, 05 Jan 2022 05:17:46 GMT", 
        `content-type` = "application/json; charset=utf-8", `x-frame-options` = "DENY", 
        `x-xss-protection` = "1; mode=block", `x-content-type-options` = "nosniff", 
        `x-download-options` = "noopen", `x-permitted-cross-domain-policies` = "none", 
        `referrer-policy` = "strict-origin-when-cross-origin", 
        `access-control-allow-origin` = "*", `access-control-allow-methods` = "GET, POST, DELETE, OPTIONS", 
        `access-control-allow-headers` = "Accept, Accept-Charset, Accept-Language, Authorization, Cache-Control, Content-Language, Content-Type, DNT, Host, If-Modified-Since, Keep-Alive, Origin, Referer, User-Agent, X-Requested-With", 
        `access-control-max-age` = "300", `x-robots-tag` = "none", 
        `cache-control` = "public, max-age=7200", `x-action-cache` = "MISS", 
        vary = "Accept-Encoding", `content-encoding` = "gzip", 
        `strict-transport-security` = "max-age=31536000; includeSubDomains; preload", 
        via = "1.1 vegur", `cf-cache-status` = "HIT", age = "5039", 
        `expect-ct` = "max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"", 
        `report-to` = "{\"endpoints\":[{\"url\":\"https:\\/\\/a.nel.cloudflare.com\\/report\\/v3?s=nveu9haS14X6p0WHHQ0wWogVcVbySnv0tTyfZpOd1mt7lXqrE%2Fq0086R4Gyn8TPti9gIRQtluyGFvns4K33JHdahiUiq7cGFK5456RWmB3V0LFSAfKTf3uJUQ9EOlSQ6b8UF%2FPbi%2FnnieZdxCJ8%3D\"}],\"group\":\"cf-nel\",\"max_age\":604800}", 
        nel = "{\"success_fraction\":0,\"report_to\":\"cf-nel\",\"max_age\":604800}", 
        server = "cloudflare", `cf-ray` = "6c8a3dfd29614edd-GRU", 
        `alt-svc` = "h3=\":443\"; ma=86400, h3-29=\":443\"; ma=86400, h3-28=\":443\"; ma=86400, h3-27=\":443\"; ma=86400"), class = c("insensitive", 
    "list")), all_headers = list(list(status = 404L, version = "HTTP/2", 
        headers = structure(list(date = "Wed, 05 Jan 2022 05:17:46 GMT", 
            `content-type` = "application/json; charset=utf-8", 
            `x-frame-options` = "DENY", `x-xss-protection` = "1; mode=block", 
            `x-content-type-options` = "nosniff", `x-download-options` = "noopen", 
            `x-permitted-cross-domain-policies` = "none", `referrer-policy` = "strict-origin-when-cross-origin", 
            `access-control-allow-origin` = "*", `access-control-allow-methods` = "GET, POST, DELETE, OPTIONS", 
            `access-control-allow-headers` = "Accept, Accept-Charset, Accept-Language, Authorization, Cache-Control, Content-Language, Content-Type, DNT, Host, If-Modified-Since, Keep-Alive, Origin, Referer, User-Agent, X-Requested-With", 
            `access-control-max-age` = "300", `x-robots-tag` = "none", 
            `cache-control` = "public, max-age=7200", `x-action-cache` = "MISS", 
            vary = "Accept-Encoding", `content-encoding` = "gzip", 
            `strict-transport-security` = "max-age=31536000; includeSubDomains; preload", 
            via = "1.1 vegur", `cf-cache-status` = "HIT", age = "5039", 
            `expect-ct` = "max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"", 
            `report-to` = "{\"endpoints\":[{\"url\":\"https:\\/\\/a.nel.cloudflare.com\\/report\\/v3?s=nveu9haS14X6p0WHHQ0wWogVcVbySnv0tTyfZpOd1mt7lXqrE%2Fq0086R4Gyn8TPti9gIRQtluyGFvns4K33JHdahiUiq7cGFK5456RWmB3V0LFSAfKTf3uJUQ9EOlSQ6b8UF%2FPbi%2FnnieZdxCJ8%3D\"}],\"group\":\"cf-nel\",\"max_age\":604800}", 
            nel = "{\"success_fraction\":0,\"report_to\":\"cf-nel\",\"max_age\":604800}", 
            server = "cloudflare", `cf-ray` = "6c8a3dfd29614edd-GRU", 
            `alt-svc` = "h3=\":443\"; ma=86400, h3-29=\":443\"; ma=86400, h3-28=\":443\"; ma=86400, h3-27=\":443\"; ma=86400"), class = c("insensitive", 
        "list")))), cookies = structure(list(domain = ".api.scryfall.com", 
        flag = TRUE, path = "/", secure = FALSE, expiration = structure(1641440572, class = c("POSIXct", 
        "POSIXt")), name = "heroku-session-affinity", value = "REDACTED"), row.names = c(NA, 
    -1L), class = "data.frame"), content = charToRaw("{\n  \"object\": \"error\",\n  \"code\": \"not_found\",\n  \"type\": \"ambiguous\",\n  \"status\": 404,\n  \"details\": \"Too many cards match ambiguous name “aust”. Add more words to refine your search.\"\n}"), 
    date = structure(1641359866, class = c("POSIXct", "POSIXt"
    ), tzone = "GMT"), times = c(redirect = 0, namelookup = 1e-04, 
    connect = 1e-04, pretransfer = 0.000266, starttransfer = 0.017985, 
    total = 0.018085)), class = "response")
