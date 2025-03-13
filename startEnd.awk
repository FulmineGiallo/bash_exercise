# con AWK stampare tutte le linee che contengono le parole che iniziano con "es" e terminano con "E"
# !/bin/awk

/^es.*E$/
{
    print $0
}

# seconda versione dove si vogliono le linee che iniziano con es e non finiscono con ame.
awk '/^es/ && !/ame$/' file.txt
