# ☁️ Cloud Automation Project

## 📌 Overview

This project automates AWS cloud operations using **Bash scripting, Python, and AWS CLI**.  
It demonstrates a simple DevOps workflow for backup automation, EC2 management, S3 operations, monitoring, and scheduled task execution using cron jobs.

---

# 🚀 Features

- Create AWS S3 bucket
- Upload backup files to S3
- Create EC2 instances
- Stop EC2 instances
- Check EC2 instance status
- Generate compressed backups
- System monitoring using Python
- Automated cron job scheduling

---

# 🛠️ Technologies Used

- Bash Scripting
- Python
- AWS CLI
- Amazon S3
- Amazon EC2
- Linux Cron Jobs
- Git & GitHub

---

# 📁 Project Structure

```text
cloud-autoops-project/
│
├── README.md
│
├── backups/
│   └── sample-backup.tar.gz
│
├── config/
│   └── config.env
│
├── cron/
│   └── cron-jobs.txt
│
├── logs/
│   ├── automation.log
│   └── error.log
│
├── output/
│   ├── ec2-details.txt
│   └── s3-details.txt
│
├── sample.txt
│
└── scripts/
    ├── bash/
    │   ├── backup.sh
    │   ├── check_ec2_status.sh
    │   ├── create_ec2.sh
    │   ├── create_s3_bucket.sh
    │   ├── master.sh
    │   ├── stop_ec2.sh
    │   └── upload_to_s3.sh
    │
    └── python/
        ├── log_analyzer.py
        └── monitor.py
```

---

# ⚙️ Setup Instructions

## 1️⃣ Update System

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 2️⃣ Install AWS CLI

```bash
sudo apt install awscli -y
```

Verify installation:

```bash
aws --version
```

---

## 3️⃣ Install Python

```bash
sudo apt install python3 python3-pip -y
```

Verify installation:

```bash
python3 --version
```

---

## 4️⃣ Configure AWS Credentials

```bash
aws configure
```

Provide:
- AWS Access Key ID
- AWS Secret Access Key
- AWS Region
- Output Format (json)

---

## 5️⃣ Give Execute Permissions

```bash
chmod +x scripts/bash/*.sh
```

---

# ▶️ Run the Project

Go to bash scripts directory:

```bash
cd scripts/bash
```

Run master automation script:

```bash
./master.sh
```

---

# ⏰ Cron Job Automation

Open cron editor:

```bash
crontab -e
```

Add:

```bash
*/5 * * * * cd /root/cloud-autoops-project/scripts/python && python3 monitor.py
```

View cron jobs:

```bash
crontab -l
```

---

# 📊 Output Files

| File | Purpose |
|------|----------|
| automation.log | Stores automation logs |
| error.log | Stores error logs |
| ec2-details.txt | Stores EC2 instance ID |
| s3-details.txt | Stores S3 bucket name |
| sample-backup.tar.gz | Generated backup file |

---

# 🔄 Workflow

```text
Bash Scripts
     ↓
AWS CLI Commands
     ↓
AWS Services (S3 & EC2)
     ↓
Python Monitoring Scripts
     ↓
Cron Job Automation
```

---

# 🎯 Learning Outcomes

- AWS cloud automation
- Bash scripting
- Python scripting
- EC2 and S3 management
- Linux cron jobs
- DevOps workflow basics
- Log monitoring and analysis

---

# 👨‍💻 Author

**Subhajyoti**

---

# 📌 Project Status

✅ Completed  
✅ Working Automation  
✅ AWS Integrated  
✅ Cron Enabled  
✅ DevOps Project Ready  
