# infoconv: Convert between INFO and JSON/XML

**infoconv** program allows converting between Boost INFO and JSON/XML formats.
One use case is to allow processing INFO files with JSON tools such as [jq](https://stedolan.github.io/jq/).

Usage:

```
infoconv info2json < config.info > config.json
infoconv json2info < config.json > config.info
infoconv info2xml  < config.info > config.xml
infoconv xml2info  < config.xml  > config.info
```
