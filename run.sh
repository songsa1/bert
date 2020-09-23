export BERT_BASE_DIR=chinese_L-12_H-768_A-12 # or multilingual_L-12_H-768_A-12
export XNLI_DIR=data

python run_classifier.py \
  --task_name=XNLI \
  --do_train=true \
  --do_eval=true \
  --data_dir=$XNLI_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=64 \
  --train_batch_size=10 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --output_dir=F:\code\NLP\bert\sim_output