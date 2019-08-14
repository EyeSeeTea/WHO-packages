# NHWA Custom forms

## Custom forms list

### NHWA Module 1 (Tu81BTLUuCT)

### NHWA Module 1 Subnational (Humg4HbkmJg)

### NHWA Module 2 (m5MiTPdlK17)

### NHWA Module 3 (pZ3XRBi9gYE)

### NHWA Module 4 (HtZb6Cg7TXo)

### NHWA Module 5 (cxfAcMbSZe1)

### NHWA Module 6 (WDyQKfAvY3V)

### NHWA Module 7 (ZRsZdd2AvAR)

### NHWA Module 8-10 (p5z7F51v1ag)

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
