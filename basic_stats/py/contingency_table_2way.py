
def get_table(row1col1,row1col2,row2col1,row2col2):
    return [row1col1,row1col2,row2col1,row2col2]

def get_probabilities(table):
    r1total = table[0]+table[1]
    r2total = table[2]+table[3]
    p11 = table[0]/r1total
    p12 = table[1]/r1total
    p21 = table[2]/r2total
    p22 = table[3]/r2total
    return[p11,p12,p21,p22]
