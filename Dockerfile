FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y git python3 python3-pip \
    && pip3 install numpy==1.15.4 cython \
    && pip3 install sprocket-vc \
    && git clone https://github.com/k2kobayashi/sprocket.git

WORKDIR /sprocket/example
COPY run_sprocket_script run_sprocket_script

ENTRYPOINT [ "./run_sprocket_script" ]

    # && cd sprocket/example \
    # && mkdir -p data/wav/SF1 data/wav/TF1 data/pair/SF1 data/pair/TF1 \
    # && python3 initialize.py -1 SF1 TF1 16000 \
    # && python3 initialize.py -2 SF1 TF1 16000 \
    # && python3 initialize.py -3 SF1 TF1 16000 \
    # && python3 run_sprocket.py -1 -2 -3 -4 -5 SF1 TF1 16000 \
    # && python3 run_f0_transformation.py SF1 TF1

# CMD [ \
#     "cd", "sprocket/example;", \
#     "mkdir", "-p", "data/wav/SF1", \
#     "mkdir", "-p", "data/wav/TF1", \
#     "mkdir", "-p", "data/pair/SF1", \
#     "mkdir", "-p", "data/pair/TF1", \
#     "python3", "initialize.py", "-1", "SF1", "TF1", "16000", \
#     "python3", "initialize.py", " -2", " SF1", " TF1", "16000", \
#     "python3", "initialize.py", "-3", "SF1", "TF1", "16000", \
#     "python3", "run_sprocket.py", " -1", "-2", "-3", "-4", "-5", "SF1", "TF1", "16000", \
#     "python3", "run_f0_transformation.py", "SF1", "TF1" \
#     ]

# CMD [ "python3", "download_vcc2016dataset.py" ]
# CMD [ "cd", "sprocket/example"] 
# CMD [ "mkdir", "-p", "data/wav/SF1" ] 
# CMD [ "mkdir", "-p", "data/wav/TF1" ] 
# CMD [ "mkdir", "-p", "data/pair/SF1" ] 
# CMD [ "mkdir", "-p", "data/pair/TF1" ] 
# CMD [ "python3", "initialize.py", "-1", "SF1", "TF1", "16000" ]
# CMD [ "python3", "initialize.py", " -2", " SF1", " TF1", "16000" ]
# CMD [ "python3", "initialize.py", "-3", "SF1", "TF1", "16000" ]
# CMD [ "python3", "run_sprocket.py", " -1", "-2", "-3", "-4", "-5", "SF1", "TF1", "16000" ]
# CMD [ "python3", "run_f0_transformation.py", "SF1", "TF1"]
