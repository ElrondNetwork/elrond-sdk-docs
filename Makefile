# The repository ElrondNetwork/elrond-sdk must be cloned as a sibling repository.

java:
	cd ../elrond-sdk/erdjava && mvn javadoc:javadoc

js:
	cd ../elrond-sdk/erdjs && npx typedoc --includeVersion --out ../../elrond-sdk-docs/erdjs/latest
	cd ../elrond-sdk/erdjs && npx typedoc --includeVersion --out ../../elrond-sdk-docs/erdjs/$(shell node -p "require('../elrond-sdk/erdjs/package.json').version")

testjs:
	cd ../elrond-sdk/erdtestjs && npx typedoc

py:
	sphinx-apidoc -o ./erdpy/source ../elrond-sdk/erdpy
	cd ./erdpy && make html