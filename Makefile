java:
	cd ../elrond-sdk/erdjava && mvn javadoc:javadoc

js:
	cd ../elrond-sdk/erdjs && npx typedoc

py:
	sphinx-apidoc -o ./erdpy/source ../elrond-sdk/erdpy
	cd ./erdpy && make html