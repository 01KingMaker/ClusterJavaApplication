lib=lib

find -name '*.java' > src.txt

javac -cp "$lib/*" -parameters -d temporary/WEB-INF/classes @src.txt
rm src.txt

if [ -f Jsp/css ]
then
cp  Jsp/css ./temporary
fi

cp -r Jsp/ ./temporary

cp index.jsp ./temporary

cp web.xml temporary/WEB-INF

mkdir temporary/WEB-INF/lib

cp -r $lib temporary/WEB-INF/

cd temporary then

jar -cf ../Project.war .
cd ..
rm -r temporary