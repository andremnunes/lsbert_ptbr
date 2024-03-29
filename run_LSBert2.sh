export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master
export Result_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results


lex=lex.mturk2.txt
nn=NNSeval.txt
ben=BenchLS2.txt

python3 LSBert2.py \
  --do_eval \
  --do_lower_case \
  --num_selections 10 \
  --prob_mask 0.5 \
  --eval_dir $BERT_DIR/datasets/$lex \
  --bert_model bert-large-uncased-whole-word-masking \
  --max_seq_length 250 \
  --word_embeddings crawl-300d-2M-subword.vec\
  --word_frequency $BERT_DIR/SUBTLEX_frequency.xlsx\
  --ppdb $BERT_DIR/ppdb-2.0-tldr\
  --output_SR_file $Result_DIR/features.txt ##> test_results.txt
