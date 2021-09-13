#conda env remove --name studying-bnns
conda create --name studying-bnns
conda activate studying-bnns
conda install -c conda-forge -n studying-bnns tensorflow=1.8
conda install -c conda-forge -n studying-bnns pyyaml


# Run an experiment by passing args
python run_with_args.py --model binary_connect_mlp \
      --dataset mnist --epochs 250 --batch-size 100 \
          --binarization deterministic-binary

# Run an experiment defined in a YAML file
python run_with_yaml.py some_experiment.yaml

