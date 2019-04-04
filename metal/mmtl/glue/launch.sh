# launches single task or multitask models of MetalModel with favorable GLUE parameters
python launch.py \
    --device 0 \
    --bert_model bert-base-uncased \
    --max_len 200 \
    --warmup_steps 0 \
    --warmup_unit "epochs" \
    --lr_scheduler "linear" \
    --min_lr 0 \
    --log_every 0.25 --score_every 0.25 \
    --checkpoint_dir checkpoints \
    --checkpoint_metric model/valid/gold/glue_score \
    --checkpoint_metric_mode max \
    --checkpoint_best True \
    --progress_bar 1 \
    --lr 5e-5 \
    --l2 1e-4 \
    --batch_size 16 \
    --tasks QNLI,STSB,MRPC,QQP,WNLI,RTE,MNLI,SST2,COLA \
    --split_prop None \
    --n_epochs 2 \
    --max_datapoints 1000 \
