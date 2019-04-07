# Add fflib-mocks and fflib-common to DX project

At the DX root path:

1. clone 2 repos

```
git clone git@github.com:financialforcedev/fflib-apex-mocks.git Packages/fflib-apex-mocks
git clone git@github.com:financialforcedev/fflib-apex-common.git Packages/fflib-apex-common
```

2. convert to DX format

```
sfdx force:mdapi:convert -r Packages/fflib-apex-mocks/src -d force-app/apex-mocks
sfdx force:mdapi:convert -r Packages/fflib-apex-common/fflib/src -d force-app/apex-commons
```

3. push to scratch org

```
sfdx force:source:push
```

4. start to learn the 2 repos :)