# 🚀 MPool Windows Auto-Installer for XMR Mining

Welcome to **MPool**, your zero-fee Monero (XMR) mining pool — now with a one-click Windows installer for effortless setup!

---

## 🔧 What is This?

This batch script automatically configures the [XMRig](https://github.com/xmrig/xmrig) miner and connects to **[MPool.pro](https://mpool.pro)** — optimized for Windows users!

---

## ✅ Why Choose MPool?

- **0% Pool Fees** — Keep **100%** of your mining rewards
- **Windows-Optimized** — Automatic service configuration
- **Admin-Verified Setup** — Proper system permissions handling
- **Beginner-Friendly** — Setup in 3 clicks
- **Transparent Process** — Clear console output at every stage
- **Safety First** — Built-in wallet address validation
- **Latest XMRig** — Auto-downloads v6.17.0 binaries

---

## 📥 How to Install

### ⚠️ Administrative Privileges Required
The installer needs elevated permissions to:
- Create system directories
- Configure firewall exceptions
- Install mining components properly

### 1. Download and Run the Installer

```powershell
# Using PowerShell (Right-click → Run as Administrator)
irm https://github.com/mpoolpro/autoconnect_win/raw/main/mpool_installer.bat -OutFile mpool_installer.bat
.\mpool_installer.bat
