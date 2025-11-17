# AI-2nd-years Organization Hierarchy

This document describes the complete organizational structure for the **AI-2nd-years** GitHub organization, including how to manage the main course repository and student repositories.

## 🎯 Organization Purpose

The AI-2nd-years organization hosts:
1. **All-courses** - Main course materials repository (instructors manage)
2. **Student repositories** - Individual student work repositories (e.g., AICHA, Soumana)

## 📊 Current Organization Structure

```
AI-2nd-years/
├── All-courses/              # 🏛️ Main course repository
│   ├── courses/              # Course theory
│   ├── labs/                 # Lab exercises
│   ├── assignments/          # Assignment templates
│   ├── resources/            # Learning resources
│   └── cohorts/              # Cohort organization
│       ├── templates/
│       ├── 2024-2025/
│       └── ...
│
├── AICHA/                    # 👤 Student repository
│   └── [Student's work]
│
├── Soumana/                  # 👤 Student repository
│   └── [Student's work]
│
└── [other-student-repos]/    # 👤 More student repositories
```

## 🎓 Repository Roles

### Main Course Repository (All-courses)

**Purpose**: Central hub for all course materials, managed by instructors

**Contents**:
- Course theory and lectures
- Lab exercises and datasets
- Assignment templates and descriptions
- Learning resources and presentations
- Cohort organization structure

**Access**:
- **Instructors**: Write access (can modify content)
- **Students**: Read access (can view and fork)

**Workflow**:
1. Instructors add/update course materials
2. Students fork or clone to access materials
3. Students submit work to their personal repos or cohort folders
4. Instructors review from cohort folders or student repos

### Student Repositories (AICHA, Soumana, etc.)

**Purpose**: Individual student workspaces for personal projects and assignments

**Contents**:
- Student's assignment solutions
- Personal projects
- Practice code
- Learning notes
- Portfolio work

**Access**:
- **Student (owner)**: Write access
- **Instructors**: Read/Write access (for grading)
- **Other students**: No access (or Read if public)

**Naming Convention**: `[student-name]` or `[student-id]`

## 🏗️ Recommended Organization Structure

### Option 1: Cohort Folders in All-courses (Current Implementation)

**Best for**: Centralized submission and grading

```
All-courses/
└── cohorts/
    └── 2024-2025/
        ├── students/
        │   ├── AICHA/           # Student submits here
        │   └── Soumana/         # Student submits here
        └── assignments/
            ├── assignment1/
            │   ├── AICHA/
            │   └── Soumana/
            └── assignment2/
```

**Pros**:
- Centralized - all work in one place
- Easy for instructors to grade
- Version controlled submissions
- Clear submission structure

**Cons**:
- Large repository size over time
- Potential merge conflicts
- All students need write access

### Option 2: Student Repositories + Linking (Recommended)

**Best for**: Individual student ownership and portfolio building

```
All-courses/                    # Instructors manage
├── courses/
├── labs/
├── assignments/
└── cohorts/
    └── 2024-2025/
        └── students/
            └── README.md       # Links to student repos

AICHA/                          # Student manages
├── assignments/
│   ├── assignment1/
│   ├── assignment2/
│   └── assignment3/
├── labs/
│   ├── lab1/
│   └── lab2/
├── projects/
│   └── final-project/
└── README.md                   # Portfolio

Soumana/                        # Student manages
├── assignments/
├── labs/
├── projects/
└── README.md
```

**Pros**:
- Students own their work
- Portfolio-ready repositories
- No repository size issues
- Learn Git workflows
- Parallel work (no conflicts)

**Cons**:
- Distributed - work in multiple repos
- Instructors visit multiple repos to grade
- Requires good Git knowledge

### Option 3: Hybrid Approach (Best of Both)

**Best for**: Flexibility and learning

- **All-courses**: Course materials + submission tracking
- **Student repos**: Student work + portfolio
- **Links**: Cohort folder contains links to student repos

```
All-courses/cohorts/2024-2025/students/README.md:

# 2024-2025 Students

| Student | Repository | Status |
|---------|------------|--------|
| AICHA | [github.com/AI-2nd-years/AICHA](https://github.com/AI-2nd-years/AICHA) | Active |
| Soumana | [github.com/AI-2nd-years/Soumana](https://github.com/AI-2nd-years/Soumana) | Active |
```

## 📝 Student Repository Structure Template

### Recommended Structure for Student Repos

```
student-name/
├── README.md                      # Portfolio/About
├── assignments/                   # Assignment solutions
│   ├── assignment1-linear-reg/
│   │   ├── solution.ipynb
│   │   ├── report.pdf
│   │   └── README.md
│   ├── assignment2-classification/
│   └── assignment3-clustering/
├── labs/                          # Lab work
│   ├── lab1-knn/
│   ├── lab2-svm/
│   └── lab3-clustering/
├── projects/                      # Projects
│   ├── midterm-project/
│   └── final-project/
├── notes/                         # Learning notes
│   └── concepts.md
└── practice/                      # Practice code
    └── experiments/
```

### Student README Template

```markdown
# [Student Name] - AI 2nd Year Portfolio

## About Me
Brief introduction about yourself and your learning journey.

## Course: Machine Learning
- **Academic Year**: 2024-2025
- **Course Repository**: [All-courses](https://github.com/AI-2nd-years/All-courses)
- **Instructor**: [Name]

## Assignments

| Assignment | Topic | Status | Grade | Link |
|------------|-------|--------|-------|------|
| 1 | Linear Regression | ✅ Complete | 95/100 | [View](assignments/assignment1/) |
| 2 | Classification | ✅ Complete | 88/100 | [View](assignments/assignment2/) |
| 3 | Clustering | 🔄 In Progress | - | [View](assignments/assignment3/) |

## Projects
- **Midterm**: Titanic Survival Prediction - [View](projects/midterm-project/)
- **Final**: Customer Segmentation - [View](projects/final-project/)

## Skills Acquired
- Data preprocessing with pandas
- ML algorithms: Linear/Logistic Regression, KNN, SVM, Decision Trees
- Model evaluation and validation
- Feature engineering
- Hyperparameter tuning

## Contact
- Email: [email]
- LinkedIn: [profile]
```

## 🔄 Workflows

### Workflow 1: Student Gets Assignment

1. Student navigates to **All-courses** repository
2. Reads assignment in `/assignments/[assignment-name]/`
3. Downloads datasets and reads requirements
4. Works in their **personal repository**
5. Commits solution to their repo
6. (Optional) Creates PR or notifies instructor
7. Instructor grades from student's repo

### Workflow 2: Student Submits via Cohort Folder

1. Student works in their personal repo
2. When ready to submit, copies to cohort folder
3. `cp -r ~/my-repo/assignment1/ ~/All-courses/cohorts/2024-2025/students/AICHA/`
4. Commits to All-courses repository
5. Instructor grades from cohort folder

### Workflow 3: Student Uses Fork (GitHub Flow)

1. Student forks **All-courses**
2. Works on assignments in fork
3. Creates Pull Request when ready to submit
4. Instructor reviews PR
5. Merges or provides feedback

## 🎓 Setting Up Student Repositories

### For Instructors: Create Student Repo

```bash
# Using GitHub CLI
gh repo create AI-2nd-years/[student-name] \
  --public \
  --description "AI 2nd Year - [Student Name]" \
  --clone

cd [student-name]

# Copy template structure
mkdir -p assignments labs projects notes practice
touch README.md

# Initial commit
git add .
git commit -m "Initial repository setup"
git push
```

### For Students: Set Up Your Repository

```bash
# Clone your repository
git clone https://github.com/AI-2nd-years/[your-name].git
cd [your-name]

# Create structure
mkdir -p assignments labs projects notes practice

# Create your README (use template above)
nano README.md

# Add remote for course materials (optional)
git remote add course https://github.com/AI-2nd-years/All-courses.git

# Initial commit
git add .
git commit -m "Set up repository structure"
git push origin main
```

## 👥 Organization Management

### Adding New Students

1. **Create student repository**:
   ```bash
   gh repo create AI-2nd-years/[student-name] --public
   ```

2. **Grant access**:
   - Student: Admin on their repo
   - Instructors: Write access for grading

3. **Add to cohort tracking**:
   Update `All-courses/cohorts/YYYY-YYYY/students/README.md`

4. **Share templates**:
   Provide student with README template and structure

### Repository Permissions

**All-courses**:
- Instructors: Write
- Students: Read (or no direct access, use fork)

**Student repositories**:
- Student (owner): Admin
- Instructors: Write (for grading/feedback)
- Other students: None (or Read if portfolio-style)

### Organization Settings

**Recommended settings**:
- Default repository visibility: Public (for portfolio)
- Allow members to create repos: No (instructor-created)
- Require 2FA: Yes (security)
- Default branch name: `main`

## 📋 Repository Templates

### Creating a Student Repo Template

1. **Create template repository** in organization:
   ```bash
   gh repo create AI-2nd-years/.student-template \
     --public \
     --template
   ```

2. **Add template structure** (as shown above)

3. **Students create from template**:
   ```bash
   gh repo create AI-2nd-years/[student-name] \
     --template AI-2nd-years/.student-template
   ```

## 🔐 Access Control Strategy

### Public vs Private

**Public repositories** (Recommended):
- ✅ Portfolio-building
- ✅ Open-source contribution experience
- ✅ Showcase to employers
- ⚠️ Work is visible to everyone

**Private repositories**:
- ✅ Work is confidential
- ✅ Academic integrity
- ⚠️ Not portfolio-ready
- ⚠️ Requires careful permission management

**Recommendation**: Use public repos but only push after assignment deadlines

### Protecting Academic Integrity

1. **Delayed visibility**: Keep assignment repos private until after deadline
2. **Honor code**: Students sign agreement
3. **Plagiarism detection**: Use automated tools
4. **Code review**: Instructors check for understanding
5. **Unique prompts**: Vary assignment details per student

## 📊 Tracking Student Progress

### In All-courses Repository

Update cohort README with student links and progress:

```markdown
# 2024-2025 Cohort Students

| Student | Repository | Assignments | Projects | Status |
|---------|------------|-------------|----------|--------|
| AICHA | [Link](https://github.com/AI-2nd-years/AICHA) | 3/3 ✅ | 2/2 ✅ | Active |
| Soumana | [Link](https://github.com/AI-2nd-years/Soumana) | 2/3 🔄 | 1/2 🔄 | Active |
```

### Using GitHub Features

- **Issues**: Track assignment questions
- **Projects**: Organize cohort tasks
- **Discussions**: Course forum
- **Wiki**: Additional documentation
- **Releases**: Course material versions

## 🎯 Migration Guide

### Moving from Current to Recommended Structure

**Phase 1: Set up student repositories**
1. Create individual repos for AICHA, Soumana, etc.
2. Add recommended structure
3. Grant appropriate permissions

**Phase 2: Update All-courses**
1. Add student tracking in cohort folder
2. Update documentation
3. Add workflow instructions

**Phase 3: Student migration**
1. Students clone their new repos
2. Move existing work from cohort folders (if any)
3. Continue future work in personal repos

**Phase 4: Establish workflow**
1. Document submission process
2. Test with one assignment
3. Gather feedback and adjust
4. Roll out to all students

## 📚 Benefits of This Structure

**For Students**:
- Own their work and learning journey
- Build public portfolio
- Learn professional Git workflows
- Independence and ownership
- Clear organization

**For Instructors**:
- Clear separation of course materials and student work
- Easy to track individual progress
- Scalable for many students
- Reduced merge conflicts
- Professional setup

**For Organization**:
- Clean, professional appearance
- Scalable structure
- Clear repository purposes
- Easy to onboard new students
- Sustainable long-term

## 🔧 Tools and Automation

### Useful Scripts

**Create student repo**:
```bash
#!/bin/bash
# create-student-repo.sh
STUDENT_NAME=$1
gh repo create AI-2nd-years/$STUDENT_NAME --public
gh repo clone AI-2nd-years/$STUDENT_NAME
cd $STUDENT_NAME
mkdir -p assignments labs projects notes
echo "# $STUDENT_NAME - AI 2nd Year Portfolio" > README.md
git add . && git commit -m "Initial setup" && git push
```

**List all student repos**:
```bash
gh repo list AI-2nd-years --json name,url --jq '.[] | select(.name != "All-courses") | .name'
```

### GitHub Actions

Set up automation for:
- Assignment deadline notifications
- Auto-grading (basic checks)
- Code quality checks
- Submission validation

## 📞 Support and Resources

### For Students
- **Course materials**: All-courses repository
- **Questions**: GitHub Issues or Discussions
- **Technical help**: Instructor office hours
- **Git help**: [GitHub Docs](https://docs.github.com)

### For Instructors
- **Organization management**: [GitHub Organizations](https://docs.github.com/en/organizations)
- **Classroom features**: [GitHub Classroom](https://classroom.github.com)
- **Automation**: [GitHub Actions](https://docs.github.com/en/actions)

## 🎓 Alternative: GitHub Classroom

Consider using **GitHub Classroom** for automated:
- Student repository creation
- Assignment distribution
- Submission collection
- Auto-grading
- Roster management

Setup: https://classroom.github.com/

## 📋 Checklist for Implementation

### Initial Setup
- [ ] Document organization structure (this file)
- [ ] Create student repository template
- [ ] Set organization permissions
- [ ] Update All-courses with links

### For Each Student
- [ ] Create personal repository
- [ ] Add student as admin
- [ ] Grant instructor access
- [ ] Add to cohort tracking
- [ ] Share setup instructions

### Ongoing
- [ ] Update student progress regularly
- [ ] Review student work in their repos
- [ ] Maintain All-courses materials
- [ ] Collect feedback and improve

---

## 🌟 Summary

The AI-2nd-years organization should maintain:

1. **All-courses** - Central course materials hub (instructor-managed)
2. **Student repositories** - Individual student workspaces (student-managed)
3. **Clear linking** - Cohort folder links to student repos
4. **Professional structure** - Both repos well-organized
5. **Scalable workflows** - Processes that work for 5 or 500 students

This structure provides clear separation of concerns, promotes student ownership, enables portfolio building, and scales effectively.

---

*Last updated: November 2024*
*For questions: Open issue in All-courses repository*
