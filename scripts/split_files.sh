i=0;

mydir="../data/JSON"
size=100

for f in ${mydir}/*; do
    d=dir_$(printf %03d $((i/${size}+1)));
    mkdir -p $d;
    mv "$f" $d;
    let i++;
done

