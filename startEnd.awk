# con AWK stampare tutte le linee che contengono le parole che iniziano con "es" e terminano con "E"
# !/bin/awk

/^es.*E$/
{
    print $0
}
