def minimum_len_after_operation(s:str)->str:
    char_map:dict = {}
    old_s:str = s
    new_s:str = ""
    for idx, char in enumerate(s):
        char_map[char].append(idx)
    for char in char_map:
        # xoá các char nếu char xuất hiện nhiều hơn 2 lần.
        if len(char) > 2:
            new_s = old_s[::char_map[char][0]] + old_s[char_map[char][0]+1::]
            new_s = old_s[::char_map[char][2]] + old_s[char_map[char][2]+1::]
        old_s = new_s