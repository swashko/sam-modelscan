import os
from pathlib import Path
from modelscan.modelscan import Modelscan


def coverage() -> None:
    try:
        ms = Modelscan()
        ms.scan_path(Path(""))
    except Exception:
        pass
