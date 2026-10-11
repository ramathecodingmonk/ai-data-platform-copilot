## Stage-1: Systems & GPU Foundations
Learn: C++, Rust, CUDA memory hierarchy, PCIe vs NVLink, thread blocks and warp scheduling.
Practice: Write a custom CUDA kernel for matrix multiplication from scratch and profile it against cuBLAS
Why: you cannot optimize what you do not understand at silicon level

## Stage-2: Transformer Inference Physics
Learn: Prefill vs Decode phases, arithmetic intensity, memory bandwidth bottlenecks, KV-cache math.
Practice: Profile a Hugging Face model with Nsight systems to idnetify the exact memory bottleneck during token generation
Why: LLM inference is almost always memory-bound, not compute-bound

## Stage-3: Modern Serving Engines & Batching
Learn: vLLM, SGLang, PagedAttention, continuous batching, chunked prefill.
Practice: Deploy 70B model and tune chunk sizes to maximize throughput without starving decode requests during long-context prefills
Why: Naive batching leaves 60% of GPU VRAM wasted. PagedAttention fixes this.

## Stage-4: KV-Cache & Memory Optimization
Learn: Prefix caching, KV quantization, CPU offloading, multu-turn cache reuse
Practice: Build a routing proxy that directs requests with identical system prompts to the same replica to share KV blocks
Why: Reused cache is free speed. It can slash Time-to-First-Token (TTFT) by 80%

## Stage-5: Quantization & Compression
Learn: FP8, INT4, AWQ, GPTQ, Sparsity, TensorRT-LLM calibration.
Practice: Serve a model in FP8 vs FP16 and benchmark the exact perplexity drop against the latency and VRAM gains
Why: Qunatization is the only way to fit frontier models on edge GPUs and protecr your margins

## Stage-6: Kernel-Level Engineering
Learn: Triton, FlashAttention, CUDA graphs, operator fusion
Practice: Write a fused Triton kernel for RMSNorm or Softmax and benchmark it against the native PyTorch implementation
Why: Python overhead kills inference. fused kernels save millinseconds that compund at scale.

## Stage-7: Distributed Inference & Parallelism
Learn: Tensor parallelism, Pipeline parallelism, Expert parallelism (for MoE models)
Practice: Shared a 405B parameter model across 8 nodes and measure the communication overhead between GPUs.
Why: single-GPU inference is dead for frontier models. you must master shared.

## Stage-8: Speculative decoding
Learn: Draft-target models, Medusa heads, acceptance rates, n-gram drafting 
Practice: Build a pipeline where local 3B model drafts tokens for a cloud 70B model to verify in parallel.
Why: 2x decode speed at zero quality cost is the closest thing to a free lunch in inference

## Stage-9: Multi-Node & Hardware interconnects
Learn: NCCL, RDMA, InfiniBand, NVLink, Disaggregated prefill/Decode architectures.
Practice: Set up a multi-node cluster and profile the network latency of tensor parallelism across nodes vs within a single node.
Why: Network latency is the new GPU bottleneck. Disaggragating prefill and decode is the 2026 meta.

## Stage-10: Cluster Orchestration & GPU Scheduling
Learn: Kubernetes GPU operators, Rat, slurm, MIG (Multi-instance GPU) partitioning, KEDA
Practice: Build a queue-based autoscaler that spins up spot GPUs based on  pending inference requests and drains them when empty
Why: Idle H100s burn $3+/hr. finops and scheduling are now core infra responsibilties.

## Stage-11: AI Gateways, Routing & Observability
Learn: TTFT/ITL SLOd, semantic routing, DCGM metrics, OpenTelemetry for LLMs.
Practice: Build a gateway that routes simple queries to a qunatized local model and complex reasonging to a frontier API based on prompt complexity.
Why: Routing protects your margins and DCGM metrics tell you when your GPUs are silently throttling.

## Stage-12: Public Benchmarks & Teardowns
Learn: Reproducible methodology, latency/throughput pareto curves, cost-per-token analysis.
Practice: Publish a teardown comparing vLLM vs SGLang vs TensorRt-LLM on your specific hardware with full configs
Why: Public proof of hardware mastery gets you hired instantly by top AI labs