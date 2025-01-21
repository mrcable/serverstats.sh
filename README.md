# serverstats.sh
Simple script that outputs server stats to a file.

Part of the DevOps roadmap:
https://roadmap.sh/projects/server-stats

## Features
The tool runs on basically anything. It prints out the following information:
- Total CPU percentage in use
- Total RAM in use vs the total amount, including percentage
- Top 5 CPU heavy processes
- Top 5 processes according to RAM usage
- The usernames and total logged in users on the machine
- The current uptime of the machine

# How to run
This script can be copied over manually, cloned using `git clone` or downloaded using `curl`.

## curl
`bash <(curl -s https://raw.githubusercontent.com/mrcable/serverstats.sh/refs/heads/main/serverstats.sh)`

## cloning
``` bash
git clone https://github.com/mrcable/serverstats.sh.git
cd serverstats.sh
chmod +x serverstats.sh
./serverstats.sh
```
