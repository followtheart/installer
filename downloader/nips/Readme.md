# nips paper downloader
download papers from [NIPS](http://papers.nips.cc)
## prerequest

```sh
apt install python-pip
pip install pyquery
```

## Usage
### download one year
Create a fold in current dir named by that year
all papers will be stored in that fold

eg.download all papers in 1987 and 1988 into two fold named ```1987``` and ```1988```
```sh
#for 1987
./paperdownloader.py   #default 1987
# same as
./paperdownloader.py 1987

#for 1988
./paperdownloader.py 1988
```
### download multi-years
For every year,all papers of that year will be stored in respect fold

eg.download all papers through 1988 to 1993 into folds respect to that year
```sh
for year in $( seq 1988 1993 )
do
  ./paperdownloader.py $year
done
```
And just be patience to wait
