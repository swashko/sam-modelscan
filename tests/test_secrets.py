import os


def test_bw_secret() -> None:
    assert os.environ.get("BW_SECRET_1") == "Secret-Value-123"


def test_op_secret() -> None:
    assert os.environ.get("OP_SECRET_1") == "IQXya3HSTY9Suwtsp18p"
