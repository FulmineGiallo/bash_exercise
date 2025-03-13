# Utilizzando AWK, stampare solo le linee di un file, contenenti la parola "LSO" proceduta da "ASD" e seguita da "INGWS"
# !/bin/awk
awk -f script.awk file.txt

/ASD LSO INGWS/
{
    print $0
}
