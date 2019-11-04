# kaldi_liepa_asr_server
Recongition Server for Liepa project based on Liepa

# Setup on Linux(tested with Ubuntu)

1. Compile Kaldi(warning command line mode) 
   1. check out kaldi as ```git clone https://github.com/kaldi-asr/kaldi.git```. follow instruction ``` ```
   2. go to ```tools/```
   3. in tools check if you set```extras/check_dependencies.sh```. 
   4. I needed to install mkl by running ```extras/install_mkl.sh```
   5. run ```extras/install_irstlm.sh```
   6. run ```make```
   7. go to ```../src/```
   8. run ```configure --shared```
   9. run ```make depend```
   10. run ```make -j```
2. copy ```kaldi/src/online2bin/online2-tcp-nnet3-decode-faster``` to bin directory of this project
3. copy recogntion acoustic and grammar models to ```models``` 
4. run ```sh start_server.sh```. This will start server on port 5050 by default
5. test localy ```sh start_server.sh```


# Setup on Windows

1. Install on Winndows Windows Subsystem for Linux(WSL): https://docs.microsoft.com/en-us/windows/wsl/install-on-server
2. Follow instructions for Linux.
