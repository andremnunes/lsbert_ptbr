export BERT_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/evaluation
export RESULTS_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/results
export DATASET_DIR=/content/drive/MyDrive/tcc/BERT-LS-master/datasets

python3 tsar_eval.py --gold_file $DATASET_DIR/Simplex30_2.csv --predictions_file $RESULTS_DIR/prediction_simplex_ptbr_bert2_num_10.txt --output_file $RESULTS_DIR/simplex_pt_trial_pred2.tsv.eval