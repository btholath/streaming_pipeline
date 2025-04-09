
# Web Log Simulator: `gen_logs`

This utility simulates a web application by continuously writing access logs to a local file, enabling testing of log ingestion pipelines such as **AWS Kinesis Data Firehose**, **Fluent Bit**, or **Logstash**.

---

## 🔧 Overview

The `gen_logs` setup contains shell scripts that invoke a Python-based simulator (compatible with Python 2) to generate synthetic web traffic logs. This is ideal for testing log ingestion into S3, Elasticsearch, or any real-time analytics service.

---

## 📦 Features

- Simulates web access logs.
- Simple start/stop shell interface.
- Compatible with **Linux**, **macOS**, and **Cygwin**.
- Generates logs in real-time to `access.log`.

---

## 🛠️ Setup Instructions

1. **Copy the `gen_logs` directory to `/opt`:**
   ```bash
   sudo mv -f gen_logs /opt
   ```

2. **Set directory ownership:**
   ```bash
   sudo chown -R $(whoami) /opt/gen_logs
   ```

3. **Add `gen_logs` to system PATH:**
   Append the following to your shell config (`~/.profile`, `~/.bash_profile`, or equivalent):
   ```bash
   export PATH=$PATH:/opt/gen_logs
   ```

4. **Apply PATH changes:**
   Either restart your terminal or run:
   ```bash
   source ~/.profile  # or ~/.bash_profile
   ```

---

## ▶️ Usage

### Start generating logs
```bash
start_logs.sh
```

### View logs in real-time
```bash
tail_logs.sh
# Press Ctrl+C to exit tail
```

### Stop generating logs
```bash
stop_logs.sh
```

---

## 📁 Log Output

Logs are written to:
```
/opt/gen_logs/logs/access.log
```

---

## 📌 Notes

- This is a simulation and **not a real web server**.
- Useful for testing ingestion into S3 or streaming platforms like Kinesis.
- For integration examples, see AWS Kinesis Firehose documentation.

---

## 📄 License

MIT License

---
