python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation True --random_flipping_axes '0,1' --dataset_split_file ../../demos/unet/hela_d_split_1.csv --model_dir ./models/HeLa_0
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation True --random_flipping_axes '0,1' --dataset_split_file ../../demos/unet/hela_d_split_2.csv --model_dir ./models/HeLa_1
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation True --random_flipping_axes -1 --dataset_split_file ../../demos/unet/hela_d_split_1.csv --model_dir ./models/HeLa_2
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation True --random_flipping_axes -1 --dataset_split_file ../../demos/unet/hela_d_split_2.csv --model_dir ./models/HeLa_3
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation False --random_flipping_axes '0,1' --dataset_split_file ../../demos/unet/hela_d_split_1.csv --model_dir ./models/HeLa_4
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation False --random_flipping_axes '0,1' --dataset_split_file ../../demos/unet/hela_d_split_2.csv --model_dir ./models/HeLa_5
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation False --random_flipping_axes -1 --dataset_split_file ../../demos/unet/hela_d_split_1.csv --model_dir ./models/HeLa_6
python net_segment.py train -c ./demos/unet/HeLa.ini --do_elastic_deformation False --random_flipping_axes -1 --dataset_split_file ../../demos/unet/hela_d_split_2.csv --model_dir ./models/HeLa_7
