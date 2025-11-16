# Repository Organization Guide

This document explains how to organize and manage the All-Courses repository, especially for handling multiple cohorts and maintaining long-term structure.

## 🎯 Purpose

This guide helps:
- **Instructors**: Organize course materials and manage multiple cohorts
- **TAs**: Navigate the repository and help students
- **Students**: Understand where to find and submit materials
- **Maintainers**: Keep the repository clean and organized

## 📁 Repository Structure Overview

```
All-courses/
│
├── courses/                    # Course theory and lectures
│   ├── supervised-learning/
│   ├── unsupervised-learning/
│   └── README.md
│
├── labs/                       # Hands-on practical exercises
│   ├── KNN/
│   ├── SVM/
│   ├── K-Means/
│   └── README.md
│
├── assignments/                # Graded homework assignments
│   └── README.md
│
├── resources/                  # Supplementary materials
│   ├── presentations/
│   ├── papers/
│   └── README.md
│
├── cohorts/                    # Cohort-specific organization
│   ├── 2024-2025/             # Current cohort
│   ├── 2025-2026/             # Next cohort
│   ├── templates/             # Template for new cohorts
│   └── README.md
│
├── README.md                   # Main repository documentation
├── CONTRIBUTING.md             # Contribution guidelines
├── ORGANIZATION.md             # This file
├── requirements.txt            # Python dependencies
└── .gitignore                 # Git ignore rules

```

## 🎓 Managing Multiple Cohorts

### Philosophy

Each academic year gets its own cohort folder, providing:
- **Isolation**: Students don't interfere with other cohorts
- **Archive**: Historical record of each year
- **Customization**: Year-specific adjustments without affecting others
- **Collaboration**: Current students work together easily

### Creating a New Cohort

When a new academic year begins:

#### 1. Copy Template Structure
```bash
# Navigate to cohorts directory
cd cohorts/

# Copy template to new year
cp -r templates/ YYYY-YYYY/

# Create necessary subdirectories
cd YYYY-YYYY/
mkdir -p students groups assignments
```

#### 2. Customize Cohort README

Edit `cohorts/YYYY-YYYY/README.md` to include:
- Academic year dates
- Instructor and TA names
- Contact information
- Course schedule
- Assignment deadlines
- Cohort-specific policies

#### 3. Set Up Communication

Add links to:
- Course forum or discussion board
- Class chat (Slack, Discord, etc.)
- Office hours calendar
- Virtual meeting rooms

#### 4. Announce to Students

Share with students:
- Repository link
- Their cohort folder location
- How to set up their personal folder
- Submission guidelines

### Managing Current Cohort

#### Student Folders

Students create personal folders:
```
cohorts/2024-2025/students/
├── john-doe/
│   ├── assignments/
│   ├── labs/
│   ├── projects/
│   └── README.md
├── jane-smith/
│   └── ...
```

**Benefits**:
- Easy to track individual progress
- Students learn Git workflow
- Facilitates peer learning
- Creates portfolio of work

#### Assignment Submissions

Centralized assignment folders:
```
cohorts/2024-2025/assignments/
├── assignment1-linear-regression/
│   ├── john-doe/
│   ├── jane-smith/
│   └── ...
├── assignment2-classification/
│   └── ...
```

**Benefits**:
- Easy for instructors to grade
- Students see submission structure
- Clear deadline tracking
- Version control of submissions

#### Group Projects

Collaborative project folders:
```
cohorts/2024-2025/groups/
├── team-alpha-sentiment-analysis/
│   ├── members.txt
│   ├── README.md
│   ├── code/
│   ├── data/
│   └── docs/
```

**Benefits**:
- Learn teamwork and Git collaboration
- Practice branching and merging
- Real-world project structure
- Peer code review experience

### Archiving Old Cohorts

At the end of each academic year:

#### 1. Finalize Submissions
- Ensure all assignments are submitted
- Collect final project work
- Archive important discussions

#### 2. Update Cohort README
Add to the top:
```markdown
# ⚠️ ARCHIVED - Cohort 2023-2024

This cohort has been archived. No new submissions accepted.
For current course, see cohorts/2024-2025/
```

#### 3. Set Folder to Read-Only (Optional)
If using repository permissions, make the folder read-only to prevent accidental modifications.

#### 4. Create Summary Report
Document:
- Number of students
- Completion rates
- Notable projects
- Lessons learned
- Improvements for next year

#### 5. Preserve for Reference
Keep archived cohorts for:
- Future reference
- Student portfolio
- Course improvement
- Institutional records

## 📚 Managing Course Content

### Adding New Topics

When adding a new ML topic:

#### 1. Create Course Material
```bash
# Create in appropriate category
mkdir -p courses/supervised-learning/new-topic/

# Add materials
cd courses/supervised-learning/new-topic/
touch README.md theory.ipynb examples.ipynb
mkdir data
```

#### 2. Create Lab Exercise
```bash
# Create lab folder
mkdir -p labs/new-topic/

# Add lab files
cd labs/new-topic/
touch README.md lab.ipynb
mkdir data solutions
```

#### 3. Update Navigation
Update README files to include new topic:
- `courses/README.md` - Add to topic list
- `labs/README.md` - Add to lab list
- Main `README.md` - Update course overview

#### 4. Create Assignment (Optional)
If creating a graded assignment:
```bash
mkdir -p assignments/new-topic/
# Add assignment description, rubric, data
```

### Updating Existing Content

#### Minor Updates (Typos, Small Fixes)
- Edit files directly
- Commit with clear message
- No need to notify students unless critical

#### Major Updates (Content Changes)
- Create new version or branch
- Notify current cohort
- Update README with changes
- Consider backward compatibility

#### Deprecated Content
- Move to `resources/archive/`
- Update links and references
- Add deprecation notice
- Keep for historical reference

## 🔄 Workflow Best Practices

### For Instructors

#### At Semester Start
- [ ] Create new cohort folder
- [ ] Update cohort README with dates
- [ ] Announce repository to students
- [ ] Set up communication channels
- [ ] Review and update course materials

#### During Semester
- [ ] Monitor student submissions
- [ ] Update materials as needed
- [ ] Respond to issues and questions
- [ ] Track progress and engagement
- [ ] Provide feedback through commits/issues

#### At Semester End
- [ ] Ensure all grading is complete
- [ ] Archive cohort folder
- [ ] Collect feedback from students
- [ ] Document improvements needed
- [ ] Prepare for next cohort

### For Students

#### First Week
- [ ] Clone repository
- [ ] Create personal folder
- [ ] Set up development environment
- [ ] Read all README files
- [ ] Test setup with sample notebook

#### During Course
- [ ] Pull latest changes regularly
- [ ] Submit assignments to correct location
- [ ] Commit work frequently
- [ ] Follow naming conventions
- [ ] Collaborate respectfully

#### Project Submissions
- [ ] Verify all files included
- [ ] Test notebook runs from scratch
- [ ] Include clear documentation
- [ ] Submit before deadline
- [ ] Confirm submission successful

## 🛠️ Maintenance Tasks

### Regular (Weekly)

- Review new issues and pull requests
- Answer student questions
- Update course materials as needed
- Monitor repository size
- Check for broken links

### Periodic (Monthly)

- Review and merge contributions
- Update dependencies in requirements.txt
- Check for deprecated libraries
- Clean up temporary files
- Audit cohort organization

### Yearly (End of Academic Year)

- Archive completed cohort
- Set up new cohort
- Major content updates
- Review overall structure
- Update documentation
- Plan improvements

## 📊 Repository Health

### Metrics to Track

- Number of active students
- Submission completion rates
- Issue resolution time
- Repository size growth
- Student engagement (commits, issues)

### Size Management

To keep repository manageable:
- Use `.gitignore` for large files
- Link to external datasets when very large
- Compress old cohort data if needed
- Clean up temporary/test files
- Archive unused resources

### Git Best Practices

```bash
# Pull before starting work
git pull origin main

# Create branches for major changes
git checkout -b feature/new-topic

# Commit frequently with clear messages
git commit -m "Add decision tree lab materials"

# Push to share work
git push origin feature/new-topic

# Keep commits atomic (one logical change)
```

## 🔐 Access Control

### Public Repository Considerations

If repository is public:
- ✅ Course materials visible to all
- ✅ Great for transparency and sharing
- ⚠️ Students' work is public
- ⚠️ Assignment solutions visible
- ⚠️ Grades should NOT be in repository

### Private Repository Benefits

If repository is private:
- ✅ Student work is private
- ✅ Can include grading information
- ✅ Control who can access
- ⚠️ Requires access management
- ⚠️ May limit collaboration

### Recommended Approach

**Hybrid Strategy**:
- Main course materials: Public repository
- Student submissions: Private repository or separate repo
- Or: Public with student work in gitignored folders
- Or: Public with students submitting via other means

## 🎨 Customization Tips

### Adapting to Your Institution

Customize the structure for your needs:

**Different Course Lengths**
- Quarter system: Adjust schedule in cohort README
- Intensive courses: Compress timeline
- Part-time: Extend deadlines

**Different Tools**
- Using R instead of Python: Update requirements
- Different IDE: Update setup instructions
- Cloud platforms: Add cloud-specific guidance

**Different Pedagogies**
- Flipped classroom: Emphasize pre-class materials
- Project-based: Expand project sections
- Theory-heavy: Add more resources folder content

### Internationalization

For international students:
- Translate key documents
- Consider time zones for deadlines
- Use inclusive examples
- Provide language support resources

## 📞 Getting Help

### For Instructors

Resources for maintaining this structure:
- Review CONTRIBUTING.md for contribution guidelines
- Check GitHub's education resources
- Join education communities (e.g., GitHub Education)

### For Students

How to get help:
- Read relevant README files first
- Check cohort-specific documentation
- Use course forum for questions
- Attend office hours
- Open GitHub issues for repository problems

## 🌟 Future Enhancements

Ideas for improving organization:

### Automation
- Auto-create cohort folders
- Automated grading scripts
- Deadline reminders
- Progress tracking dashboards

### Integration
- Link to LMS (Canvas, Moodle, etc.)
- Connect with CI/CD for testing
- Integrate with collaboration tools
- Add automated quality checks

### Analytics
- Student engagement metrics
- Content usage statistics
- Performance analytics
- Improvement recommendations

---

## 📝 Summary

This organizational structure provides:
- ✅ Clear separation between cohorts
- ✅ Easy navigation for all users
- ✅ Scalable for multiple years
- ✅ Flexible for different needs
- ✅ Maintainable long-term

The key is **consistency** - maintain the structure, update documentation, and adapt as needed while keeping the core organization intact.

**Questions?** Open an issue or contact the repository maintainers.

---

*Last updated: November 2024*
