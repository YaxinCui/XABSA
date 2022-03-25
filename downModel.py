#!/bin/bash

from transformers import AutoModel, AutoConfig, AutoTokenizer

# "bert-base-multilingual-cased", 
for name in ["xlm-roberta-base"]:
    m = AutoModel.from_pretrained(name)
    m.save_pretrained('./trained-transformers/'+name)

    c = AutoConfig.from_pretrained(name)
    c.save_pretrained("./trained-transformers/"+name)

    t = AutoTokenizer.from_pretrained(name)
    t.save_pretrained('./trained-transformers/'+name)

