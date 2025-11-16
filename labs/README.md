# Labs Directory

This directory contains hands-on laboratory exercises where you'll apply machine learning concepts to real datasets.

## 🔬 Purpose

Labs provide practical experience with:
- Implementing ML algorithms using scikit-learn
- Data preprocessing and feature engineering
- Model training and evaluation
- Real-world problem solving
- Code debugging and optimization

## 📁 Structure

```
labs/
├── linear-regression/
│   ├── README.md
│   ├── lab.ipynb
│   ├── data/
│   └── solutions/
├── classification/
├── clustering/
└── dimensionality-reduction/
```

## 🎯 Lab Components

Each lab includes:

### 1. README.md
- Learning objectives
- Prerequisites
- Dataset description
- Expected time commitment
- Grading criteria (if graded)

### 2. Lab Notebook (lab.ipynb)
- Problem description
- Starter code
- TODO sections for students
- Hints and guidance
- Evaluation metrics

### 3. Data Folder
- Dataset(s) for the lab
- Data dictionary
- Source attribution

### 4. Solutions (if available)
- Complete solution notebook
- Alternative approaches
- Common mistakes to avoid

## 📚 Available Labs

### Regression Labs

#### 1. Linear Regression Lab
**Dataset**: Housing prices  
**Skills**: Data cleaning, feature selection, model training, evaluation  
**Difficulty**: ⭐ Beginner  
**Time**: 2-3 hours

#### 2. Polynomial Regression Lab
**Dataset**: Non-linear trends  
**Skills**: Feature engineering, regularization, cross-validation  
**Difficulty**: ⭐⭐ Intermediate  
**Time**: 2-3 hours

### Classification Labs

#### 3. Logistic Regression Lab
**Dataset**: Customer churn  
**Skills**: Binary classification, probability thresholds, ROC curves  
**Difficulty**: ⭐⭐ Intermediate  
**Time**: 3-4 hours

#### 4. KNN Lab
**Dataset**: Iris or custom dataset  
**Skills**: Distance metrics, K selection, normalization  
**Difficulty**: ⭐ Beginner  
**Time**: 2 hours

#### 5. SVM Lab
**Dataset**: Cancer detection  
**Skills**: Kernel selection, hyperparameter tuning, decision boundaries  
**Difficulty**: ⭐⭐⭐ Advanced  
**Time**: 3-4 hours

#### 6. Decision Trees Lab
**Dataset**: Credit approval  
**Skills**: Tree visualization, feature importance, pruning  
**Difficulty**: ⭐⭐ Intermediate  
**Time**: 2-3 hours

### Unsupervised Learning Labs

#### 7. K-Means Clustering Lab
**Dataset**: Customer segmentation  
**Skills**: Cluster analysis, elbow method, visualization  
**Difficulty**: ⭐⭐ Intermediate  
**Time**: 2-3 hours

#### 8. PCA Lab
**Dataset**: High-dimensional data  
**Skills**: Dimensionality reduction, variance analysis, visualization  
**Difficulty**: ⭐⭐⭐ Advanced  
**Time**: 3-4 hours

### Project Labs

#### 9. Titanic Survival Prediction
**Dataset**: Titanic passenger data  
**Skills**: End-to-end ML pipeline, feature engineering, model comparison  
**Difficulty**: ⭐⭐ Intermediate  
**Time**: 4-6 hours

#### 10. Breast Cancer Classification
**Dataset**: Medical diagnostic data  
**Skills**: Handling medical data, imbalanced classes, evaluation metrics  
**Difficulty**: ⭐⭐⭐ Advanced  
**Time**: 4-6 hours

## 🚀 How to Complete a Lab

### Step 1: Preparation (15 minutes)
1. Read the lab README
2. Review relevant course material
3. Ensure you have required libraries installed
4. Download and inspect the dataset

### Step 2: Understanding (30 minutes)
1. Read through the entire notebook
2. Understand the problem statement
3. Review the evaluation criteria
4. Note any questions or uncertainties

### Step 3: Implementation (1-3 hours)
1. Work through TODO sections sequentially
2. Test your code incrementally
3. Use print statements and visualizations
4. Compare results with expected output

### Step 4: Validation (30 minutes)
1. Run all cells from top to bottom
2. Check that results make sense
3. Verify against evaluation metrics
4. Document any assumptions

### Step 5: Reflection (15 minutes)
1. What worked well?
2. What was challenging?
3. What would you do differently?
4. What did you learn?

## 💡 Tips for Success

### General Tips
- **Start Early**: Don't wait until the deadline
- **Read Carefully**: Instructions contain important details
- **Test Incrementally**: Don't write all code at once
- **Use Visualizations**: Plots help understand data and results
- **Save Often**: Commit your work regularly

### Debugging Tips
- Print intermediate results
- Check data types and shapes
- Verify data preprocessing steps
- Compare with expected output
- Ask for help if stuck > 30 minutes

### Code Quality
- Use meaningful variable names
- Add comments for complex operations
- Follow consistent formatting
- Remove debug print statements before submission
- Ensure notebook runs from top to bottom

## 📊 Lab Evaluation Criteria

Labs are typically evaluated on:

| Criterion | Weight | Description |
|-----------|--------|-------------|
| Correctness | 40% | Code produces expected results |
| Code Quality | 20% | Clean, readable, well-organized |
| Analysis | 20% | Thoughtful interpretation of results |
| Documentation | 10% | Clear comments and explanations |
| Completeness | 10% | All sections completed |

## 🔧 Common Issues and Solutions

### Issue: Notebook won't run
**Solution**: 
- Restart kernel and run all cells
- Check library versions
- Verify file paths are correct

### Issue: Poor model performance
**Solution**:
- Check data preprocessing
- Try different hyperparameters
- Verify train/test split
- Look for data leakage

### Issue: Out of memory errors
**Solution**:
- Use smaller dataset sample
- Optimize data types
- Clear unused variables
- Use batch processing

### Issue: Long execution time
**Solution**:
- Use smaller dataset for testing
- Optimize algorithm parameters
- Parallelize when possible
- Profile code to find bottlenecks

## 🤝 Collaboration Policy

### Allowed
- Discussing general approaches
- Helping debug specific errors
- Sharing learning resources
- Explaining concepts

### Not Allowed
- Copying code directly
- Sharing complete solutions
- Working on someone else's account
- Submitting others' work

## 📝 Submission Guidelines

1. **Filename**: Keep the original filename
2. **Location**: Submit to your cohort folder
3. **Format**: Jupyter notebook (.ipynb)
4. **Execution**: Ensure all cells run successfully
5. **Outputs**: Include all cell outputs
6. **Deadline**: Submit before deadline (check cohort README)

### Submission Checklist
- [ ] All TODO sections completed
- [ ] Code runs without errors
- [ ] Results are reasonable and interpreted
- [ ] Comments and documentation included
- [ ] Notebook saved with outputs
- [ ] Submitted to correct location
- [ ] Submitted before deadline

## 🆘 Getting Help

### During Lab Sessions
- Ask instructor or TA immediately
- Work with lab partners
- Use debugging techniques

### Outside Lab Hours
- Post on course forum with specific questions
- Attend office hours
- Review solutions (if available) after submission
- Check course materials

### Effective Questions
Include:
- What you're trying to do
- What you've already tried
- Specific error messages
- Minimal code example
- Context (which lab, which section)

## 📈 Tracking Progress

Keep track of your lab completion:

```markdown
## My Lab Progress

- [x] Lab 1: Linear Regression - Completed (95/100)
- [x] Lab 2: Classification - Completed (88/100)
- [ ] Lab 3: Clustering - In Progress
- [ ] Lab 4: PCA - Not Started

## Concepts Mastered
- Data preprocessing with pandas
- Train/test split strategy
- Model evaluation metrics

## Concepts to Review
- Feature scaling
- Cross-validation
- Hyperparameter tuning
```

## 🌟 Going Beyond

Want to learn more?

### Extensions
- Try different algorithms on same data
- Optimize hyperparameters further
- Add new features
- Compare multiple models
- Visualize results differently

### Challenges
- Beat the baseline performance
- Reduce code complexity
- Improve execution speed
- Create reusable functions
- Write unit tests

### Projects
- Apply lab techniques to your own data
- Combine multiple techniques
- Create end-to-end pipelines
- Share on GitHub
- Write blog posts about findings

## 📚 Additional Resources

### Documentation
- [scikit-learn User Guide](https://scikit-learn.org/stable/user_guide.html)
- [pandas Documentation](https://pandas.pydata.org/docs/)
- [Matplotlib Tutorials](https://matplotlib.org/stable/tutorials/index.html)

### Interactive Learning
- Kaggle Learn (free courses)
- DataCamp (some free content)
- Google Colab tutorials

### Communities
- Stack Overflow
- Reddit: r/learnmachinelearning
- Discord ML communities

---

**Good luck with your labs! Remember, practice makes perfect! 💪**
