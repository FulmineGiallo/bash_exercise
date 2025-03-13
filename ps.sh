# Utilizzando ps, visualizzare 5 processi con maggiore tempo di esecuzione in ordine decrescente.
# Mostrare i nomi dei comandi e l'ID del processo.
# Filtrare i tempi di esecuzione superiore a un dato valore specifico.

# !/bin/bash
ps -eo pid,comm,etimes --sort=etimes | head -5

# # Filtrare i tempi di esecuzione superiore a un dato valore specifico.
ps -eo pid,comm,etimes --sort=etimes | awk '$3 > valore {print}'
