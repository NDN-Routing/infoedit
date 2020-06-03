# infoconv: Convert between INFO and JSON

**infoconv** program allows converting between Boost INFO and JSON formats.
One use case is to allow processing INFO files with JSON tools such as [jq](https://stedolan.github.io/jq/).

Usage:

```
infoconv info2json < config.info > config.json
infoconv json2info < config.json > config.info
```
