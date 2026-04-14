#!/system/bin/sh
# Gaming Monitor Panel for PUBG
echo "--- GAMING MONITOR ACTIVE ---"
while true; do
  # Get Battery Temp (Celsius)
  temp=$(cat /sys/class/power_supply/battery/temp)
  real_temp=$(($temp / 10))
  
  # Get CPU Speed
  cpu=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
  cpu_mhz=$(($cpu / 1000))

  echo "TEMP: ${real_temp}°C | CPU: ${cpu_mhz}MHz"
  
  # Refresh every 2 seconds
  sleep 2
done
