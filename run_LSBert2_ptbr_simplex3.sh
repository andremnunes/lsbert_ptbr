export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results

num=10
python3 LSBert2_ptbr.py \
  --do_eval \
  --do_lower_case \
  --num_selections 10 \
  --prob_mask 0.5 \
  --eval_dir $BERT_DIR/datasets/Simplex30_2.csv \
  --bert_model neuralmind/bert-base-portuguese-cased \
  --max_seq_length 400 \
  --word_embeddings cc.pt.300.vec\
  --word_frequency $BERT_DIR/SUBTLEX-PT-alterado.xlsx \
  --ppdb $BERT_DIR/ppdb-1.0-xxxl-lexical\
  --output_SR_file $Result_DIR/features_simplex_ptbr_bert2_num_$num.txt \
  --output_prediction_file $Result_DIR/prediction_simplex_ptbr_bert2_num_$num.txt \
  --output_log_file $Result_DIR/log_simplex_ptbr_bert2_num_$num.txt

