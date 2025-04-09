# Azure Incident Response Playbook

This playbook provides automated methods to detect and respond to public Blob Storage access in Azure, leveraging native tools and automation.

## Table of Contents
- [🎯 Objective](#objective)
- [🛠️ Tools Used](#tools-used)
- [🧠 Why This Matters](#why-this-matters)
- [💥 Outcome](#outcome)
- [🔬 Real-World Scenario](#real-world-scenario)
- [🛠️ Azure Logic App: Automated Alert Response](#azure-logic-app-automated-alert-response)
- [📁 Logic App Definition](#logic-app-definition)
- [📧 Email Notification](#email-notification)
- [🌐 Trigger](#trigger)
- [🎉 Usage](#usage)
- [🤝 Contributing](#contributing)
- [📜 License](#license)

## 🎯 Objective
Detect and respond to public Blob storage access in Azure using native tools and automation.

## 🛠️ Tools Used
- **Azure Defender for Storage**: Provides security alerts for Blob storage.
- **Azure Monitor & Sentinel**: For monitoring and logging.
- **Azure Logic Apps + Functions**: For automation.
- **PowerShell**: For simulations.

## 🧠 Why This Matters
Publicly exposed blob containers are among the most exploited misconfigurations in Azure. This playbook simulates a breach and shows how to contain it quickly.

## 💥 Outcome
✔️ Real-time alert on blob misconfiguration  
✔️ Automated remediation using Logic Apps or Azure Functions  
✔️ SIEM logging into Sentinel with threat tags  

## 🔬 Real-World Scenario
This playbook automates alert responses via a Logic App, triggered by a security alert or manual HTTP request, which sends an email to the security team detailing the incident.

## 🛠️ Azure Logic App: Automated Alert Response

This Logic App is triggered by a security alert (or manual HTTP trigger) and automatically sends an email to the security team with details of the incident.

### 📁 Logic App Definition
[View JSON](logic-apps/blob-alert-remediation.json)

### 📧 Email Notification
Configured via a shared mailbox in Azure  

### 🌐 Trigger
HTTP Request (simulating alert system)

![Logic App Flow](docs/incident-flow.png)

## 🎉 Usage
Instructions on how to trigger the automation and what to expect after running it.

## 🤝 Contributing
Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute.

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
