## Day 1 - Understand LLMs

## Learn


1. What is an LLM?

_LLMs (Large Language Models) are a powerful subset of NLP models characterized by their massive size, extensive training data and ability to perform a wide range of language tasks with minimal task specific training. Models like Llama, GPT, claude series are examples of LLMs that have revolutionized what's possible in NLP_

2. Transformer architecture

_Transformer models are used to solve all kinds of tasks across different modalities, including natural language processing (NLP), computer vision, audio processing, and more._

*sample code:*

```
from transformers import pipeline

classifier = pipeline("sentiment-analysis")
classifier("I've been waiting for a HuggingFace course my whole life.")
```

```
[{'label': 'POSITIVE', 'score': 0.9598047137260437}]
```

We can even pass several senstences

```
classifier(
    ["I've been waiting for a HuggingFace course my whole life.", "I hate this so much!"]
)
```

```
[{'label': 'POSITIVE', 'score': 0.9598047137260437},
 {'label': 'NEGATIVE', 'score': 0.9994558095932007}]
```

By default, this pipeline selects a particular pretrained model that has been fine-tuned for sentiment analysis in English. The model is downloaded and cached when you create the classifier object. If you rerun the command, the cached model will be used instead and there is no need to download the model again.

3. Attention
4. Tokens
5. Context window
6. Training vs inference
7. Foundation models