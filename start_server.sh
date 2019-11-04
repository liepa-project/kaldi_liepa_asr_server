#!/bin/bash

./bin/online2-tcp-nnet3-decode-faster --verbose=1  --samp-freq=16000 --frames-per-chunk=20 --extra-left-context-initial=0 --frame-subsampling-factor=3 --config=models/tdnn1h_sp_online/conf/online.conf --min-active=200 --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --port-num=5050 models/tdnn1h_sp_online/model/final.mdl models/tdnn1h_sp_online/graph/HCLG.fst models/tdnn1h_sp_online/graph/words.txt
