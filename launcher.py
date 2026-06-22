import os
import shutil
import subprocess
import json

CONFIG_FILE = "config.json"

def load_config():
    with open(CONFIG_FILE, "r") as f:
        return json.load(f)

def main():
    print("N35v17 Launcher iniciado")

if __name__ == "__main__":
    main()
