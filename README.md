# 🚀 GenAI Data-platform Engineering Lab

A **12-week, hands-on GenAI engineering curriculum** designed to take an experienced Data/Software Engineer from LLM fundamentals to a **Staff-level AI Platform / GenAI Infrastructure project**.

The focus is not on completing courses.

The focus is:

> **Learn → Build → Break → Measure → Document → Commit → Explain**

---

## 🎯 Objective

Build practical expertise across:

* LLM application engineering
* Prompt engineering
* Embeddings
* Vector search
* RAG
* AI agents
* LangGraph
* MCP
* AI security
* LLM evaluation
* LLMOps
* Observability
* LLM inference
* Performance engineering
* AI platform architecture

The final project combines these capabilities into an:

# AI Data Platform Copilot

---

# 🗺️ 12-Week Roadmap

```text
Week 01 ── LLM Fundamentals
    ↓
Week 02 ── LLM Application Engineering
    ↓
Week 03 ── Embeddings + Vector Search
    ↓
Week 04 ── Production RAG
    ↓
Week 05 ── AI Agents
    ↓
Week 06 ── LangGraph + Multi-Agent
    ↓
Week 07 ── MCP + Tool Infrastructure
    ↓
Week 08 ── AI Security
    ↓
Week 09 ── LLM Evaluation
    ↓
Week 10 ── LLMOps + Observability
    ↓
Week 11 ── LLM Inference Engineering
    ↓
Week 12 ── Staff-Level AI Platform Capstone
```

---

# ⏱️ Time Commitment

Recommended:

```text
60–90 minutes/day
5 days/week
12 weeks
~60–90 total hours
```

### Daily learning formula

```text
10 min  → Learn
20 min  → Follow lab
45 min  → Build
10 min  → Debug/document
 5 min  → Git commit
```

---

# 🧠 Learning Philosophy

Every topic follows:

```text
             ┌─────────────┐
             │    Learn    │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │    Build    │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │    Break    │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │   Measure   │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │  Document   │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │   Commit    │
             └──────┬──────┘
                    ↓
             ┌─────────────┐
             │   Explain   │
             └─────────────┘
```

The final **Explain** step is important.

If you cannot explain why you made an architectural decision, you don't fully own the concept yet.

---

# 📚 Free Learning Resources

## Primary

* Microsoft Generative AI for Beginners
* Microsoft Learn AI labs
* Hugging Face Learn
* Hugging Face Agents Course
* Kaggle Learn
* DeepLearning.AI short courses

## Local AI

* Ollama
* LM Studio
* Hugging Face models

## Frameworks

* LangGraph
* LlamaIndex
* LangChain
* smolagents

## Infrastructure

* FastAPI
* Docker
* OpenTelemetry
* MLflow
* vLLM

---

# 🏗️ Repository Structure

```text
genai-kodekloud/
│
├── README.md
├── Makefile
├── requirements.txt
├── .env.example
├── .gitignore
│
├── progress/
│   └── 12-week-tracker.md
│
├── week-01-llm-fundamentals/
│   └── README.md
│
├── week-02-llm-app-engineering/
│   └── README.md
│
├── week-03-embeddings-vector-search/
│   └── README.md
│
├── week-04-production-rag/
│   └── README.md
│
├── week-05-ai-agents/
│   └── README.md
│
├── week-06-langgraph-multi-agent/
│   └── README.md
│
├── week-07-mcp-tool-infrastructure/
│   └── README.md
│
├── week-08-ai-security/
│   └── README.md
│
├── week-09-llm-evaluation/
│   └── README.md
│
├── week-10-llmops-observability/
│   └── README.md
│
├── week-11-inference-engineering/
│   └── README.md
│
├── week-12-ai-platform-capstone/
│   └── README.md
│
├── projects/
│   ├── sql-explanation-assistant/
│   ├── enterprise-rag/
│   └── ai-data-platform-copilot/
│
├── experiments/
│
├── docs/
│
├── tests/
│
└── .github/
    ├── ISSUE_TEMPLATE/
    │   ├── daily-lab.md
    │   ├── bug.md
    │   ├── experiment.md
    │   └── weekly-review.md
    │
    └── pull_request_template.md
```

---

# 🧪 Lab Rules

Every lab should produce at least one tangible artifact.

Examples:

```text
Python file
Notebook
Test
Benchmark
Architecture diagram
Experiment report
README update
```

Avoid:

```text
❌ Watching a 2-hour video
❌ Copying a tutorial without modification
❌ Collecting certificates without projects
❌ Building only toy chatbots
```

Prefer:

```text
✅ Write code
✅ Change parameters
✅ Break the system
✅ Measure behavior
✅ Compare alternatives
✅ Document tradeoffs
```

---

# 📈 Weekly Deliverables

| Week | Topic            | Main Deliverable          |
| ---: | ---------------- | ------------------------- |
|    1 | LLM Fundamentals | SQL Explanation Assistant |
|    2 | LLM Applications | GenAI REST API            |
|    3 | Embeddings       | Semantic Search Engine    |
|    4 | RAG              | Enterprise RAG            |
|    5 | Agents           | SQL Agent                 |
|    6 | LangGraph        | Multi-Agent System        |
|    7 | MCP              | AI Data Engineer Agent    |
|    8 | Security         | AI Threat Model           |
|    9 | Evaluation       | LLM Evaluation Framework  |
|   10 | LLMOps           | Observability Dashboard   |
|   11 | Inference        | Performance Benchmark     |
|   12 | AI Platform      | AI Data Platform Copilot  |

---

# 🏆 Final Capstone

## AI Data Platform Copilot

The system should answer questions such as:

```text
Why did yesterday's pipeline process 30% fewer records?
```

The platform should be able to:

* Search engineering documentation
* Inspect metadata
* Generate SQL
* Execute read-only queries
* Analyze results
* Explain pipeline failures
* Provide citations
* Use MCP tools
* Maintain state
* Evaluate responses
* Enforce authorization
* Emit metrics
* Produce distributed traces
* Measure latency
* Track token usage
* Track cost

---

# 🏛️ Target Architecture

```text
                         User
                           |
                           v
                    ┌─────────────┐
                    │ API Gateway │
                    │   FastAPI   │
                    └──────┬──────┘
                           |
                           v
                    ┌─────────────┐
                    │Agent Router │
                    │  LangGraph  │
                    └──────┬──────┘
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
        ┌────────┐    ┌────────┐   ┌──────────┐
        │RAG     │    │SQL     │   │Analysis  │
        │Agent   │    │Agent   │   │Agent     │
        └───┬────┘    └───┬────┘   └────┬─────┘
            |             |             |
            v             v             v
        Vector DB       MCP          Data Tools
                          |
                          v
                     Databricks
                          |
                          v
                         LLM
                          |
             +------------+------------+
             |            |            |
             v            v            v
         Evaluation    Metrics      Tracing
             |            |            |
             +------------+------------+
                          |
                          v
                   Observability
```

---

# 💻 Local Development

## Prerequisites

Recommended:

* Python 3.11+
* Git
* Docker
* VS Code
* Ollama or LM Studio
* GitHub account

Optional:

* Azure account
* Databricks workspace
* GPU machine

The curriculum should remain useful without paid cloud services.

---

# ⚙️ Setup

Clone:

```bash
git clone <your-repository-url>
cd genai-kodekloud
```

Create environment:

```bash
make setup
```

Activate:

```bash
source .venv/bin/activate
```

Run tests:

```bash
make test
```

Run lint:

```bash
make lint
```

---

# 🔐 Environment Variables

Copy:

```bash
cp .env.example .env
```

Never commit `.env`.

Example:

```text
LLM_PROVIDER=ollama
LLM_MODEL=<local-model>
OPENAI_API_KEY=
AZURE_OPENAI_ENDPOINT=
AZURE_OPENAI_API_KEY=
DATABRICKS_HOST=
DATABRICKS_TOKEN=
```

Use local models whenever possible.

---

# 📊 Progress Tracking

Progress is maintained in:

```text
progress/12-week-tracker.md
```

Each day should be marked:

```text
⬜ Not Started
🟡 In Progress
✅ Completed
🔴 Blocked
```

---

# 🌿 Git Workflow

Recommended:

```bash
git checkout -b week-01/day-01
```

Work on the lab.

Then:

```bash
git add .
git commit -m "week 01 day 01: llm fundamentals"
git push -u origin week-01/day-01
```

At the end of the week:

```text
Feature branches
      ↓
Pull Request
      ↓
Review
      ↓
Merge
```

---

# 📝 Commit Convention

Use:

```text
week XX day YY: <description>
```

Examples:

```text
week 01 day 01: llm fundamentals
week 01 day 02: prompt experiments
week 02 day 03: fastapi service
week 04 day 05: enterprise rag
week 10 day 04: cost tracking
```

---

# 🧑‍💻 Staff-Level Engineering Expectations

By Week 12, don't just demonstrate that the system works.

Be prepared to explain:

## Scalability

How would you support:

```text
1,000 users
10,000 users
100,000 users
```

## Reliability

What happens when:

```text
LLM fails
Vector DB fails
Databricks fails
MCP fails
Network fails
```

## Performance

How do you optimize:

```text
P95 latency
TTFT
Tokens/sec
GPU utilization
Retrieval latency
```

## Security

How do you prevent:

```text
Prompt injection
PII leakage
Unauthorized SQL
Tool abuse
Data exfiltration
```

## Cost

How do you optimize:

```text
Token consumption
Model selection
Inference
Vector search
Caching
```

---

# 🎯 Definition of Success

At the end of 12 weeks:

* [ ] 60+ meaningful commits
* [ ] 3 portfolio projects
* [ ] 1 complete AI platform
* [ ] RAG implementation
* [ ] Agent implementation
* [ ] MCP implementation
* [ ] Evaluation framework
* [ ] Observability
* [ ] Security model
* [ ] Inference benchmark
* [ ] Architecture documentation
* [ ] Scalability analysis
* [ ] Cost analysis
* [ ] Demo

---

# ⭐ Golden Rule

> Don't optimize for course completion.

Optimize for:

```text
                   Can I build it?
                         ↓
                   Can I break it?
                         ↓
                  Can I measure it?
                         ↓
                 Can I explain it?
                         ↓
                Can I scale it?
                         ↓
              Can I defend the design?
```

If the answer is yes, you are progressing toward Staff-level engineering.
