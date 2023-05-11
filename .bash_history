python3 ./trainEmbedNet.py --model ResNet18 --trainfunc softmax --save_path exps/exp1 --nClasses 2000 --batch_size 100 --gpu 0 --scheduler steplr
(sungjae_learning) 20200651@eelab14:~/ee488b_face$ python3 ./trainEmbedNet.py --model DenseNet --trainfunc aamsoftmax --save_path exps/exp2 --nClasses 2000 --batch_size 40 --gpu 0 --scheduler explr

(sungjae_learning) 20200651@eelab14:~/ee488b_face$ python3 crop.py
(sungjae_learning) 20200651@eelab14:~/ee488b_face$ python3 ./trainEmbedNet.py --model Densenet --trainfunc aamsoftmax --save_path exps/exp3 --nClasses 8631 --batch_size 40 --gpu 0 --scheduler explr --lr_decay 0.95 --train_path data/vgg/train
(sungjae_learning) 20200651@eelab14:~/ee488b_face$ python3 ./trainEmbedNet.py --model DenseNet --trainfunc aamsoftmax --save_path exps/exp4 --nClasses 2000 --batch_size 40 --gpu 0 --scheduler explr --output OUTPUT --lr_decay 0.95 --initial_model ./exps/exp3/model000000005.model --mixedprec --max_epoch 40 --test_interval 2 

(sungjae_learning) 20200651@eelab14:~/ee488b_face$ python3 ./trainEmbedNet.py --model DenseNet --trainfunc aamsoftmax --save_path exps/exp4 --nClasses 2000 --batch_size 40 --gpu 0 --scheduler explr --output ./output/output2.csv --lr_decay 0.95 --mixedprec --max_epoch 20 --test_interval 2 --initial_model exps/exp4/model000000038.model --test_path data/test/test_shuffle --test_list data/test_blind.csv --eval
##since I ran train on tmux no bash_history left as file, so I rewrited the code I used for training in tmux