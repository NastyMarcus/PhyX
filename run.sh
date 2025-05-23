

# judge at string level
python -u run.py --data PhyX_mini \
    --model InternVL2_5-8B \
    --judge-args '{"valid_type": "STR"}'


# judge via LLM

## export SiliconFlow_API_KEY=
## --judge deepseek-v3-si

## export Deepseek_API=
## export OPENAI_API_BASE="https://api.deepseek.com"
## --judge deepseek-v3


# python -u run.py --data PhyX_mini \
#     --model InternVL2_5-8B \
#     --judge deepseek-v3 --judge-args '{"valid_type": "LLM"}'
    