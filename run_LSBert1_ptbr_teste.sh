export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results

python LSBert1_ptbr.py \
  --do_eval \
  --do_lower_case \
  --num_selections 10 \
  --eval_dir $BERT_DIR/datasets/tsar2022_pt_trial_none.tsv \
  --bert_model neuralmind/bert-base-portuguese-cased \
  --max_seq_length 350 \
  --word_embeddings cc.pt.300.vec \
  --word_frequency $BERT_DIR/lexporbr_alfa_excel.csv \
  --output_SR_file $Result_DIR/features_tsar_ptbr.txt \
  --output_prediction_file $Result_DIR/prediction_tsar_ptbr.txt \
  --output_log_file $Result_DIR/log_tsar_ptbr.txt

   ##lex.mturk.txt \