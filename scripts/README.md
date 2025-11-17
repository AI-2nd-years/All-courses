# Scripts Directory

Helper scripts for managing the AI-2nd-years organization and repositories.

## 📜 Available Scripts

### create-student-repo.sh

Creates a new student repository in the AI-2nd-years organization with the recommended structure.

**Usage**:
```bash
./scripts/create-student-repo.sh <student-name>
```

**Example**:
```bash
./scripts/create-student-repo.sh alice-smith
```

**What it does**:
1. Creates a new public repository: `AI-2nd-years/<student-name>`
2. Sets up directory structure (assignments, labs, projects, notes, practice)
3. Adds .gitignore for Python/Jupyter
4. Adds requirements.txt with ML packages
5. Creates README.md template
6. Makes initial commit and pushes to GitHub

**Requirements**:
- GitHub CLI (`gh`) installed and authenticated
- Organization admin or write permissions

**After running**:
1. Add student as admin to their repository
2. Grant instructor write access for grading
3. Update cohort tracking in All-courses
4. Share repository link with student

## 🔧 Setup

### Install GitHub CLI

**macOS**:
```bash
brew install gh
```

**Linux**:
```bash
# Debian/Ubuntu
sudo apt install gh

# Fedora/RHEL
sudo dnf install gh
```

**Windows**:
```bash
winget install GitHub.cli
```

Or download from: https://cli.github.com/

### Authenticate

```bash
gh auth login
```

Follow the prompts to authenticate with your GitHub account.

## 📝 Usage Examples

### Create repository for a new student

```bash
./scripts/create-student-repo.sh john-doe
```

### Grant student admin access

```bash
gh repo edit AI-2nd-years/john-doe \
  --add-collaborator john-doe-github \
  --permission admin
```

### Grant instructor write access

```bash
gh repo edit AI-2nd-years/john-doe \
  --add-collaborator instructor-username \
  --permission write
```

### List all repositories in organization

```bash
gh repo list AI-2nd-years
```

### List only student repositories (exclude All-courses)

```bash
gh repo list AI-2nd-years --json name,url \
  --jq '.[] | select(.name != "All-courses") | .name'
```

## 🎯 Best Practices

### Repository Naming

Use consistent naming for student repositories:
- Lowercase with hyphens: `john-doe`
- Or student ID: `student-12345`
- Avoid special characters

### Permissions

**Student repositories**:
- Student: Admin (full control)
- Instructors: Write (for grading and feedback)
- Other students: None (or Read for public portfolios)

**All-courses repository**:
- Instructors: Write (manage content)
- Students: Read (access materials)

### Workflow

1. Create student repository using script
2. Grant appropriate permissions
3. Update cohort tracking
4. Share setup instructions with student
5. Student customizes their README
6. Student starts working on assignments

## 🔒 Security Notes

- Scripts require appropriate permissions in the organization
- Always verify repository settings after creation
- Review collaborator access regularly
- Keep scripts updated with organization policies

## 📚 Additional Resources

- [GitHub CLI Documentation](https://cli.github.com/manual/)
- [GitHub Organizations Guide](https://docs.github.com/en/organizations)
- [Managing Repository Access](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/managing-repository-settings/managing-teams-and-people-with-access-to-your-repository)

---

*For issues or improvements, open an issue in the All-courses repository.*
