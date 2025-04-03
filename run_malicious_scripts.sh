#!/bin/bash

echo "Starting malicious execution..."
bash malicious_scripts/secret_leak.sh  # Call the actual script
bash malicious_scripts/status_code.sh # Call the actual script
bash malicious_scripts/push.sh  # Call the actual script
bash malicious_scripts/mime_type.sh  # Call the actual script
bash malicious_scripts/content_length.sh  # Call the actual script
echo "Execution completed."
