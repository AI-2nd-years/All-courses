# Contributing to All-Courses

Thank you for your interest in contributing to the AI 2nd Year Machine Learning course repository! This document provides guidelines for contributing content, reporting issues, and maintaining the repository.

## 🎯 Types of Contributions

### For Students

#### Submitting Assignments
1. Navigate to your cohort folder under `/cohorts/YYYY-YYYY/`
2. Create a folder with your name or student ID
3. Add your assignment files
4. Commit with a clear message: `Add [assignment-name] by [your-name]`

#### Sharing Projects
1. Create a descriptive folder in your cohort's projects directory
2. Include a README.md explaining your project
3. Add all necessary code and documentation
4. Include a requirements.txt if you used additional packages

#### Reporting Issues
- Use GitHub Issues to report bugs, typos, or broken links
- Include:
  - Clear description of the problem
  - Location (file path and line number if applicable)
  - Expected vs actual behavior
  - Screenshots if helpful

### For Instructors and TAs

#### Adding Course Materials
1. **New Lectures**: Add to `/courses/` under appropriate category
2. **New Labs**: Add to `/labs/` with dataset and notebook
3. **New Assignments**: Add to `/assignments/` with clear instructions
4. **Resources**: Add presentations and papers to `/resources/`

#### Creating New Content Structure
```
topic-name/
├── README.md           # Overview and learning objectives
├── lecture.ipynb       # Main teaching notebook
├── exercises.ipynb     # Practice problems
├── solution.ipynb      # Solutions (optional)
├── data/              # Required datasets
│   └── dataset.csv
└── images/            # Supporting images
    └── diagram.png
```

## 📝 Style Guidelines

### Jupyter Notebooks

1. **Markdown Cells**
   - Start with a title (# Header)
   - Include section descriptions
   - Use bullet points and numbered lists
   - Add learning objectives at the beginning

2. **Code Cells**
   - Include comments for complex operations
   - Use meaningful variable names
   - Follow PEP 8 style guidelines
   - Keep cells focused on one concept

3. **Organization**
   ```python
   # 1. Import libraries
   import pandas as pd
   import numpy as np
   
   # 2. Load and explore data
   df = pd.read_csv('data.csv')
   
   # 3. Data preprocessing
   # ... preprocessing code ...
   
   # 4. Model training
   # ... training code ...
   
   # 5. Evaluation
   # ... evaluation code ...
   ```

### README Files

- Include purpose and overview
- List prerequisites and dependencies
- Provide clear instructions
- Add examples where helpful
- Use proper markdown formatting

### Code Comments

```python
# Good: Explains WHY
# Calculate accuracy to evaluate model performance
accuracy = model.score(X_test, y_test)

# Avoid: States the obvious
# Calculate accuracy
accuracy = model.score(X_test, y_test)
```

## 🔄 Git Workflow

### Branch Naming

- `feature/topic-name` - New course content
- `fix/issue-description` - Bug fixes
- `docs/update-description` - Documentation updates
- `cohort/YYYY-YYYY` - Cohort-specific branches

### Commit Messages

Follow conventional commits:

```
type(scope): brief description

- type: feat, fix, docs, style, refactor, test
- scope: affected area (optional)
- description: clear, concise summary

Examples:
feat(labs): add K-means clustering lab
fix(knn): correct distance calculation formula
docs(readme): update installation instructions
```

### Pull Request Process

1. Create a descriptive branch name
2. Make focused, atomic commits
3. Write a clear PR description:
   - What changes were made
   - Why the changes were needed
   - Any relevant issue numbers
4. Request review from instructor or TA
5. Address feedback promptly

## 📂 File Organization

### Naming Conventions

- **Folders**: `lowercase-with-hyphens` or `snake_case`
- **Notebooks**: `descriptive-name.ipynb`
- **Data files**: `descriptive-name.csv` or `dataset-name.csv`
- **Images**: `descriptive-name.png/jpg`

### File Locations

| Content Type | Location |
|--------------|----------|
| Lecture notes | `/courses/` |
| Lab exercises | `/labs/` |
| Assignments | `/assignments/` |
| Presentations | `/resources/presentations/` |
| Datasets | Within topic folders under `/data/` |
| Student work | `/cohorts/YYYY-YYYY/student-name/` |

## 🧹 Before Committing

### Checklist

- [ ] Jupyter notebooks have been executed and outputs are visible
- [ ] All code cells run without errors
- [ ] No sensitive information (passwords, API keys) included
- [ ] Large files (>10MB) are not committed or are in .gitignore
- [ ] README files are updated if structure changed
- [ ] Links and references are working
- [ ] Markdown formatting is correct

### Clean Up

```bash
# Clear notebook outputs (if needed)
jupyter nbconvert --ClearOutputPreprocessor.enabled=True \
  --inplace your-notebook.ipynb

# Remove temporary files
rm -rf .ipynb_checkpoints
rm -rf __pycache__
```

## 🚫 What NOT to Commit

- `.ipynb_checkpoints/`
- `__pycache__/`
- Personal API keys or credentials
- Very large datasets (>50MB) - link to external source instead
- Binary files that can be regenerated (model files unless small)
- Operating system files (.DS_Store, Thumbs.db)

## 🆘 Getting Help

If you're unsure about anything:

1. Check existing examples in the repository
2. Read the relevant README files
3. Ask in the course forum or chat
4. Contact your instructor or TA
5. Open a discussion on GitHub

## 📋 Review Criteria

Pull requests will be reviewed based on:

- **Correctness**: Code runs without errors
- **Clarity**: Clear explanations and documentation
- **Completeness**: All necessary files included
- **Style**: Follows established conventions
- **Relevance**: Appropriate for the course level

## 🎓 Learning Resources

### Python and Jupyter
- [Python PEP 8 Style Guide](https://pep8.org/)
- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/)

### Git and GitHub
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [GitHub Flow](https://guides.github.com/introduction/flow/)

### Machine Learning
- [scikit-learn Documentation](https://scikit-learn.org/)
- [pandas Documentation](https://pandas.pydata.org/)

---

Thank you for contributing to this educational resource! Your efforts help create a better learning experience for all students. 🌟
