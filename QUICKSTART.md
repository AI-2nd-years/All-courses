# Quick Start Guide

Get started with the All-Courses ML repository in 5 minutes!

## 🚀 For Students

### 1. Clone the Repository

```bash
git clone https://github.com/AI-2nd-years/All-courses.git
cd All-courses
```

### 2. Set Up Your Environment

**Option A: Using venv (Recommended)**
```bash
# Create virtual environment
python3 -m venv venv

# Activate it
# On macOS/Linux:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

**Option B: Using conda**
```bash
# Create conda environment
conda create -n ml-course python=3.9
conda activate ml-course

# Install dependencies
pip install -r requirements.txt
```

### 3. Test Your Setup

```bash
# Start Jupyter Notebook
jupyter notebook

# Open any lab notebook and run a few cells to verify
```

### 4. Create Your Personal Folder

```bash
# Navigate to your cohort
cd cohorts/2024-2025/

# Create your folder (use your name)
mkdir -p students/your-name
cd students/your-name

# Set up structure
mkdir assignments labs projects

# Create your progress tracker
touch README.md
```

### 5. Start Learning!

- **Read**: Start with the main [README.md](README.md)
- **Explore**: Check out [courses/](courses/) for theory
- **Practice**: Try labs in [labs/](labs/)
- **Submit**: Put assignments in your cohort folder

## 👨‍🏫 For Instructors

### 1. Create New Cohort

```bash
# Copy template
cd cohorts/
cp -r templates/ 2025-2026/

# Customize
cd 2025-2026/
# Edit README.md with year-specific info
```

### 2. Update Course Materials

```bash
# Add new topic to courses
mkdir -p courses/supervised-learning/new-algorithm/
cd courses/supervised-learning/new-algorithm/
touch README.md theory.ipynb examples.ipynb

# Add corresponding lab
mkdir -p labs/new-algorithm/
# Add lab files
```

### 3. Manage Submissions

```bash
# Check student submissions
cd cohorts/2024-2025/assignments/assignment1/

# Each student has their own folder
ls
# Output: john-doe/ jane-smith/ ...

# Review and grade
cd john-doe/
jupyter notebook solution.ipynb
```

## 📚 Essential Files to Read

1. **[README.md](README.md)** - Repository overview
2. **[CONTRIBUTING.md](CONTRIBUTING.md)** - How to contribute
3. **[ORGANIZATION.md](ORGANIZATION.md)** - Cohort management
4. **[cohorts/README.md](cohorts/README.md)** - Cohort structure

## 🎓 Typical Workflow

### For a Lab Exercise

```bash
# 1. Pull latest changes
git pull origin main

# 2. Navigate to lab
cd labs/KNN/

# 3. Read the README
cat README.md

# 4. Open notebook
jupyter notebook KNN.ipynb

# 5. Complete the lab

# 6. Save your work in your personal folder
cp KNN.ipynb ../../cohorts/2024-2025/students/your-name/labs/

# 7. Commit (optional for lab practice)
git add .
git commit -m "Complete KNN lab"
git push
```

### For an Assignment

```bash
# 1. Navigate to assignment folder
cd cohorts/2024-2025/assignments/assignment1/

# 2. Create your submission folder
mkdir your-name
cd your-name/

# 3. Work on assignment
# Copy starter files, complete work, test thoroughly

# 4. Commit and push
git add .
git commit -m "Submit assignment 1"
git push

# 5. Verify submission
# Check GitHub to confirm files are uploaded
```

## 🆘 Common Issues

### Issue: "Command not found: jupyter"

**Solution:**
```bash
# Ensure virtual environment is activated
source venv/bin/activate  # or activate on Windows

# Install Jupyter
pip install jupyter
```

### Issue: "No module named 'sklearn'"

**Solution:**
```bash
# Install requirements
pip install -r requirements.txt
```

### Issue: "Permission denied" when pushing

**Solution:**
```bash
# Set up Git credentials
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Or use SSH keys (recommended)
# Follow: https://docs.github.com/en/authentication
```

### Issue: "Kernel died" in Jupyter

**Solution:**
- Restart kernel: Kernel → Restart
- Check memory usage
- Simplify data loading (use smaller sample)

### Issue: Can't find my cohort folder

**Solution:**
```bash
# Check available cohorts
ls cohorts/

# If yours doesn't exist, check with instructor
# They may need to create it
```

## 💡 Pro Tips

### For Efficient Learning

1. **Read before doing**: Always read README files first
2. **Start simple**: Begin with beginner labs
3. **Practice regularly**: Code every day, even 30 minutes
4. **Ask questions**: Use course forum or office hours
5. **Review others' work**: Learn from peers (after submission)

### For Better Git Usage

```bash
# Create informative commits
git commit -m "Add feature engineering to assignment 2"

# Pull before you push
git pull origin main
git push origin main

# Check status often
git status

# See what changed
git diff

# View commit history
git log --oneline
```

### For Jupyter Notebooks

```bash
# Clear outputs before committing (optional)
jupyter nbconvert --ClearOutputPreprocessor.enabled=True \
  --inplace notebook.ipynb

# Convert to Python script
jupyter nbconvert --to script notebook.ipynb

# Convert to HTML for sharing
jupyter nbconvert --to html notebook.ipynb
```

## 🔗 Quick Links

| Resource | Link |
|----------|------|
| Course Materials | [courses/](courses/) |
| Lab Exercises | [labs/](labs/) |
| Assignments | [assignments/](assignments/) |
| Resources | [resources/](resources/) |
| Your Cohort | [cohorts/2024-2025/](cohorts/2024-2025/) |
| Contributing Guide | [CONTRIBUTING.md](CONTRIBUTING.md) |
| Organization Guide | [ORGANIZATION.md](ORGANIZATION.md) |

## 📞 Getting Help

**Order of escalation:**
1. Check relevant README files
2. Search course forum
3. Ask peers/study group
4. Post on course forum
5. Attend office hours
6. Email instructor

**When asking for help, include:**
- What you're trying to do
- What you've tried
- Error messages (full text)
- Operating system
- Python version

## 🎯 Next Steps

### Week 1
- [ ] Set up development environment
- [ ] Read main README and documentation
- [ ] Create personal folder structure
- [ ] Complete first lab exercise
- [ ] Join course communication channels

### Week 2
- [ ] Review course schedule
- [ ] Start first assignment
- [ ] Explore additional resources
- [ ] Connect with classmates
- [ ] Establish study routine

### Ongoing
- [ ] Pull updates regularly
- [ ] Complete labs before assignments
- [ ] Commit work frequently
- [ ] Help others when possible
- [ ] Ask questions early

## 🌟 Best Practices Summary

✅ **DO**:
- Read documentation first
- Test code incrementally
- Commit often with clear messages
- Ask questions when stuck
- Help others learn
- Keep code clean and commented

❌ **DON'T**:
- Copy others' solutions
- Wait until deadline to start
- Ignore error messages
- Work on main branch (for advanced)
- Commit large binary files
- Share complete solutions before deadline

---

## 🎉 You're Ready!

You now have everything you need to succeed in this course. Remember:
- **Practice consistently**
- **Ask for help when needed**
- **Enjoy the learning process**

**Good luck! 🚀📚**

---

*Questions about this guide? Open an issue or contact your instructor.*
