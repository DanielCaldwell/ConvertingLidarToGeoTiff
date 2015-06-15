current_dir=$(pwd)
echo $current_dir
docker run -t -i  --volume=$current_dir/scripts:/root/scripts --volume=$current_dir/data:/root/data convert_lidar /bin/bash

