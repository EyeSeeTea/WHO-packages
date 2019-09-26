# NHWA Custom forms

## Developer tooltips and knowledge base

### Prettify the code

Make sure to install ```prettier``` globally through npm or yarn.

It is highly recommended to run the prettier every once in a while!

```
./prettify
```

### Update data entry forms to DHIS2 instance

Requires HTTPie, please stop using cURL and give it a try!

```
export DHIS2_URL=https://username:password@extranet.who.int/dhis2-dev
./update-custom-form.sh NHWA\ Module\ 1\ \(Tu81BTLUuCT\).html
```

### Import NHWA metadata

Requires HTTPie, please stop using cURL and give it a try!

```
export DHIS2_URL=https://username:password@extranet.who.int/dhis2-dev
./import-metadata.sh ../
```
