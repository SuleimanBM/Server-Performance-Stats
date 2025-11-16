# Server-Performance-Stats
A simple Bash script that shows basic server performance information such as CPU usage, memory usage, disk usage, and the top processes running on the system.

This project is based on the Server Performance Stats project from roadmap.sh.

📌 What the script does

When you run the script, it displays:

CPU usage

Memory usage

Disk usage

Top 5 processes by CPU

Top 5 processes by Memory

It works on any Linux server with standard system commands.

📦 Requirements

You only need:

Linux

Bash

Common commands like ps, free, df, and awk
(No installation required.)

▶️ How to run

clone the repo or copy the script into a file named server-stats.sh

Make it executable:

chmod +x server-stats.sh


Run the script:

./server-stats.sh

📋 Example output
Total CPU usage: 8.3
Total memory: 3828980
Used memory: 633704
Used percentage: 16.00 %
Free memory: 2806528
Total disk space: 115M
Used disk space: 59M
Used disk percentage: 56% %
Free disk space: 48M
----------Top 5 cpu usage----------
....

----------Top memory usage----------
....

Project Url https://roadmap.sh/projects/server-stats
