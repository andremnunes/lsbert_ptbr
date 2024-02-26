export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results

python3 recursive_LSBert2.py \
  --do_eval \
  --do_lower_case \
  --num_selections 10 \
  --prob_mask 0.5 \
  --eval_dir $BERT_DIR/datasets/tsar2022_pt_test_gold.tsv \
  --bert_model neuralmind/bert-base-portuguese-cased \
  --max_seq_length 350 \
  --word_embeddings cc.pt.300.vec \
  --word_frequency $BERT_DIR/SUBTLEX-PT-alterado.xlsx \
  --ppdb $BERT_DIR/ppdb-1.0-xxxl-lexical \
  --output_SR_file $Result_DIR/features_recursive_ptbr.txt \
