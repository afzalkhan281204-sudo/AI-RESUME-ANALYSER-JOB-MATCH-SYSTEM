# AI Resume Analyzer & Job Match System (ResuMatch AI)

An intelligent full-stack AI platform built to evaluate ATS compatibility, extract skills using Natural Language Processing (NLP), identify missing skill gaps, generate STAR-formatted bullet point rewrites, and track candidate ATS score progression over time.

---

## 🌟 Resume Bullet Point (For Your Portfolio / CV)

> **Developed an AI-powered resume analysis platform using NLP techniques to evaluate ATS compatibility, extract skills, and generate personalized improvement recommendations.**

---

## ✨ Features & Capabilities

- 📄 **PDF & Text Resume Parsing**: Extracts structured text, contact info (Email, Phone, LinkedIn, GitHub), word count metrics, and structural sections.
- 🎯 **NLP Skill Extraction Engine**: Categorizes 500+ skills into Programming Languages, Frameworks, Cloud/Databases, DevOps Tools, AI/ML, and Soft Skills.
- 📊 **Multi-Factored ATS Scoring**:
  - **Keyword Match %**: Coverage of required target job skills.
  - **Semantic TF-IDF Cosine Similarity**: Mathematical text overlap between resume and job description.
  - **Formatting & Structural Health**: Checks required sections, contact info, and word length density.
  - **Action Verbs & Metrics Score**: Analyzes bullet points for strong action verbs and quantifiable results (%, $, 10x).
- 🔴🟡🟢 **Skill Gap Breakdown**: Highlights Matched Skills (Green), Missing Critical Keywords (Red with High/Medium impact tags), and Extra Skills (Blue).
- 🪄 **STAR Resume Bullet Enhancer**: Converts weak, passive job duties ("Worked on API") into quantifiable STAR bullet points ("Architected 15+ RESTful endpoints using FastAPI & PostgreSQL, reducing latency by 35%").
- 📈 **Scan History & Progress Analytics**: Stores scan records in SQLite and renders score evolution trend charts using Recharts.
- ⚡ **1-Click Sample Demo**: Pre-configured demo resumes and job descriptions for instant testing without uploading files.

---

## 🛠️ Technology Stack

- **Frontend**: React (Vite), TailwindCSS, Lucide React Icons, Recharts
- **Backend**: FastAPI (Python), PyPDF, Scikit-Learn (TF-IDF Vectorizer & Cosine Similarity), Regex NLP Engine
- **Database**: SQLite with SQLAlchemy ORM
- **Runner**: Simple 1-click startup script (`./start.sh`) + optional `Dockerfile` & `docker-compose.yml`

---

## 🚀 Quick Start (Local Run)

### 1. Launch Backend & Frontend Concurrently
Run the single start script from the project root:
```bash
./start.sh
```

- **Frontend Application**: [http://localhost:5173](http://localhost:5173)
- **FastAPI API & Swagger Docs**: [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 📂 Project Structure

```
ai-resume-analyzer/
├── backend/
│   ├── app/
│   │   ├── nlp/
│   │   │   ├── pdf_parser.py
│   │   │   ├── skill_extractor.py
│   │   │   ├── ats_scorer.py
│   │   │   └── suggestions_generator.py
│   │   ├── routes/
│   │   │   ├── analyze.py
│   │   │   ├── history.py
│   │   │   └── sample_data.py
│   │   ├── database.py
│   │   ├── models.py
│   │   ├── schemas.py
│   │   └── main.py
│   ├── requirements.txt
│   └── run.py
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Header.jsx
│   │   │   ├── SampleSelector.jsx
│   │   │   ├── ResumeUpload.jsx
│   │   │   ├── JobMatcher.jsx
│   │   │   ├── AtsScoreGauge.jsx
│   │   │   ├── SkillBreakdown.jsx
│   │   │   ├── SuggestionsPanel.jsx
│   │   │   ├── BulletGenerator.jsx
│   │   │   └── HistoryView.jsx
│   │   ├── App.jsx
│   │   ├── index.css
│   │   └── main.jsx
│   └── package.json
├── start.sh
├── Dockerfile
├── docker-compose.yml
└── README.md
```
