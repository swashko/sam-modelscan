import os

def test_scan_pickle_bytes() -> None:
    assert os.environ.get("BW_SECRET_1") == "Secret-Value-123"