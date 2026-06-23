import os
import shutil
import subprocess
import json

CONFIG_FILE = "config.json"

def load_config():
    with open(CONFIG_FILE, "r") as f:
        return json.load(f)

def copy_module(source, destination):

    if not os.path.exists(destination):
        shutil.copytree(source, destination)
        print("Modulo instalado.")
        return

    print("Modulo ya existe, omitiendo copia.")

def start_otcv8(config):
    exe = os.path.join(config["otcv8_path"], config["client_exe"])

    if not os.path.exists(exe):
        print("No encontre OTCv8 en:", exe)
        input("Presiona ENTER para cerrar...")
        return

    subprocess.Popen([exe], cwd=config["otcv8_path"])
    print("OTCv8 iniciado correctamente")

def main():
    print("=== N35v17 Launcher ===")

    config = load_config()

    source = os.path.join("modules_repo", "n35v17bot")
    destination = os.path.join(config["otcv8_path"], "modules", "n35v17bot")

    if not os.path.exists(source):
        print("No encontre el modulo:", source)
        input("Presiona ENTER para cerrar...")
        return

    copy_module(source, destination)
    start_otcv8(config)

if __name__ == "__main__":
    main()