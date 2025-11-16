# Titanic Survival Prediction Lab

## 🎯 Learning Objectives

- Apply end-to-end machine learning workflow
- Perform comprehensive feature engineering
- Handle missing data appropriately
- Compare multiple classification algorithms
- Create a complete ML project

## 📚 Prerequisites

- Understanding of classification algorithms
- Data preprocessing techniques
- Feature engineering concepts
- Model evaluation metrics
- Python and scikit-learn

## 📊 Dataset

The famous Titanic dataset with passenger information and survival outcomes.

### Files
- `train_data.csv` - Training data with survival labels
- `test_data.csv` - Test data for predictions

### Features
- **Pclass**: Passenger class (1st, 2nd, 3rd)
- **Sex**: Gender
- **Age**: Age in years
- **SibSp**: Number of siblings/spouses aboard
- **Parch**: Number of parents/children aboard
- **Fare**: Passenger fare
- **Embarked**: Port of embarkation
- **Cabin**: Cabin number
- **Name**: Passenger name

## 🚀 Getting Started

This is an open-ended project lab. Create your own notebook following these steps:

1. **Data Exploration**
   - Load and inspect the data
   - Visualize distributions
   - Identify patterns and correlations

2. **Data Cleaning**
   - Handle missing values
   - Remove or impute nulls
   - Deal with outliers

3. **Feature Engineering**
   - Extract title from names
   - Create family size feature
   - Bin continuous variables
   - Encode categorical variables

4. **Model Building**
   - Split data properly
   - Try multiple algorithms
   - Tune hyperparameters
   - Use cross-validation

5. **Model Evaluation**
   - Compare models
   - Analyze errors
   - Select best model
   - Make predictions on test set

## 🔍 Key Concepts

### Feature Engineering Ideas

- **Title extraction**: Mr, Mrs, Miss, Master, etc.
- **Family size**: SibSp + Parch + 1
- **Is alone**: Family size == 1
- **Age groups**: Child, Teen, Adult, Senior
- **Fare bins**: Low, Medium, High
- **Cabin deck**: Extract deck letter from cabin
- **Name length**: Might indicate social status

### Challenges

- **Missing data**: Age (~20%), Cabin (~77%), Embarked (~0.2%)
- **Class imbalance**: More deaths than survivors
- **Feature correlation**: Some features are related
- **Categorical encoding**: Multiple categorical variables

## 📈 Expected Outcomes

This project should result in:
- Clean, well-documented notebook
- Thorough exploratory data analysis
- Creative feature engineering
- Comparison of at least 3 algorithms
- Model achieving >80% accuracy
- Insights about survival factors

## 💡 Tips

### Data Analysis
- Who was more likely to survive? (Women? Children? 1st class?)
- Which features are most predictive?
- Are there interactions between features?

### Feature Engineering
- Create features that capture domain knowledge
- "Women and children first" policy suggests gender and age are crucial
- Social class (Pclass) likely affected access to lifeboats

### Model Selection
Try multiple algorithms:
- Logistic Regression (baseline)
- Decision Trees
- Random Forest
- SVM
- Ensemble methods

### Common Pitfalls
- Don't use test data for any training decisions
- Don't leak information from target variable
- Don't forget to scale features for some algorithms
- Don't ignore missing data patterns

## 🎨 Visualizations to Create

- Survival rates by class, gender, age
- Feature distributions
- Correlation heatmap
- Feature importance plot
- Confusion matrix
- ROC curves

## 📊 Evaluation Metrics

Focus on:
- **Accuracy**: Overall correctness
- **Precision/Recall**: For imbalanced data
- **F1-Score**: Harmonic mean of precision and recall
- **ROC-AUC**: Overall discriminative ability

## 🏆 Challenge: Kaggle Competition

This dataset is from a famous Kaggle competition. After completing the lab:
1. Create predictions for test set
2. Format according to Kaggle requirements
3. Submit to see your ranking
4. Try to improve your score

## 📚 Historical Context

The Titanic sank on April 15, 1912, after hitting an iceberg. Of the 2,224 passengers and crew:
- 1,502 died
- 722 survived

This tragedy led to improved maritime safety regulations.

## 📚 Additional Resources

- [Kaggle Titanic Competition](https://www.kaggle.com/c/titanic)
- [Feature Engineering Guide](https://triangleinequality.wordpress.com/2013/09/08/basic-feature-engineering-with-the-titanic-data/)
- [Titanic Data Science Solutions](https://www.kaggle.com/startupsci/titanic-data-science-solutions)

## ⏱️ Estimated Time

4-6 hours (or more for complete project)

---

**Set sail on your ML journey! ⚓🚢**
