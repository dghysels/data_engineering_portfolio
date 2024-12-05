import pytest 
import contingency_table_2way as contingency

def test_get_table():
    tbl = contingency.get_table(2,3,4,5)
    assert len(tbl) == 4

def test_get_probs():
    tbl = [2,3,2,3]
    probs = contingency.get_probabilities(tbl)
    assert len(probs) == 4