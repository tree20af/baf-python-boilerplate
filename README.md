# InvisiRisk Build Application Firewall Demo

This repository contains a Python application that demonstrates how InvisiRisk build application firewall works. The project serves as a boilerplate example to showcase the security features and implementation of InvisiRisk in a Python environment.

## GitHub Workflow Setup

To integrate InvisiRisk into your GitHub workflow, add the following steps to each job in your workflow file:


### 1. Add the Setup PSE step at the beginning of each job:

```yaml
- name: Setup PSE
  uses: invisirisk/pse-action@v1.0.20
  with:
    api_url: "https://app.invisirisk.com"
    app_token: ${{ secrets.IR_API_KEY }}
```

### 2. Add the Cleanup PSE step at the end of each job:
```yaml
- name: Cleanup PSE
  if: always()
  uses: invisirisk/pse-action@v1.0.20
  with:
    cleanup: "true"
```

### 3. Set up the required secret:
You need to set the IR_API_KEY secret in your GitHub repository settings. This API key can be obtained from the InvisiRisk portal.

### Example workflow:
```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - name: Setup PSE
        uses: invisirisk/pse-action@v1.0.20
        with:
          api_url: "https://app.invisirisk.com"
          app_token: ${{ secrets.IR_API_KEY }}
          
      # Your other build steps here
      
      - name: Cleanup PSE
        if: always()
        uses: invisirisk/pse-action@v1.0.20
        with:
          cleanup: "true"
```