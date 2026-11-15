#!/bin/bash

# Get the primary network interface (the one with a default route)
INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

if [ -z "$INTERFACE" ]; then
    echo "N/A"
    exit
fi

# Path to network stats
RX_FILE="/sys/class/net/$INTERFACE/statistics/rx_bytes"
TX_FILE="/sys/class/net/$INTERFACE/statistics/tx_bytes"

# Cache file for storing previous values
CACHE_DIR="/tmp/polybar-network"
mkdir -p "$CACHE_DIR"
CACHE_FILE="$CACHE_DIR/$INTERFACE"

# Read current bytes
RX_BYTES=$(cat "$RX_FILE")
TX_BYTES=$(cat "$TX_FILE")

# Read previous values and timestamp
if [ -f "$CACHE_FILE" ]; then
    read -r PREV_RX PREV_TX PREV_TIME < "$CACHE_FILE"
else
    PREV_RX=$RX_BYTES
    PREV_TX=$TX_BYTES
    PREV_TIME=$(date +%s)
fi

# Current time
CURRENT_TIME=$(date +%s)

# Calculate time difference
TIME_DIFF=$((CURRENT_TIME - PREV_TIME))

if [ $TIME_DIFF -eq 0 ]; then
    TIME_DIFF=1
fi

# Calculate rate (bytes per second)
RX_RATE=$(( (RX_BYTES - PREV_RX) / TIME_DIFF ))
TX_RATE=$(( (TX_BYTES - PREV_TX) / TIME_DIFF ))

# Save current values
echo "$RX_BYTES $TX_BYTES $CURRENT_TIME" > "$CACHE_FILE"

# Format output
format_bytes() {
    local bytes=$1
    if [ $bytes -lt 1024 ]; then
        echo "${bytes}B/s"
    elif [ $bytes -lt 1048576 ]; then
        echo "$((bytes / 1024))KB/s"
    else
        echo "$((bytes / 1048576))MB/s"
    fi
}

if [ "$1" = "down" ]; then
    format_bytes $RX_RATE
elif [ "$1" = "up" ]; then
    format_bytes $TX_RATE
fi
