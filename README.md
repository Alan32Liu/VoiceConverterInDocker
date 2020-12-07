# VoiceConverterInDocker
Automate voice conversion with Docker

Based on [Sprocket](https://github.com/k2kobayashi/sprocket)

# Prepare
```
eval $(docker-machine env default);
docker build .;
```
Note the image id from the command above.

# Run
```
cp -r $<replace_with_data_folder> .
./convert <image_id>
```
