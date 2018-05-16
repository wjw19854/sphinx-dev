rm -rf ../html
rm -f ../api/*
sphinx-apidoc --ext-autodoc -f -M -o ./api/ ../
make html
cp -vR ../html/* ../docs
# open ../docs/index.html
