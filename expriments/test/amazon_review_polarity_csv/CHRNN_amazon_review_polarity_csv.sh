
#!/usr/bin/env bash
cd ../../../
dataset="amazon_review_polarity_csv"
epoch_size=200
batch_size=128
dropout=0.5
model="CharCHRNN"

python test.py      --model ${model} \
                    --test-path "data/${dataset}/test.csv" \
                    --model-path "checkpoints/${model}/${dataset}/${model}_best.pth.tar" 
                    --model ${model} \
                    --batch-size ${batch_size} \
                    --dropout ${dropout} \
