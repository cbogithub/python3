#!/usr/bin/python
# -*- coding: utf-8 -*-

import csv
import math
import random
import time
from bisect import bisect_left


# binary search to find leftmost GE
def find_ge_idx(a, x):
    'Find leftmost item greater than or equal to x'
    i = bisect_left(a, x)
    if i != len(a):
        return i
    return -1


# load entities and weights
def load_entities_and_weights_from_file(file_name):
    ents = []
    cumu_w = []
    total_w = 0;
    with open(file_name, 'r', encoding='utf-8') as ifile:
        # ifile  = open(file_name, "rb")
        reader = csv.reader(ifile)
        for row in reader:
            num_cols = len(row)
            if num_cols == 0:
                continue
            if row[0].startswith('#'):
                continue
            ents.append(row[0])
            if num_cols > 1:
                try:
                    weight = int(math.sqrt(math.sqrt(float(row[1]))));
                    # weight = int(row[1]);
                except ValueError:
                    weight = 1
            else:
                weight = 1
            total_w = total_w + weight;
            cumu_w.append(total_w)
    # ifile.close()
    return (ents, cumu_w, total_w)


# random sample a weighted array
def random_samlple_weighted_array(ents, cumu_w, total_w):
    while True:
        seed = random.randrange(1, total_w + 1)
        index = find_ge_idx(cumu_w, seed)
        if index != -1:
            break
    return ents[index]


def main():
    # load restaurant general terms
    (ent_query, cum_query, ttl_query) = load_entities_and_weights_from_file("splunk-top2500w-20150222.csv")
    len_query = len(ent_query)
    print("loaded " + str(len_query) + " local query terms ... ")

    # load city file (with weight or frequency)
    # (ent_city, cum_city, ttl_city, lati_city, long_city, rlati_city, rlong_city) = \
    #                load_cities_weights_and_geo_from_file("m4_local_cities.txt")
    # len_city = len(ent_city)
    # print ("loaded " + str(len_city) + " cities ... ")

    # load restaurant query pattern file
    (ent_pattern, cum_pattern, ttl_pattern) = load_entities_and_weights_from_file("m4_local_patterns.txt")
    len_pattern = len(ent_pattern)
    print("loaded " + str(len_pattern) + " local query patterns ... ")

    # process one random patterns
    sample_size = 2000
    timestr = time.strftime("%m%d%y_%H%M%S", time.localtime())
    out_file_name = "sample_queries_m4_" + str(timestr) + ".txt"
    print("generating output file ...")

    with open(out_file_name, 'w', encoding='utf-8') as out_file:
        # out_file = open(out_file_name, "w")
        while sample_size > 0:
            pattern = random_samlple_weighted_array(ent_pattern, cum_pattern, ttl_pattern)
            query_cnt = pattern.count('[query]')
            # geocity_cnt = pattern.count('[geocity]')
            # print "query pattern: " + pattern 

            # geocity_index = -1;
            # while query_cnt > 0:
            #     query = random_samlple_weighted_array(ent_query, cum_query, ttl_query)
            #     # for i in range(0, len_city-1): 
            #     #     if (ent_city[i] in query):
            #     #         geocity_index = i
            #     #         break
            #     pattern = pattern.replace('[query]', query) 
            #     query_cnt = query_cnt - 1

            # while geocity_cnt > 0:
            #     if(geocity_index != -1):
            #         #print("query:%s city:%s"%(query, ent_city[geocity_index]))
            #         lati = lati_city[geocity_index]
            #         long = long_city[geocity_index]
            #         rlati = rlati_city[geocity_index]
            #         rlong = rlong_city[geocity_index]
            #         seed_lati = random.randrange(1, 101)
            #         seed_long = random.randrange(1, 101)
            #         my_lati = lati + float(seed_lati)*rlati/100.0
            #         my_long = long + float(seed_long)*rlong/100.0
            #     else:
            #         (city, my_lati, my_long) = random_samlple_weighted_city_geo(ent_city, cum_city, ttl_city, \
            #                                          lati_city, long_city, rlati_city, rlong_city)
            #     pattern = pattern.replace('[geocity]', ',%f,%f'%(my_lati, my_long)) 
            #     geocity_cnt = geocity_cnt - 1

            query = random_samlple_weighted_array(ent_query, cum_query, ttl_query)
            # out_file.write('%s\n'%(pattern))
            out_file.write(query + "\n")
            sample_size = sample_size - 1
    # out_file.close()
    print("done with " + out_file_name)


if __name__ == "__main__":
    main()
