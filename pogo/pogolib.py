#!/usr/bin/python
# -*- coding: utf-8 -*-

import re

#
# parse text file
# Format:
# NAME: Raichu          Lvl: 15		CP: 726     		 IV: 35.78%			MOVE1: ThunderShockFast			MOVE2: BrickBreak

def parse_bot_dump_file(file_name, debug):
    stat_list = []
    pattern = r"NAME:\s([a-zA-Z\(\)\.'\s]*)Lvl:\s([0-9]*)\s*CP:\s([0-9]*)\s*IV:\s([0-9\.%]*)\s*MOVE1:\s([a-zA-Z]*)\s*MOVE2:\s([a-zA-Z]*)"
    with open(file_name, newline='', encoding='utf-8') as f:
        content = f.readlines()
        for row in content:
            row = row.strip()
            num_cols = len(row)
            if num_cols < 1:
                continue
            if row[0].startswith('#'):
                continue

            m = re.match(pattern, row)

            if m:
                name = m.group(1).strip()
                lvl = m.group(2)
                cp = m.group(3)
                iv = m.group(4)
                move1 = m.group(5)
                move2 = m.group(6)
                if debug:
                    print(name + " " + lvl + " " + cp + " " + \
                          iv + " " + move1 + " " + move2)

                if name == "Farfetch'd":
                    name = "Farfetchd"

                if name == "Nidoran (Male)":
                    name = "NidoranMale"

                if name == "Nidoran (Female)":
                    name = "NidoranFemale"

                if name == "Mr. Mime":
                    name = "MrMime"

                # if name == "Nidoran♀":
                #     name == "NidoranFemale"
                #
                # if name == "Nidoran♂":
                #     name == "NidoranMale"

                pokemon = {}
                pokemon["name"] = name
                pokemon["lvl"] = lvl
                pokemon["cp"] = cp
                pokemon["iv"] = iv
                pokemon["move1"] = move1
                pokemon["move2"] = move2

                stat_list.append(pokemon)

    return stat_list
