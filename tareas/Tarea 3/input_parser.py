def parse(to_parse):
    """
    'to_parse': [str]  # una lista de strings
    retorna: [dict]    # una lista de diccionarios
    
    DictSchema que retorna:
    {
        "number_clock": int,    # número de clock
        "pc": int,              # valor del Program Counter
        "instruction": str,     # instrucción a ejecutar
        "a": int,               # valor del registro A
        "b": int                # valor del registro B
    }
    """
    parsed = []
    
    header = to_parse[0]
    
    for row in to_parse[2:]:
        nclock, pc, instuction, rega, regb = (
            row[0:4], 
            row[5:9],
            row[12:22].strip(),
            row[24:28],
            row[29:33]
        )
        value = {
            "number_clock": int(nclock),
            "pc": int(pc),
            "instruction": instuction,
            "a": int(rega, 16),
            "b": int(regb, 16)
        }
        parsed.append(value)
    return parsed


def print_cache(dir_, palabras_bloque_0, palabras_bloque_1, palabras_bloque_2, palabras_bloque_3, is_hit=False):
    """
    'dir_': int                # dirección de memoria a la que quiero acceder
    'palabras_bloque_0'        # lista de palabras guardadas en el bloque 0. None si una posición no ha sido usada.
    'palabras_bloque_1'        # lista de palabras guardadas en el bloque 1. None si una posición no ha sido usada.
    'palabras_bloque_2'        # lista de palabras guardadas en el bloque 2. None si una posición no ha sido usada.
    'palabras_bloque_3'        # lista de palabras guardadas en el bloque 3. None si una posición no ha sido usada.
    is_hit: bool               # True si hubo un Hit, False si hubo un Miss

    retorna: None.
    """
    return [
        dir_,
        [palabras_bloque_0 + palabras_bloque_1 + palabras_bloque_2 + palabras_bloque_3],
        "H" if is_hit else "M"
        ]

