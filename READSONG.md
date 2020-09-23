* task_name 任务的名字，这里我们Fine-Tuning MRPC任务
* do_train 是否训练，这里为True
* do_eval 是否在训练结束后验证，这里为True
* data_dir 训练数据目录，配置了环境变量后不需要修改，否则填入绝对路径
* vocab_file BERT模型的词典
* bert_config_file BERT模型的配置文件
* init_checkpoint Fine-Tuning的初始化参数
* max_seq_length Token序列的最大长度，这里是128
* train_batch_size batch大小，对于普通8GB的GPU，最大batch大小只能是8，再大就会OOM
* learning_rate
* num_train_epochs 训练的epoch次数，根据任务进行调整
* output_dir 训练得到的模型的存放目录