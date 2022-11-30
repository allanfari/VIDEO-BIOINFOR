echo "LIT A numero de registros de cada bacteria"
cut -f 1 ../data/grampa.csv | sort | wc -l
echo "LIT B especie con el conteo mas algo"
cat ../data/grampa.csv | cut -d "." -f 2 | cut -d "," -f 1 | sort | uniq -c | sort | tail -n 1
echo "LIT C especie con el conteo mas bajo"
cat ../data/grampa.csv | cut -d "." -f 2 | cut -d "," -f 1 | sort | uniq -c | sort | head -n 3 | tail -n 1

