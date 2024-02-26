export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results


lex=tsar2022_pt_test_gold2.tsv

python3 LSBert2_ptbr.py \
  --do_eval \
  --do_lower_case \
  --num_selections 1 \
  --prob_mask 0.5 \
  --eval_dir $BERT_DIR/datasets/tsar2022_pt_test_gold.tsv \
  --bert_model neuralmind/bert-base-portuguese-cased \
  --max_seq_length 350 \
  --word_embeddings cc.pt.300.vec\
  --word_frequency $BERT_DIR/SUBTLEX-PT.xlsx \
  --ppdb $BERT_DIR/ppdb-1.0-xxxl-lexical\
  --output_SR_file $Result_DIR/features_bert2_ptbr_num_10.txt \
  --output_prediction_file $Result_DIR/prediction_file_bert2_ptbr_num_10.txt \
  --output_log_file $Result_DIR/log_file_bert2_ptbr_num_1.txt

#ppdb-1.0-xxxl-lexical