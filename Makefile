java:
	cd ../elrond-sdk/erdjava && mvn javadoc:javadoc

js:
	cd ../elrond-sdk/erdjs && npx typedoc

testjs:
	cd ../elrond-sdk/erdtestjs && npx typedoc

py:
	sphinx-apidoc -o ./erdpy/source ../elrond-sdk/erdpy
	cd ./erdpy && make html