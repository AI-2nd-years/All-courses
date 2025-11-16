# Course Materials

This directory contains the main course materials including lecture notes, theory, and conceptual explanations for all machine learning topics.

## 📚 Organization

Course materials are organized by learning category:

```
courses/
├── supervised-learning/      # Algorithms with labeled data
│   ├── linear-regression/
│   ├── logistic-regression/
│   ├── knn/
│   ├── svm/
│   └── decision-trees/
└── unsupervised-learning/    # Algorithms with unlabeled data
    ├── k-means/
    └── pca-acp/
```

## 🎯 Learning Path

### 1. Supervised Learning
Work through these topics in order:

#### Regression Problems
1. **Linear Regression** - Start here for continuous predictions
   - Simple linear regression
   - Multiple linear regression
   - Model evaluation metrics (MSE, R²)

2. **Polynomial Regression** - Non-linear relationships
   - Feature transformation
   - Overfitting and underfitting

#### Classification Problems
3. **Logistic Regression** - Binary classification foundation
   - Sigmoid function
   - Decision boundaries
   - Multi-class extension

4. **K-Nearest Neighbors (KNN)** - Instance-based learning
   - Distance metrics
   - Choosing K
   - Scalability considerations

5. **Support Vector Machines (SVM)** - Maximum margin classifiers
   - Linear SVM
   - Kernel trick
   - Hyperparameter tuning

6. **Decision Trees** - Tree-based models
   - Splitting criteria
   - Pruning
   - Random Forests

### 2. Unsupervised Learning

7. **K-Means Clustering** - Partitional clustering
   - Centroid initialization
   - Elbow method
   - Silhouette analysis

8. **Principal Component Analysis (PCA/ACP)** - Dimensionality reduction
   - Covariance matrix
   - Eigenvalues and eigenvectors
   - Variance explained

## 📖 Each Topic Includes

Every topic folder contains:

- **README.md** - Overview and learning objectives
- **theory.ipynb** - Theoretical concepts and mathematical foundations
- **examples.ipynb** - Worked examples with explanations
- **references.md** - Additional reading and resources

## 🎓 How to Use These Materials

### Before Class
1. Read the topic README for overview
2. Review the theory notebook
3. Note any questions for class discussion

### During Class
1. Follow along with instructor demonstrations
2. Ask questions about unclear concepts
3. Take notes on key insights

### After Class
1. Review examples notebook
2. Work through practice problems
3. Apply concepts in lab exercises

## 📝 Study Tips

### For Beginners
- Start with linear regression - it's the foundation
- Don't skip the math - it helps with intuition
- Run all code examples yourself
- Modify parameters to see effects

### For Advanced Students
- Compare different algorithms on same dataset
- Implement algorithms from scratch
- Read original research papers
- Explore advanced topics in references

## 🔗 Relationship with Labs

Course materials provide **theory and concepts**, while labs provide **hands-on practice**:

- **Courses**: "What is linear regression and how does it work?"
- **Labs**: "Implement linear regression on a housing dataset"

Always complete the course material before attempting the corresponding lab.

## 📊 Topics by Difficulty

### Beginner
- Linear Regression
- K-Nearest Neighbors
- K-Means Clustering

### Intermediate
- Logistic Regression
- Decision Trees
- PCA/ACP

### Advanced
- Support Vector Machines
- Ensemble Methods
- Advanced PCA applications

## 🧮 Mathematical Prerequisites

Different topics require different math backgrounds:

| Topic | Linear Algebra | Calculus | Probability | Statistics |
|-------|----------------|----------|-------------|------------|
| Linear Regression | ⭐⭐ | ⭐ | ⭐ | ⭐⭐⭐ |
| Logistic Regression | ⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐ |
| KNN | ⭐ | - | ⭐ | ⭐ |
| SVM | ⭐⭐⭐ | ⭐⭐ | ⭐ | ⭐⭐ |
| Decision Trees | ⭐ | - | ⭐⭐ | ⭐⭐ |
| K-Means | ⭐⭐ | ⭐ | - | ⭐⭐ |
| PCA | ⭐⭐⭐ | ⭐ | - | ⭐⭐ |

⭐ = Basic, ⭐⭐ = Moderate, ⭐⭐⭐ = Advanced

## 📚 Recommended Reading Order

1. **Week 1-2**: Linear Regression
2. **Week 3-4**: Logistic Regression
3. **Week 5**: KNN
4. **Week 6-7**: SVM
5. **Week 8**: Decision Trees
6. **Week 9-10**: K-Means
7. **Week 11-12**: PCA/ACP

## 🎯 Learning Objectives by Topic

### Supervised Learning

#### Linear Regression
- Understand the least squares method
- Implement gradient descent
- Interpret coefficients
- Evaluate model performance

#### Logistic Regression
- Understand probability-based classification
- Apply to binary and multi-class problems
- Interpret decision boundaries
- Handle class imbalance

#### K-Nearest Neighbors
- Understand distance-based classification
- Choose appropriate distance metrics
- Optimize the K parameter
- Handle high-dimensional data

#### Support Vector Machines
- Understand margin maximization
- Apply kernel functions
- Tune hyperparameters
- Handle non-linear boundaries

#### Decision Trees
- Understand recursive partitioning
- Prevent overfitting
- Interpret tree structure
- Extend to ensemble methods

### Unsupervised Learning

#### K-Means
- Understand centroid-based clustering
- Choose optimal number of clusters
- Initialize centroids effectively
- Interpret cluster characteristics

#### PCA/ACP
- Understand dimensionality reduction
- Compute principal components
- Interpret variance explained
- Apply to visualization and preprocessing

## 🔧 Software Tools

All course materials use:
- **Python 3.7+**
- **NumPy** - Numerical computing
- **pandas** - Data manipulation
- **Matplotlib/Seaborn** - Visualization
- **scikit-learn** - ML algorithms

## 📞 Getting Help

If you have questions about course content:
1. Review the topic README and theory notebook
2. Check the references for additional explanations
3. Post questions in the course forum
4. Attend office hours
5. Form study groups with classmates

## 🌟 Tips for Success

1. **Practice Regularly** - ML requires hands-on experience
2. **Understand, Don't Memorize** - Focus on concepts, not formulas
3. **Start Simple** - Master basics before advanced topics
4. **Visualize Everything** - Use plots to build intuition
5. **Ask Questions** - No question is too basic
6. **Connect Topics** - See relationships between algorithms
7. **Apply to Real Data** - Use what you learn on actual problems

---

**Happy Learning! 📖✨**
