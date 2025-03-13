# !/bin/bash
# Trovare tutti i file con estensione .txt, prima del 20-03-2023 e dopo il 20-02-2010 nella directory
# /home e nelle sue sottodirectory. Fare il merge di del contenuto di tutti i file in un unico file.
# 20-02-2010 < data < 20-03-2023

find /home -type f -name "*.txt" ! -name "merged.txt" -newermt "2010-02-20" ! -newermt "2023-03-20" -exec cat {} >> merged.txt \; 
