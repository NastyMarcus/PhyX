# PhyX: Does Your Model Have the "Wits" for Physical Reasoning?
<h5 align="center"> If you like our project, please give us a star ⭐ on GitHub for the latest update.</h5>

Evaluation code for the paper "[PhyX: Does Your Model Have the "Wits" for Physical Reasoning?](https://huggingface.co/datasets/Cloudriver/PhyX)".

For more details, please refer to the project page with dataset exploration and visualization tools: [https://phyx-bench.github.io/](https://phyx-bench.github.io/).

[[🌐 Project Page](https://phyx-bench.github.io/)] [[📖 Paper](https://arxiv.org/abs/2505.15929)] [[🤗 Huggingface Dataset](https://huggingface.co/datasets/Cloudriver/PhyX)]

<p align="center">
    <img src="assets/PhyX_Logo.png" width="20%"> <br>
</p>

## 📖 Outlines
- [PhyX: Does Your Model Have the "Wits" for Physical Reasoning?](#phyx-does-your-model-have-the-wits-for-physical-reasoning)
  - [📖 Outlines](#-outlines)
  - [🔔 News](#-news)
  - [📝 About PhyX](#-about-phyx)
  - [🏆 Leaderboard](#-leaderboard)
  - [🔮 Usage](#-usage)
    - [Evaluation on PhyX](#evaluation-on-phyx)
  - [✅ Cite](#-cite)
  - [❤️ Contributors](#️-contributors)

## 🔔 News
- **[2025.05.21]** 🚀 We release the testmini set of PhyX at [Huggingface](https://huggingface.co/datasets/Cloudriver/PhyX) and the [evaluation code](https://github.com/NastyMarcus/PhyX)!


## 📝 About PhyX

PhyX is the first large-scale benchmark specifically designed to assess models' ability in physical reasoning through realistic, visually grounded scenarios.

PhyX includes 3,000 meticulously collected multimodal questions, covering 6 reasoning types across 25 sub-domains and 6 core domains: thermodynamics, electromagnetism, mechanics, modern physics, optics, and wave acoustics.

![Sample](assets/data_stat.png)

PhyX specializes in university-level challenging questions presented through realistic, high-fidelity visual scenarios. Unlike general-purpose benchmarks, our tasks require models to integrate visual cues with implicit physical laws, going beyond simple knowledge recall and demanding nuanced, context-driven inference. This design enables a rigorous evaluation of true multimodal reasoning about the physical world, exposing key limitations in current models’ capabilities when handling professional-level scientific problems.

![Sample](assets/data_dis.png)

PhyX consists of 3,000 visually grounded physics questions, carefully curated across six distinct physics domains:
- Mechanics (550)
- Electromagnetism (550)
- Thermodynamics (500)
- Wave/Acoustics (500)
- Optics (500)
- Modern Physics (400)

Data examples:

![Sample](assets/data_sample.png)

## 🏆 Leaderboard


## 🔮 Usage

### Evaluation on PhyX

The evaluation code is implemented based on [VLMEvalKit](https://github.com/open-compass/VLMEvalKit ), and we thank the authors for their efforts.

Please follow the [official readme](README_vlmeval.md) to create a pip/conda environment.

In this repository, we provide both Multiple-Choice and Open-ended versions of the data in the `LMUData` folder. For additional formats, please visit the [Google Drive link](https://drive.google.com/file/d/1g6amKMcNSEwg5rfQPsryGtcFiaNGkNaH/view?usp=sharing ) to download and extract the files.

We use DeepSeek-V3 as the LLM-based judger. Please set the `SiliconFlow_API_KEY` to use it, or alternatively, you can perform rule-based judgment.

To evaluate a VLM on PhyX, simply run `run.sh`:


```
cd VLMEvalKit

export OPENAI_API_KEY=
export LMUData="./LMUData"
export SiliconFlow_API_KEY=


# valid_type: STR, LLM
python -u run.py --data PhyX_mini_IMG \
    --model GPT4o_20241120 \
    --judge deepseek --judge-args '{"valid_type": "LLM"}'

```

This example shows how to evaluate `GPT4o_20241120` using DeepSeek-V3 as the judge.

Details for these parameters:

- `--data`: The dataset configuration to evaluate, e.g., `PhyX_mini_MC_IMG` for multiple-choice or `PhyX_mini_IMG` for open-ended.
- `--model`: The model to be evaluated. Please refer to [this link](https://aicarrier.feishu.cn/wiki/Qp7wwSzQ9iK1Y6kNUJVcr6zTnPe?table=tblsdEpLieDoCxtb ) for supported models.
- `--valid_type`: Judgment method — `LLM` for LLM-based evaluation or `STR` for rule-based matching.

After running the evaluation, results will be saved in the `outputs` folder.


## ✅ Cite
If you find **PhyX** useful for your your research and applications, please kindly cite using this BibTeX:

```latex
@misc{shen2025phyxdoesmodelwits,
      title={PhyX: Does Your Model Have the "Wits" for Physical Reasoning?}, 
      author={Hui Shen and Taiqiang Wu and Qi Han and Yunta Hsieh and Jizhou Wang and Yuyue Zhang and Yuxin Cheng and Zijian Hao and Yuansheng Ni and Xin Wang and Zhongwei Wan and Kai Zhang and Wendong Xu and Jing Xiong and Ping Luo and Wenhu Chen and Chaofan Tao and Zhuoqing Mao and Ngai Wong},
      year={2025},
      eprint={2505.15929},
      archivePrefix={arXiv},
      primaryClass={cs.AI},
      url={https://arxiv.org/abs/2505.15929}, 
}
```

## ❤️ Contributors
> *Hui Shen<sup>1, 2</sup>, Taiqiang Wu<sup>1</sup>, Qi Han<sup>3</sup>, Yunta Hsieh<sup>2</sup>, Jizhou Wang<sup>4</sup>, Yuyue Zhang<sup>3</sup>, Yuxin Cheng<sup>1</sup>, Zijian Hao<sup>3</sup>, Yuansheng Ni<sup>5</sup>, Xin Wang<sup>6</sup>, Zhongwei Wan<sup>6</sup>, Kai Zhang<sup>6</sup>, Wendong Xu<sup>1</sup>, Jing Xiong<sup>1</sup>, Ping Luo<sup>1</sup>, Wenhu Chen<sup>5</sup>, Chaofan Tao<sup>1</sup>, Z. Morley Mao<sup>2</sup>, Ngai Wong<sup>1</sup>.*

> *<sup>1</sup>The University of Hong Kong, <sup>2</sup>University of Michigan, <sup>3</sup>Independent, <sup>4</sup>University of Toronto, <sup>5</sup>University of Waterloo, <sup>6</sup>The Ohio State University.*