# azure-incident-response-playbook
azure-incident-response-playbook
azure-incident-response-playbook/
│
├── README.md
├── setup-guide.md
├── /logic-apps
│   └── blob-alert-remediation.json
├── /functions
│   └── auto-remediate-blob-access.py
├── /docs
│   ├── incident-flow.png
│   └── attack-simulation.md
├── /simulations
│   └── blob-public-access-test.ps1

# ⚠️ Azure Incident Response Playbook

## 🎯 Objective
Detect and respond to public Blob storage access in Azure using native tools and automation.

## 🛠️ Tools Used
- Azure Defender for Storage  
- Azure Monitor & Sentinel  
- Azure Logic Apps + Functions  
- PowerShell for simulations

## 🧠 Why This Matters
Publicly exposed blob containers are among the most exploited misconfigurations in Azure. This playbook simulates a breach and shows how to contain it fast.

## 💥 Outcome
✔️ Real-time alert on blob misconfiguration  
✔️ Automated remediation using Logic Apps or Azure Function  
✔️ SIEM logging into Sentinel with threat tags  

## 🖼️ Architecture Flow
![Incident Flow](docs/incident-flow.png)

## 🔬 Real-World Scenario
This setup mimics a pentest finding where a dev mistakenly exposed sensitive backups via Blob storage. Our system detects and fixes this within 60 seconds.

---
