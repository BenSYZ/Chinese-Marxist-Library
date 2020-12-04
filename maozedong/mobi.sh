##  cat index.md|grep mobi|sed -n 's/.*](\(.*\).mobi).*/\1/p' > filename.tmp
##  
##  echo url="https://www.marxists.org/chinese/maozedong/" > get.sh
##  cat filename.tmp | sed -n 's/\(.*\)/wget "$url"\1.htm/p' >> get.sh
##  chmod +x get.sh
##  # ./get.sh
##  cat filename.tmp |sed -n 's/\(.*\)/iconv -f GBK -t UTF-8 \1.htm -o \1.html/p' > iconv.sh
##  chmod +x iconv.sh
##  # ./iconv.sh
##  cat filename.tmp |sed -n 's/\(.*\)/ebook-convert \1.html \1.mobi/p' > ebook-convert.sh
##  chmod +x ebook-convert.sh
##  # ./ebook-convert.sh
##  # rm filename.tmp get.sh iconv.sh *.html ebook-convert.sh

cat index.md|grep mobi|sed -n 's/.*\[\(.*\)\](\(.*\).mobi).*/mv \2.mobi "\1.mobi"/p' > rename.sh
chmod +x rename.sh
