# Script de preprocesamiento
# Eliminamos la primer fila
tail -n +2 data/MBTI500.csv > data/MBTI500.txt
# Agarramos la primer columna y ponemos una solo palabra en la columna
cat data/MBTI500.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.all.words.txt
# contamos las repeticiones por palabra
cat data/MBTI500.all.words.txt | sort | uniq -c > data/MBTI500.all.words.count.txt
# ordenamos por mayor a menor repeticion
cat data/MBTI500.all.words.count.txt | sort -nr > data/MBTI500.all.words.count.sorted.txt
# Agarramos los tipos de personalidad y las contamos
cat data/MBTI500.txt | awk -F',' '{print $2}' | sort | uniq -c > data/MBTI500.all.type.count.txt

# generamos un archivo por cada tipo
cat data/MBTI500.txt | grep ENFJ > data/MBTI500.ENFJ.txt
cat data/MBTI500.txt | grep ENFP > data/MBTI500.ENFP.txt
cat data/MBTI500.txt | grep ENTJ > data/MBTI500.ENTJ.txt
cat data/MBTI500.txt | grep ENTP > data/MBTI500.ENTP.txt
cat data/MBTI500.txt | grep ESFJ > data/MBTI500.ESFJ.txt
cat data/MBTI500.txt | grep ESFP > data/MBTI500.ESFP.txt
cat data/MBTI500.txt | grep ESTJ > data/MBTI500.ESTJ.txt
cat data/MBTI500.txt | grep ESTP > data/MBTI500.ESTP.txt
cat data/MBTI500.txt | grep INFJ > data/MBTI500.INFJ.txt
cat data/MBTI500.txt | grep INFP > data/MBTI500.INFP.txt
cat data/MBTI500.txt | grep INTJ > data/MBTI500.INTJ.txt
cat data/MBTI500.txt | grep INTP > data/MBTI500.INTP.txt
cat data/MBTI500.txt | grep ISFJ > data/MBTI500.ISFJ.txt
cat data/MBTI500.txt | grep ISFP > data/MBTI500.ISFP.txt
cat data/MBTI500.txt | grep ISTJ > data/MBTI500.ISTJ.txt
cat data/MBTI500.txt | grep ISTP > data/MBTI500.ISTP.txt

# agarramos las palabras por cada tipo y las colocamos en una sola columna
cat data/MBTI500.ENFJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ENFJ.all.words.txt
cat data/MBTI500.ENFP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ENFP.all.words.txt
cat data/MBTI500.ENTJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ENTJ.all.words.txt
cat data/MBTI500.ENTP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ENTP.all.words.txt
cat data/MBTI500.ESFJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ESFJ.all.words.txt
cat data/MBTI500.ESFP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ESFP.all.words.txt
cat data/MBTI500.ESTJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ESTJ.all.words.txt
cat data/MBTI500.ESTP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ESTP.all.words.txt
cat data/MBTI500.INFJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.INFJ.all.words.txt
cat data/MBTI500.INFP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.INFP.all.words.txt
cat data/MBTI500.INTJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.INTJ.all.words.txt
cat data/MBTI500.INTP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.INTP.all.words.txt
cat data/MBTI500.ISFJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ISFJ.all.words.txt
cat data/MBTI500.ISFP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ISFP.all.words.txt
cat data/MBTI500.ISTJ.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ISTJ.all.words.txt
cat data/MBTI500.ISTP.txt | awk -F',' '{print $1}' | sed 's/ /\n/g' > data/MBTI500.ISTP.all.words.txt

# contamos las palabras por cada tipo
cat data/MBTI500.ENFJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ENFJ.all.words.count.sorted.txt
cat data/MBTI500.ENFP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ENFP.all.words.count.sorted.txt
cat data/MBTI500.ENTJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ENTJ.all.words.count.sorted.txt
cat data/MBTI500.ENTP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ENTP.all.words.count.sorted.txt
cat data/MBTI500.ESFJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ESFJ.all.words.count.sorted.txt
cat data/MBTI500.ESFP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ESFP.all.words.count.sorted.txt
cat data/MBTI500.ESTJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ESTJ.all.words.count.sorted.txt
cat data/MBTI500.ESTP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ESTP.all.words.count.sorted.txt
cat data/MBTI500.INFJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.INFJ.all.words.count.sorted.txt
cat data/MBTI500.INFP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.INFP.all.words.count.sorted.txt
cat data/MBTI500.INTJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.INTJ.all.words.count.sorted.txt
cat data/MBTI500.INTP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.INTP.all.words.count.sorted.txt
cat data/MBTI500.ISFJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ISFJ.all.words.count.sorted.txt
cat data/MBTI500.ISFP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ISFP.all.words.count.sorted.txt
cat data/MBTI500.ISTJ.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ISTJ.all.words.count.sorted.txt
cat data/MBTI500.ISTP.all.words.txt | sort | uniq -c | sort -nr > data/MBTI500.ISTP.all.words.count.sorted.txt

# nos quedamos con las 40 palabras que mas se repiten en cada tipo
head -40 data/MBTI500.ENFJ.all.words.count.sorted.txt > data/MBTI500.ENFJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ENFP.all.words.count.sorted.txt > data/MBTI500.ENFP.all.words.count.sorted.40.txt
head -40 data/MBTI500.ENTJ.all.words.count.sorted.txt > data/MBTI500.ENTJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ENTP.all.words.count.sorted.txt > data/MBTI500.ENTP.all.words.count.sorted.40.txt
head -40 data/MBTI500.ESFJ.all.words.count.sorted.txt > data/MBTI500.ESFJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ESFP.all.words.count.sorted.txt > data/MBTI500.ESFP.all.words.count.sorted.40.txt
head -40 data/MBTI500.ESTJ.all.words.count.sorted.txt > data/MBTI500.ESTJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ESTP.all.words.count.sorted.txt > data/MBTI500.ESTP.all.words.count.sorted.40.txt
head -40 data/MBTI500.INFJ.all.words.count.sorted.txt > data/MBTI500.INFJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.INFP.all.words.count.sorted.txt > data/MBTI500.INFP.all.words.count.sorted.40.txt
head -40 data/MBTI500.INTJ.all.words.count.sorted.txt > data/MBTI500.INTJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.INTP.all.words.count.sorted.txt > data/MBTI500.INTP.all.words.count.sorted.40.txt
head -40 data/MBTI500.ISFJ.all.words.count.sorted.txt > data/MBTI500.ISFJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ISFP.all.words.count.sorted.txt > data/MBTI500.ISFP.all.words.count.sorted.40.txt
head -40 data/MBTI500.ISTJ.all.words.count.sorted.txt > data/MBTI500.ISTJ.all.words.count.sorted.40.txt
head -40 data/MBTI500.ISTP.all.words.count.sorted.txt > data/MBTI500.ISTP.all.words.count.sorted.40.txt

# Agregamos el tipo en la segunda columna
cat data/MBTI500.ENFJ.all.words.count.sorted.40.txt | awk '{print $1, "ENFJ", $2}' > data/MBTI500.ENFJ.dict.txt
cat data/MBTI500.ENFP.all.words.count.sorted.40.txt | awk '{print $1, "ENFP", $2}' > data/MBTI500.ENFP.dict.txt
cat data/MBTI500.ENTJ.all.words.count.sorted.40.txt | awk '{print $1, "ENTJ", $2}' > data/MBTI500.ENTJ.dict.txt
cat data/MBTI500.ENTP.all.words.count.sorted.40.txt | awk '{print $1, "ENTP", $2}' > data/MBTI500.ENTP.dict.txt
cat data/MBTI500.ESFJ.all.words.count.sorted.40.txt | awk '{print $1, "ESFJ", $2}' > data/MBTI500.ESFJ.dict.txt
cat data/MBTI500.ESFP.all.words.count.sorted.40.txt | awk '{print $1, "ESFP", $2}' > data/MBTI500.ESFP.dict.txt
cat data/MBTI500.ESTJ.all.words.count.sorted.40.txt | awk '{print $1, "ESTJ", $2}' > data/MBTI500.ESTJ.dict.txt
cat data/MBTI500.ESTP.all.words.count.sorted.40.txt | awk '{print $1, "ESTP", $2}' > data/MBTI500.ESTP.dict.txt
cat data/MBTI500.INFJ.all.words.count.sorted.40.txt | awk '{print $1, "INFJ", $2}' > data/MBTI500.INFJ.dict.txt
cat data/MBTI500.INFP.all.words.count.sorted.40.txt | awk '{print $1, "INFP", $2}' > data/MBTI500.INFP.dict.txt
cat data/MBTI500.INTJ.all.words.count.sorted.40.txt | awk '{print $1, "INTJ", $2}' > data/MBTI500.INTJ.dict.txt
cat data/MBTI500.INTP.all.words.count.sorted.40.txt | awk '{print $1, "INTP", $2}' > data/MBTI500.INTP.dict.txt
cat data/MBTI500.ISFJ.all.words.count.sorted.40.txt | awk '{print $1, "ISFJ", $2}' > data/MBTI500.ISFJ.dict.txt
cat data/MBTI500.ISFP.all.words.count.sorted.40.txt | awk '{print $1, "ISFP", $2}' > data/MBTI500.ISFP.dict.txt
cat data/MBTI500.ISTJ.all.words.count.sorted.40.txt | awk '{print $1, "ISTJ", $2}' > data/MBTI500.ISTJ.dict.txt
cat data/MBTI500.ISTP.all.words.count.sorted.40.txt | awk '{print $1, "ISTP", $2}' > data/MBTI500.ISTP.dict.txt

# generamos un diccionario por cada palabra con las repeticiones por tipo
cat data/MBTI500.*.dict.txt | grep " actually" | sed 's/ /\t/g' > data/actually.dict
cat data/MBTI500.*.dict.txt | grep " also" | sed 's/ /\t/g' > data/also.dict
cat data/MBTI500.*.dict.txt | grep " always" | sed 's/ /\t/g' > data/always.dict
cat data/MBTI500.*.dict.txt | grep " come" | sed 's/ /\t/g' > data/come.dict
cat data/MBTI500.*.dict.txt | grep " could" | sed 's/ /\t/g' > data/could.dict
cat data/MBTI500.*.dict.txt | grep " de" | sed 's/ /\t/g' > data/de.dict
cat data/MBTI500.*.dict.txt | grep " det" | sed 's/ /\t/g' > data/det.dict
cat data/MBTI500.*.dict.txt | grep " en" | sed 's/ /\t/g' > data/en.dict
cat data/MBTI500.*.dict.txt | grep " enfj" | sed 's/ /\t/g' > data/enfj.dict
cat data/MBTI500.*.dict.txt | grep " enfp" | sed 's/ /\t/g' > data/enfp.dict
cat data/MBTI500.*.dict.txt | grep " entj" | sed 's/ /\t/g' > data/entj.dict
cat data/MBTI500.*.dict.txt | grep " entp" | sed 's/ /\t/g' > data/entp.dict
cat data/MBTI500.*.dict.txt | grep " er" | sed 's/ /\t/g' > data/er.dict
cat data/MBTI500.*.dict.txt | grep " esfj" | sed 's/ /\t/g' > data/esfj.dict
cat data/MBTI500.*.dict.txt | grep " esfp" | sed 's/ /\t/g' > data/esfp.dict
cat data/MBTI500.*.dict.txt | grep " estj" | sed 's/ /\t/g' > data/estj.dict
cat data/MBTI500.*.dict.txt | grep " estp" | sed 's/ /\t/g' > data/estp.dict
cat data/MBTI500.*.dict.txt | grep " even" | sed 's/ /\t/g' > data/even.dict
cat data/MBTI500.*.dict.txt | grep " fe" | sed 's/ /\t/g' > data/fe.dict
cat data/MBTI500.*.dict.txt | grep " feel" | sed 's/ /\t/g' > data/feel.dict
cat data/MBTI500.*.dict.txt | grep " fi" | sed 's/ /\t/g' > data/fi.dict
cat data/MBTI500.*.dict.txt | grep " find" | sed 's/ /\t/g' > data/find.dict
cat data/MBTI500.*.dict.txt | grep " friend" | sed 's/ /\t/g' > data/friend.dict
cat data/MBTI500.*.dict.txt | grep " function" | sed 's/ /\t/g' > data/function.dict
cat data/MBTI500.*.dict.txt | grep " german" | sed 's/ /\t/g' > data/german.dict
cat data/MBTI500.*.dict.txt | grep " germany" | sed 's/ /\t/g' > data/germany.dict
cat data/MBTI500.*.dict.txt | grep " get" | sed 's/ /\t/g' > data/get.dict
cat data/MBTI500.*.dict.txt | grep " give" | sed 's/ /\t/g' > data/give.dict
cat data/MBTI500.*.dict.txt | grep " go" | sed 's/ /\t/g' > data/go.dict
cat data/MBTI500.*.dict.txt | grep " good" | sed 's/ /\t/g' > data/good.dict
cat data/MBTI500.*.dict.txt | grep " help" | sed 's/ /\t/g' > data/help.dict
cat data/MBTI500.*.dict.txt | grep " ikke" | sed 's/ /\t/g' > data/ikke.dict
cat data/MBTI500.*.dict.txt | grep " infj" | sed 's/ /\t/g' > data/infj.dict
cat data/MBTI500.*.dict.txt | grep " infp" | sed 's/ /\t/g' > data/infp.dict
cat data/MBTI500.*.dict.txt | grep " interest" | sed 's/ /\t/g' > data/interest.dict
cat data/MBTI500.*.dict.txt | grep " intj" | sed 's/ /\t/g' > data/intj.dict
cat data/MBTI500.*.dict.txt | grep " intp" | sed 's/ /\t/g' > data/intp.dict
cat data/MBTI500.*.dict.txt | grep " isfj" | sed 's/ /\t/g' > data/isfj.dict
cat data/MBTI500.*.dict.txt | grep " isfp" | sed 's/ /\t/g' > data/isfp.dict
cat data/MBTI500.*.dict.txt | grep " istj" | sed 's/ /\t/g' > data/istj.dict
cat data/MBTI500.*.dict.txt | grep " istp" | sed 's/ /\t/g' > data/istp.dict
cat data/MBTI500.*.dict.txt | grep " jeg" | sed 's/ /\t/g' > data/jeg.dict
cat data/MBTI500.*.dict.txt | grep " know" | sed 's/ /\t/g' > data/know.dict
cat data/MBTI500.*.dict.txt | grep " life" | sed 's/ /\t/g' > data/life.dict
cat data/MBTI500.*.dict.txt | grep " like" | sed 's/ /\t/g' > data/like.dict
cat data/MBTI500.*.dict.txt | grep " lol" | sed 's/ /\t/g' > data/lol.dict
cat data/MBTI500.*.dict.txt | grep " look" | sed 's/ /\t/g' > data/look.dict
cat data/MBTI500.*.dict.txt | grep " lot" | sed 's/ /\t/g' > data/lot.dict
cat data/MBTI500.*.dict.txt | grep " love" | sed 's/ /\t/g' > data/love.dict
cat data/MBTI500.*.dict.txt | grep " make" | sed 's/ /\t/g' > data/make.dict
cat data/MBTI500.*.dict.txt | grep " mean" | sed 's/ /\t/g' > data/mean.dict
cat data/MBTI500.*.dict.txt | grep " much" | sed 's/ /\t/g' > data/much.dict
cat data/MBTI500.*.dict.txt | grep " need" | sed 's/ /\t/g' > data/need.dict
cat data/MBTI500.*.dict.txt | grep " og" | sed 's/ /\t/g' > data/og.dict
cat data/MBTI500.*.dict.txt | grep " one" | sed 's/ /\t/g' > data/one.dict
cat data/MBTI500.*.dict.txt | grep " people" | sed 's/ /\t/g' > data/people.dict
cat data/MBTI500.*.dict.txt | grep " person" | sed 's/ /\t/g' > data/person.dict
cat data/MBTI500.*.dict.txt | grep " pretty" | sed 's/ /\t/g' > data/pretty.dict
cat data/MBTI500.*.dict.txt | grep " really" | sed 's/ /\t/g' > data/really.dict
cat data/MBTI500.*.dict.txt | grep " right" | sed 's/ /\t/g' > data/right.dict
cat data/MBTI500.*.dict.txt | grep " say" | sed 's/ /\t/g' > data/say.dict
cat data/MBTI500.*.dict.txt | grep " se" | sed 's/ /\t/g' > data/se.dict
cat data/MBTI500.*.dict.txt | grep " see" | sed 's/ /\t/g' > data/see.dict
cat data/MBTI500.*.dict.txt | grep " seem" | sed 's/ /\t/g' > data/seem.dict
cat data/MBTI500.*.dict.txt | grep " si" | sed 's/ /\t/g' > data/si.dict
cat data/MBTI500.*.dict.txt | grep " someone" | sed 's/ /\t/g' > data/someone.dict
cat data/MBTI500.*.dict.txt | grep " something" | sed 's/ /\t/g' > data/something.dict
cat data/MBTI500.*.dict.txt | grep " still" | sed 's/ /\t/g' > data/still.dict
cat data/MBTI500.*.dict.txt | grep " take" | sed 's/ /\t/g' > data/take.dict
cat data/MBTI500.*.dict.txt | grep " talk" | sed 's/ /\t/g' > data/talk.dict
cat data/MBTI500.*.dict.txt | grep " thank" | sed 's/ /\t/g' > data/thank.dict
cat data/MBTI500.*.dict.txt | grep " thing" | sed 's/ /\t/g' > data/thing.dict
cat data/MBTI500.*.dict.txt | grep " think" | sed 's/ /\t/g' > data/think.dict
cat data/MBTI500.*.dict.txt | grep " though" | sed 's/ /\t/g' > data/though.dict
cat data/MBTI500.*.dict.txt | grep " til" | sed 's/ /\t/g' > data/til.dict
cat data/MBTI500.*.dict.txt | grep " time" | sed 's/ /\t/g' > data/time.dict
cat data/MBTI500.*.dict.txt | grep " try" | sed 's/ /\t/g' > data/try.dict
cat data/MBTI500.*.dict.txt | grep " type" | sed 's/ /\t/g' > data/type.dict
cat data/MBTI500.*.dict.txt | grep " u" | sed 's/ /\t/g' > data/u.dict
cat data/MBTI500.*.dict.txt | grep " use" | sed 's/ /\t/g' > data/use.dict
cat data/MBTI500.*.dict.txt | grep " want" | sed 's/ /\t/g' > data/want.dict
cat data/MBTI500.*.dict.txt | grep " way" | sed 's/ /\t/g' > data/way.dict
cat data/MBTI500.*.dict.txt | grep " well" | sed 's/ /\t/g' > data/well.dict
cat data/MBTI500.*.dict.txt | grep " work" | sed 's/ /\t/g' > data/work.dict
cat data/MBTI500.*.dict.txt | grep " would" | sed 's/ /\t/g' > data/would.dict
cat data/MBTI500.*.dict.txt | grep " yeah" | sed 's/ /\t/g' > data/yeah.dict
cat data/MBTI500.*.dict.txt | grep " year" | sed 's/ /\t/g' > data/year.dict

# eliminamos el caracter ^M, cambiamos el separador espacio por tab 
# en data/MBTI500.data.txt nos queda la columna de tipo con las cantidad totales
cat data/MBTI500.all.type.count.txt | sed -e "s///" | awk '{print $2, $1}' | sed "s/ /\t/g" > data/MBTI500.data.txt

# vamos usando los diccionarios para agregar las repeticiones por palabra
cat data/MBTI500.data.txt | python src/enrich.py data/actually.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/also.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/always.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/come.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/could.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/de.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/det.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/en.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/enfj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/enfp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/entj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/entp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/er.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/esfj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/esfp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/estj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/estp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/even.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/fe.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/feel.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/fi.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/find.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/friend.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/function.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/german.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/germany.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/get.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/give.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/go.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/good.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/help.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/ikke.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/infj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/infp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/interest.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/intj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/intp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/isfj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/isfp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/istj.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/istp.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/jeg.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/know.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/life.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/like.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/lol.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/look.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/lot.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/love.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/make.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/mean.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/much.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/need.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/og.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/one.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/people.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/person.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/pretty.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/really.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/right.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/say.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/se.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/see.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/seem.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/si.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/someone.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/something.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/still.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/take.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/talk.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/thank.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/thing.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/think.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/though.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/til.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/time.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/try.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/type.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/u.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/use.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/want.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/way.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/well.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/work.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/would.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/yeah.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt
cat data/MBTI500.data.txt | python src/enrich.py data/year.dict num tab > data.txt; mv data.txt data/MBTI500.data.txt

# agregamos el encabezado
echo "type" > data/header.txt
echo "count" >> data/header.txt
cat data/MBTI500.*.dict.txt | awk '{print $3}' | sort | uniq >> data/header.txt

cat data/header.txt > data/MBTI500.data.enriched.txt
cat data/MBTI500.data.txt >> data/MBTI500.data.enriched.txt


