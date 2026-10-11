## Project ideas
## 1. Document intelligence pipeline
Reference paper: CUAD: AN Expert-annotated NLP Dataset for Legal Contract Review

Skills required to build:
Extraction
Prompting
Context Engineering
Schema Validation

*Note: Evals framework is used*

Interested for interviewer
1. Documents you choose
2. Model trade-off
3. Categories the model did well vs didn't
4. how you handled schema validation

## 2. Enterprise Search
Reference paper: EnterpriseRAG-Bench: A RAG Benchmark for Company Internal Knowledge

Skills required to build:
1. Data Engineering: Data Ingestion - Document chunking, Embedding models, Vector databases
2. Advanced RAG: Hybrid search, Semantic retrieval, Re-ranking Citations
3. LLM Evaluation: Factuality, Context precision & recall, retrieval evaluation, Refusal testing
4. Deployment & Observability: API development, Docker deployment, Tracing & Observability, P95/P99 latency

Interviewer look for
1. Chunking Decisions
2. Embedding model
3. Vector database
4. Citations 
5. Use of Evals

## 3. Processing and Generating voice - Conversational Intelligence System
Dataset: The AMI MEETING CORPUS: A Pre-announcement

100 hours of meeting recordings and scenario based.

skills required to build:
1. Transcription - speech to text : missing can't associate the person.
2. Evals - word error rate, Time to first output, Time to first word, Words per second, Time to first audio

Interviewer look for
1. Model choice
2. Overlapping speakers
3. Summary evaluation
4. Batch vs real time

## 4. Sovereign AI Engine
Dataset: 
1. Billsum: A Corpus for Automatic Summarization of US Legislation
2. PubMedQA: A Dataset for Biomedical Research Question Answering 

Model choices: Gemma-4, Qwen3 (2-4B parameters)

Skills will req to build
1. LLM fine-tuning: PEFT, LoRA/QLoRA, fine-tuning vs prompting
2. Inteference Optimization: Model quantization, Continuous batching, KV caching
3. Model deployment: Open-weight models, Local Inference, API deployment, Dcoker containers
4. Model benchmarking: Quality evaluation, p95 latency, throughput benchmarking, cost modelling

## 5. Multi-Step Autonomus Agent
Dataset: Bench: Evaluating Conversational Agents in a Dual-Control Environment

skills required to build:
1. Agentic AI: ReAct agents, Tool use/function calling, MCP integration
2. Agent Orchestration: Multi-agent system, planning & execution, Task queues, resumable workflows.
3. Safety & Observability: Guardrails, Human-in-the-loop tracing & debugging
4. Agent Evaluation: Task success rate, tool-call accuracy, esacalation rate, Pass^k reliability

Tracing is important. reasoning step, tool call

Interviewer look for

1. Human in the loop
2. Eval
3. Debugging traces
4. Guardrails

## 6. Working Backwards

skills you will build
1. Problem discovery: Company research, Job requirement analysis, domain use-case mapping
2. Project scoping: Requirements analysis, use-case prioritization, feasibility scoping
3. Data & Evaluation: Dataset selection, synthetic data generation, success metrics, domain-aligned evaluation

prompt: