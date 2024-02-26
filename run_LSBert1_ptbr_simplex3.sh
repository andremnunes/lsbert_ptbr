export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results

python LSBert1_ptbr.py \
  --do_eval \
  --do_lower_case \
  --num_selections 30 \
  --eval_dir $BERT_DIR/datasets/Simplex30_2.csv \
  --bert_model neuralmind/bert-base-portuguese-cased \
  --max_seq_length 400 \
  --word_embeddings cc.pt.300.vec \
  --word_frequency $BERT_DIR/lexporbr_alfa_excel.csv \
  --output_SR_file $Result_DIR/features_simplex_ptbr_num_30.txt \
  --output_prediction_file $Result_DIR/prediction_simplex_ptbr_num_30.txt \
  --output_log_file $Result_DIR/log_simplex_ptbr_num_30.txt

   ##lex.mturk.txt \