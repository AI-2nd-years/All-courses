# All Courses - Machine Learning Materials

This repository contains Machine Learning course materials including Jupyter notebooks, datasets, and code examples organized by topics.

## 📋 Table of Contents

- [Repository Structure](#repository-structure)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Method 1: Clone the Entire Repository](#method-1-clone-the-entire-repository)
  - [Method 2: Access Specific Folders](#method-2-access-specific-folders)
  - [Method 3: Browse on GitHub](#method-3-browse-on-github)
- [Setup Instructions](#setup-instructions)
- [How to Use](#how-to-use)
- [Topics Covered](#topics-covered)

## 📁 Repository Structure

```
All-courses/
├── ACP/                    # Principal Component Analysis
├── K-Means/                # K-Means Clustering
├── KNN/                    # K-Nearest Neighbors
├── Linear Regression/      # Linear Regression models
├── Logistic Regression/    # Logistic Regression
├── SVM/                    # Support Vector Machines
├── Tree/                   # Decision Trees
├── Titanic/                # Titanic dataset project
├── Devoir/                 # Homework assignments
├── Cours_presentation/     # Course presentation materials
├── 1_cours.ipynb          # Course notebook 1
├── 2cours.ipynb           # Course notebook 2
├── Linear algebra.pdf      # Linear algebra reference
└── ML.pptx                # Machine Learning presentation
```

## 🔧 Prerequisites

Before working with this repository, ensure you have the following installed:

- **Python 3.7+** - [Download Python](https://www.python.org/downloads/)
- **Jupyter Notebook** or **JupyterLab** - For running `.ipynb` files
- **Git** - [Download Git](https://git-scm.com/downloads)

## 🚀 Getting Started

### Method 1: Clone the Entire Repository

This is the recommended method if you want to work with all course materials locally.

1. **Open your terminal** (Command Prompt on Windows, Terminal on Mac/Linux)

2. **Navigate to where you want to store the repository:**
   ```bash
   cd path/to/your/desired/folder
   ```

3. **Clone the repository:**
   ```bash
   git clone https://github.com/AI-2nd-years/All-courses.git
   ```

4. **Navigate into the repository:**
   ```bash
   cd All-courses
   ```

5. **Install required Python packages:**
   ```bash
   pip install -r requirements.txt
   ```
   
   Or install individually:
   ```bash
   pip install jupyter numpy pandas matplotlib seaborn scikit-learn scipy imbalanced-learn
   ```

6. **Start Jupyter Notebook:**
   ```bash
   jupyter notebook
   ```
   
   This will open a browser window where you can navigate through folders and open notebooks.

### Method 2: Access Specific Folders

If you only need specific topics, you can work with individual folders:

#### Option A: Using GitHub Web Interface
1. Navigate to [https://github.com/AI-2nd-years/All-courses](https://github.com/AI-2nd-years/All-courses)
2. Browse to the folder you need (e.g., `KNN/` or `SVM/`)
3. Click on the notebook file (`.ipynb`) to view it directly on GitHub

#### Option B: Download Specific Folders
1. Navigate to the specific folder on GitHub
2. Use a browser extension like "GitZip" to download just that folder
3. Or use **sparse checkout** with Git:
   ```bash
   git clone --no-checkout https://github.com/AI-2nd-years/All-courses.git
   cd All-courses
   git sparse-checkout init --cone
   git sparse-checkout set KNN SVM  # Replace with folders you need
   git checkout
   ```

#### Option C: Download Individual Files
1. Go to the specific file on GitHub
2. Click on the "Raw" button
3. Right-click and "Save As..." to download

### Method 3: Browse on GitHub

You can view and interact with notebooks directly on GitHub:
1. Visit [https://github.com/AI-2nd-years/All-courses](https://github.com/AI-2nd-years/All-courses)
2. Click on any folder to explore its contents
3. Click on `.ipynb` files to view them rendered in your browser

**Note:** For interactive work and running code, you'll need to clone or download the files locally.

## ⚙️ Setup Instructions

After cloning, follow these steps:

1. **Create a virtual environment (recommended):**
   ```bash
   # On Windows
   python -m venv venv
   venv\Scripts\activate

   # On Mac/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

2. **Install dependencies:**
   ```bash
   pip install --upgrade pip
   pip install jupyter numpy pandas matplotlib seaborn scikit-learn scipy imbalanced-learn
   ```

3. **Verify installation:**
   ```bash
   python -c "import sklearn, pandas, numpy, matplotlib; print('All packages installed successfully!')"
   ```

## 📖 How to Use

### Working with Jupyter Notebooks

1. **Start Jupyter:**
   ```bash
   jupyter notebook
   ```

2. **Navigate to a topic folder** (e.g., KNN, SVM)

3. **Open a notebook** by clicking on it

4. **Run cells** by pressing `Shift + Enter` or clicking the "Run" button

5. **Modify and experiment** with the code as needed

### Working with Individual Topics

Each folder contains:
- **Jupyter Notebooks** (`.ipynb`) - Main course content with code and explanations
- **Data files** (`.csv`, `.txt`) - Datasets used in the notebooks
- **Supporting files** (`.py`, images) - Helper code and visualizations

To work on a specific topic:
1. Navigate to that topic's folder
2. Open the main notebook
3. Follow the instructions and run the code cells
4. Experiment with the parameters and code

## 📚 Topics Covered

- **ACP** - Principal Component Analysis (Analyse en Composantes Principales)
- **K-Means** - Unsupervised clustering algorithm
- **KNN** - K-Nearest Neighbors classification
- **Linear Regression** - Linear modeling for prediction
- **Logistic Regression** - Binary and multiclass classification
- **SVM** - Support Vector Machines
- **Tree** - Decision Tree algorithms
- **Titanic** - Real-world dataset project
- **Devoir** - Homework assignments and exercises

## 🤝 Contributing

If you find issues or want to contribute:
1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

## 📝 Notes

- Some notebooks are in French (Français)
- Make sure to keep your local repository updated:
  ```bash
  git pull origin main
  ```
- If you encounter missing data files, check the specific folder for datasets

## 💡 Tips

- **For beginners:** Start with the main course notebooks (`1_cours.ipynb`, `2cours.ipynb`)
- **For specific algorithms:** Go directly to the relevant folder
- **For practice:** Check the `Devoir/` folder for exercises
- **Save your work:** Create copies of notebooks before experimenting to preserve originals

## ❓ Need Help?

If you encounter issues:
1. Ensure all prerequisites are installed
2. Check that you're using Python 3.7 or higher
3. Verify all packages are installed correctly
4. Review error messages carefully

---

Happy Learning! 🎓
