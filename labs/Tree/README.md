# Decision Trees Lab

## 🎯 Learning Objectives

- Understand decision tree algorithms
- Build classification trees
- Interpret tree structure and rules
- Prevent overfitting through pruning
- Analyze feature importance
- Compare with ensemble methods

## 📚 Prerequisites

- Understanding of classification
- Entropy and information gain concepts
- Python programming
- pandas, NumPy, and scikit-learn

## 📊 Dataset

This lab uses a classification dataset (`data.csv`) to build and evaluate decision trees.

## 📝 Lab Structure

- `Decision_tree.ipynb` - Main lab notebook
- `data.csv` - Dataset for classification
- `ok.py` - Utility script

## 🚀 Getting Started

1. Open `Decision_tree.ipynb` in Jupyter Notebook
2. Load and explore the dataset
3. Build a decision tree classifier
4. Visualize the tree structure
5. Evaluate performance
6. Experiment with hyperparameters

## 🔍 Key Concepts

### Decision Tree Components

**Root Node**: Top of tree, first split
**Internal Nodes**: Intermediate decision points
**Leaf Nodes**: Terminal nodes with predictions
**Branches**: Connections representing decisions

### Splitting Criteria

**Gini Impurity** (default in scikit-learn):
```
Gini = 1 - Σ(p_i)²
```
Measures node impurity (0 = pure, 0.5 = mixed)

**Entropy** (information gain):
```
Entropy = -Σ(p_i × log₂(p_i))
```
Measures information needed to classify

**Information Gain**:
```
Gain = Entropy(parent) - Σ(weighted_entropy(children))
```

### Tree Building Process

1. Start with all data at root
2. Find best feature and threshold to split
3. Split data into child nodes
4. Repeat recursively for each child
5. Stop when:
   - Node is pure
   - Maximum depth reached
   - Minimum samples reached
   - No information gain

## 📈 Expected Outcomes

After this lab, you should be able to:
- Build decision tree classifiers
- Visualize and interpret trees
- Tune hyperparameters to prevent overfitting
- Extract decision rules
- Analyze feature importance
- Understand pros and cons of decision trees

## 🎛️ Important Hyperparameters

### Controlling Tree Growth

**max_depth**: Maximum tree depth
- Low: Underfitting
- High: Overfitting
- Typical: 3-10

**min_samples_split**: Minimum samples to split node
- Higher: More conservative splitting
- Lower: More detailed tree
- Default: 2

**min_samples_leaf**: Minimum samples in leaf
- Higher: Smoother boundaries
- Lower: More complex boundaries
- Default: 1

**max_features**: Features to consider per split
- 'auto' or 'sqrt': √n_features
- 'log2': log₂(n_features)
- int: Fixed number
- None: All features

**criterion**: Splitting criterion
- 'gini': Gini impurity (default, faster)
- 'entropy': Information gain (slower)

### Finding Optimal Parameters

Use **GridSearchCV** or **RandomizedSearchCV**:
```python
from sklearn.model_selection import GridSearchCV

param_grid = {
    'max_depth': [3, 5, 7, 10],
    'min_samples_split': [2, 5, 10],
    'min_samples_leaf': [1, 2, 4],
    'criterion': ['gini', 'entropy']
}

grid_search = GridSearchCV(
    DecisionTreeClassifier(random_state=42),
    param_grid,
    cv=5,
    scoring='accuracy'
)
grid_search.fit(X_train, y_train)
best_tree = grid_search.best_estimator_
```

## 💡 Tips

### Building Trees
- Start with default parameters
- Visualize the tree to understand structure
- Prune aggressively if overfitting
- Use cross-validation for parameter tuning

### Preventing Overfitting
- Limit tree depth (max_depth)
- Increase min_samples_split
- Increase min_samples_leaf
- Use ensemble methods (Random Forest)

### Interpreting Trees
- Follow decision paths
- Extract rules programmatically
- Analyze feature importance
- Validate splits make sense

## 🎨 Visualizations

### Tree Structure
```python
from sklearn.tree import plot_tree
import matplotlib.pyplot as plt

plt.figure(figsize=(20, 10))
plot_tree(clf, 
          feature_names=feature_names,
          class_names=class_names,
          filled=True,
          rounded=True,
          fontsize=10)
plt.show()
```

### Feature Importance
```python
import pandas as pd

importance_df = pd.DataFrame({
    'feature': feature_names,
    'importance': clf.feature_importances_
}).sort_values('importance', ascending=False)

plt.figure(figsize=(10, 6))
plt.barh(importance_df['feature'], importance_df['importance'])
plt.xlabel('Importance')
plt.title('Feature Importance')
plt.show()
```

### Decision Boundary (2D)
```python
from mlxtend.plotting import plot_decision_regions

plot_decision_regions(X_train.values, y_train.values, 
                     clf=clf, legend=2)
plt.xlabel('Feature 1')
plt.ylabel('Feature 2')
plt.title('Decision Boundary')
plt.show()
```

## ✅ Advantages of Decision Trees

1. **Interpretable**: Easy to understand and explain
2. **Visual**: Can visualize the entire model
3. **No scaling needed**: Works with raw features
4. **Mixed data**: Handles numerical and categorical
5. **Non-linear**: Captures non-linear relationships
6. **Feature importance**: Identifies key features
7. **Few parameters**: Relatively simple to tune

## ⚠️ Disadvantages of Decision Trees

1. **Overfitting**: Easily overfits without pruning
2. **Instability**: Small data changes can change tree significantly
3. **Biased**: Favors features with more levels
4. **Greedy**: May not find global optimum
5. **Not smooth**: Creates rectangular decision boundaries

## 🌳 From Trees to Forests

### Ensemble Methods

**Random Forest**: Multiple trees, voting
- More accurate than single tree
- Less overfitting
- Less interpretable

**Gradient Boosting**: Sequential trees
- Very high accuracy
- Requires careful tuning
- Slower to train

**AdaBoost**: Weighted trees
- Focuses on hard examples
- Less prone to overfitting
- Sensitive to noise

## 🔬 Experiments to Try

1. **Compare criterions**: Gini vs Entropy
2. **Vary max_depth**: 2, 3, 5, 10, None
3. **Feature importance**: Which features matter most?
4. **Tree complexity**: Count nodes and depth
5. **Ensemble vs single**: Random Forest vs Decision Tree
6. **Visualization**: Plot trees of different depths
7. **Rule extraction**: Convert tree to if-then rules

## 📊 Model Evaluation

### Metrics for Classification Trees

- **Accuracy**: Overall correctness
- **Precision/Recall**: Class-specific performance
- **F1-Score**: Harmonic mean
- **Confusion Matrix**: Error breakdown
- **ROC-AUC**: Discrimination ability

### Cross-Validation
```python
from sklearn.model_selection import cross_val_score

scores = cross_val_score(clf, X, y, cv=5, scoring='accuracy')
print(f"Mean: {scores.mean():.3f} (+/- {scores.std():.3f})")
```

## 🧮 Extracting Decision Rules

```python
from sklearn.tree import export_text

tree_rules = export_text(clf, 
                        feature_names=feature_names)
print(tree_rules)
```

Output example:
```
|--- feature_0 <= 5.5
|   |--- feature_1 <= 3.0
|   |   |--- class: 0
|   |--- feature_1 > 3.0
|   |   |--- class: 1
|--- feature_0 > 5.5
|   |--- class: 2
```

## 📚 Additional Resources

### Documentation
- [scikit-learn Decision Trees](https://scikit-learn.org/stable/modules/tree.html)
- [Decision Tree Classifier API](https://scikit-learn.org/stable/modules/generated/sklearn.tree.DecisionTreeClassifier.html)

### Tutorials
- [StatQuest: Decision Trees](https://www.youtube.com/watch?v=7VeUPuFGJHk)
- [Visual Introduction to Decision Trees](http://www.r2d3.us/visual-intro-to-machine-learning-part-1/)

### Theory
- [CART Algorithm](https://en.wikipedia.org/wiki/Decision_tree_learning)
- [Information Gain](https://en.wikipedia.org/wiki/Information_gain_in_decision_trees)

## ⏱️ Estimated Time

2-3 hours

## 🎓 Next Steps

After mastering decision trees:
1. Learn about Random Forests
2. Explore Gradient Boosting (XGBoost, LightGBM)
3. Study feature engineering for trees
4. Apply to real-world problems
5. Compare with other classifiers

---

**Happy tree growing! 🌳📊**
