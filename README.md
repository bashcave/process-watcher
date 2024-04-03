# Process Watcher Script

## Overview

The Process Watcher Script is designed to monitor the status of a specified process and automatically start it if it's not running. This script is an excellent tool for ensuring essential services or applications remain active, showcasing basic process management in Bash.

## Features

- Monitors the status of a specified process.
- Automatically starts the process if it's not currently running.
- Teaches basic process management and conditional statements in Bash.

## Prerequisites

- Bash shell
- `pgrep` command available on Unix/Linux systems

## Usage

To use the script, simply follow these steps:

1. Make the script executable:

```bash
chmod +x process-watcher.sh
```

2. Execute the script and follow the prompts:

```bash
./process-watcher.sh
```

## How It Works

- Upon execution, the script prompts the user to enter the name of the process to monitor and the command to start the process if it's not running.
- It uses the `pgrep` command with the process name to check if the process is currently active. The `-x` option ensures an exact match of the process name.
- If `pgrep` finds the process, the script informs the user that it's already running. If not, the script uses the provided command to start the process and notifies the user.

## Important Notes

- Be sure to provide the exact process name as expected by `pgrep` for accurate monitoring.
- The command to start the process should be fully qualified if not in the system's PATH.
- This script provides a basic mechanism for process monitoring. For more robust needs, consider using dedicated system management tools or services.
