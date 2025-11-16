# Cohorts Directory

This directory contains cohort-specific materials, student submissions, and collaborative projects organized by academic year.

## 📅 Structure

Each academic year has its own folder following the naming convention `YYYY-YYYY`:

```
cohorts/
├── 2024-2025/          # Current cohort
│   ├── students/       # Individual student work
│   ├── groups/         # Group projects
│   ├── assignments/    # Assignment submissions
│   └── README.md
├── 2025-2026/          # Next cohort
└── templates/          # Templates for new cohorts
```

## 🎯 Purpose

The cohort structure serves multiple purposes:

1. **Organization**: Keep each year's materials separate and organized
2. **Tracking**: Monitor student progress and submissions
3. **Collaboration**: Facilitate group work and peer learning
4. **Archive**: Maintain historical records of student work
5. **Isolation**: Prevent conflicts between different year groups

## 👥 Student Folders

Each student should have their own folder under `cohorts/YYYY-YYYY/students/[student-name]/`:

```
students/
├── john-doe/
│   ├── assignments/
│   │   ├── assignment1/
│   │   └── assignment2/
│   ├── projects/
│   │   └── final-project/
│   └── README.md       # Personal progress tracker
└── jane-smith/
    └── ...
```

### Student Folder Guidelines

- Use your full name or student ID as folder name (lowercase-with-hyphens)
- Keep your folder organized with subfolders for different types of work
- Include a README.md to document your learning journey
- Don't modify other students' folders

## 👨‍👩‍👧‍👦 Group Projects

Group projects are organized under `cohorts/YYYY-YYYY/groups/`:

```
groups/
├── project-sentiment-analysis/
│   ├── members.txt     # List of team members
│   ├── README.md       # Project description
│   ├── code/
│   ├── data/
│   └── presentation/
└── project-image-classification/
    └── ...
```

### Group Project Guidelines

- Create a descriptive folder name for your project
- Include a members.txt file listing all team members
- Document your project thoroughly in README.md
- Use Git branches for collaborative development
- Include attribution for all contributions

## 📝 Assignment Submissions

Submit assignments to `cohorts/YYYY-YYYY/assignments/[assignment-name]/[your-name]/`:

```
assignments/
├── assignment1-linear-regression/
│   ├── john-doe/
│   │   ├── solution.ipynb
│   │   └── report.pdf
│   └── jane-smith/
│       └── solution.ipynb
└── assignment2-classification/
    └── ...
```

### Submission Guidelines

1. **Deadline**: Submit before the specified deadline
2. **Format**: Follow the assignment's required format
3. **Naming**: Use your name or student ID for your folder
4. **Completeness**: Include all required files
5. **Documentation**: Add comments and explanations

## 🆕 Creating a New Cohort

When starting a new academic year:

1. Copy the template folder:
   ```bash
   cp -r cohorts/templates/ cohorts/YYYY-YYYY/
   ```

2. Update the cohort README with:
   - Academic year dates
   - Instructor information
   - Course schedule
   - Specific guidelines

3. Create necessary subfolders:
   ```bash
   mkdir -p cohorts/YYYY-YYYY/{students,groups,assignments}
   ```

4. Communicate the structure to students

## 📋 Cohort-Specific Information

Each cohort folder should contain a README.md with:

- **Course Schedule**: Important dates and deadlines
- **Instructor Contact**: How to reach instructors and TAs
- **Resources**: Links to additional materials
- **Guidelines**: Cohort-specific rules and expectations
- **FAQ**: Common questions and answers

## 🔒 Privacy and Permissions

### Important Notes

- Student work is visible to other students for peer learning
- Don't include personal or sensitive information
- Respect intellectual property and academic integrity
- Follow your institution's academic honesty policies

## 📊 Progress Tracking

Students can track their progress using a personal README.md:

```markdown
# [Your Name] - ML Course Progress

## Completed Assignments
- [x] Assignment 1: Linear Regression - Score: 95/100
- [x] Assignment 2: KNN Classification - Score: 88/100
- [ ] Assignment 3: Clustering - In progress

## Skills Acquired
- Data preprocessing with pandas
- Model evaluation techniques
- Cross-validation

## Projects
- Individual: Titanic survival prediction
- Group: Customer segmentation analysis

## Notes and Reflections
- Week 1: Found feature engineering challenging but rewarding
- Week 3: Improved understanding of bias-variance tradeoff
```

## 🤝 Collaboration Best Practices

### For Individual Work
- Keep your code organized and well-commented
- Document your thought process
- Share insights without sharing complete solutions
- Help others learn, don't just give answers

### For Group Work
- Communicate regularly with team members
- Use Git branches for parallel development
- Review each other's code
- Ensure equal contribution from all members
- Document individual contributions

## 📞 Getting Help

If you have questions about:
- **Structure**: Check this README or ask instructors
- **Submissions**: Review CONTRIBUTING.md
- **Technical Issues**: Open an issue on GitHub
- **Course Content**: Consult your instructor

## 🗂️ Archive Policy

At the end of each academic year:
1. The cohort folder is marked as archived
2. Outstanding work is finalized
3. Final grades are recorded
4. The folder is kept for reference but no longer actively modified

---

**Remember**: This is a collaborative learning environment. Respect others' work, contribute meaningfully, and enjoy the learning journey! 🚀
