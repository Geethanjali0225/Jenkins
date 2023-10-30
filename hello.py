import time
import psutil

while True:
    print("Hello World!")
    cpu_percent = psutil.cpu_percent(interval=1)
    mem_info = psutil.virtual_memory()
    print(f"CPU Usage: {cpu_percent}%")
    print(f"Memory Usage: {mem_info.percent}%")
    time.sleep(10)
