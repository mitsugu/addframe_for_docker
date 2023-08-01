# addframe for Docker
 Read the Exif data in the image file, attach a frame to the image, and print the Exif data in the frame.   

## Install
1. Install Docker
2. git pull https://github.com/mitsugu/addframe_for_docker.git
3. cd addframe_for_docker
4. docker build . -t orzbruford/addframe

## Usage
1. start Docker
2. cd addframe_for_docker
3. ./addframe souce_file_full_path output_directory_path

## Uninstall
1. docker image rm orzbruford/addframe
2. remove addframe_for_docker directory

## License
MIT Licence

