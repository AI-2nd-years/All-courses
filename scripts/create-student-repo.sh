#!/bin/bash
#
# Create Student Repository Script
# For AI-2nd-years organization
#
# Usage: ./create-student-repo.sh <student-name>
# Example: ./create-student-repo.sh john-doe
#

set -e

# Check if student name is provided
if [ -z "$1" ]; then
    echo "❌ Error: Student name is required"
    echo "Usage: ./create-student-repo.sh <student-name>"
    echo "Example: ./create-student-repo.sh john-doe"
    exit 1
fi

STUDENT_NAME=$1
ORG="AI-2nd-years"
REPO_NAME="${STUDENT_NAME}"
REPO_FULL="${ORG}/${REPO_NAME}"

echo "🚀 Creating repository for student: ${STUDENT_NAME}"
echo "   Organization: ${ORG}"
echo "   Repository: ${REPO_NAME}"
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed"
    echo "   Install from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI"
    echo "   Run: gh auth login"
    exit 1
fi

# Create the repository
echo "📦 Creating repository..."
gh repo create "${REPO_FULL}" \
    --public \
    --description "AI 2nd Year - ${STUDENT_NAME} Portfolio" \
    --clone

# Navigate to the repository
cd "${REPO_NAME}"

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p assignments labs projects notes practice

# Create .gitignore
echo "📝 Creating .gitignore..."
cat > .gitignore << 'EOF'
# Jupyter Notebook
.ipynb_checkpoints
*/.ipynb_checkpoints/*

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg

# Virtual Environment
venv/
ENV/
env/
.venv

# IDEs
.vscode/
.idea/
*.swp
*.swo
*~
.DS_Store

# Model files
*.pkl
*.h5
*.model

# Logs
*.log

# OS
Thumbs.db
.DS_Store

# Temporary files
.tmp/
tmp/
temp/
EOF

# Create requirements.txt
echo "📝 Creating requirements.txt..."
cat > requirements.txt << 'EOF'
# Core Data Science
numpy>=1.21.0
pandas>=1.3.0
matplotlib>=3.4.0
seaborn>=0.11.0

# Machine Learning
scikit-learn>=1.0.0

# Jupyter
jupyter>=1.0.0
notebook>=6.4.0

# Additional utilities
scipy>=1.7.0
EOF

# Create README.md
echo "📝 Creating README.md..."
cat > README.md << EOF
# ${STUDENT_NAME} - AI 2nd Year Portfolio

![GitHub last commit](https://img.shields.io/github/last-commit/${REPO_FULL})
![GitHub repo size](https://img.shields.io/github/repo-size/${REPO_FULL})

## 👋 About Me

[Add your introduction here]

## 🎓 Academic Information

- **Program**: AI 2nd Year
- **Academic Year**: 2024-2025
- **Course**: Machine Learning
- **Course Repository**: [All-courses](https://github.com/${ORG}/All-courses)

## 📚 Course Progress

### Assignments

| # | Title | Topic | Status | Grade | Link |
|---|-------|-------|--------|-------|------|
| 1 | TBD | Linear Regression | 📝 Not Started | - | - |
| 2 | TBD | Classification | 📝 Not Started | - | - |
| 3 | TBD | Clustering | 📝 Not Started | - | - |

**Legend**: ✅ Complete | 🔄 In Progress | 📝 Not Started

### Labs Completed

- [ ] Lab 1: K-Nearest Neighbors (KNN)
- [ ] Lab 2: Support Vector Machines (SVM)
- [ ] Lab 3: K-Means Clustering
- [ ] Lab 4: Decision Trees
- [ ] Lab 5: Principal Component Analysis

### Projects

- **Midterm Project**: TBD
- **Final Project**: TBD

## 🛠️ Skills & Technologies

### Machine Learning
- Supervised Learning: [To be updated]
- Unsupervised Learning: [To be updated]
- Tools: scikit-learn, pandas, NumPy

### Programming
- Languages: Python
- Libraries: pandas, NumPy, scikit-learn, matplotlib, seaborn
- Tools: Jupyter Notebook, Git, GitHub

## 📂 Repository Structure

\`\`\`
${REPO_NAME}/
├── assignments/          # Assignment solutions
├── labs/                 # Lab exercises
├── projects/             # Course projects
├── notes/                # Learning notes
└── practice/             # Additional practice
\`\`\`

## 📧 Contact

- **Email**: [your.email@example.com]
- **GitHub**: [@${STUDENT_NAME}](https://github.com/${STUDENT_NAME})

## 📜 Academic Integrity

This repository contains coursework for educational purposes. All code is my own work unless otherwise cited. Please respect academic integrity policies.

---

**Last Updated**: $(date +%Y-%m-%d)

*Part of the AI 2nd Year program - Course materials at [All-courses](https://github.com/${ORG}/All-courses)*
EOF

# Create placeholder README in each directory
for dir in assignments labs projects notes practice; do
    cat > "${dir}/README.md" << EOF
# ${dir^}

This directory contains my ${dir} for the AI 2nd Year ML course.

## Structure

[Describe your organization here]

## Contents

[List your work here as you add it]
EOF
done

# Initial commit
echo "💾 Creating initial commit..."
git add .
git commit -m "Initial repository setup

- Add directory structure (assignments, labs, projects, notes, practice)
- Add .gitignore for Python/Jupyter
- Add requirements.txt with ML packages
- Add README.md template
- Add placeholder READMEs in subdirectories"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Repository created successfully!"
echo ""
echo "📍 Repository URL: https://github.com/${REPO_FULL}"
echo ""
echo "📋 Next steps:"
echo "   1. Add student as admin to the repository:"
echo "      gh repo edit ${REPO_FULL} --add-collaborator [student-github-username] --permission admin"
echo ""
echo "   2. Grant instructor write access (if needed):"
echo "      gh repo edit ${REPO_FULL} --add-collaborator [instructor-username] --permission write"
echo ""
echo "   3. Update cohort tracking in All-courses:"
echo "      Add entry to cohorts/2024-2025/README.md"
echo ""
echo "   4. Share repository link with student"
echo ""
echo "🎉 Done!"
