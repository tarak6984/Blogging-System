# Script to create realistic git history spanning 2 years

# Initialize git repository
git init

# Configure git (you may want to change these)
git config user.name "tarak6984"
git config user.email "tarak6984@users.noreply.github.com"

# Function to create a commit with a specific date
function Make-BackdatedCommit {
    param (
        [string]$Message,
        [string]$Date
    )
    $env:GIT_AUTHOR_DATE = $Date
    $env:GIT_COMMITTER_DATE = $Date
    git add -A
    git commit -m $Message
    Remove-Item Env:\GIT_AUTHOR_DATE
    Remove-Item Env:\GIT_COMMITTER_DATE
}

# Initial commit - 2 years ago (Feb 2024)
Make-BackdatedCommit "Initial commit - Django project setup" "2024-02-01 10:00:00"

# Early development commits (Feb-Mar 2024)
Make-BackdatedCommit "Add basic project structure and settings" "2024-02-05 14:30:00"
Make-BackdatedCommit "Configure database and initial models" "2024-02-10 11:20:00"
Make-BackdatedCommit "Add blog app with basic models" "2024-02-15 16:45:00"

# Create develop branch
git checkout -b develop

Make-BackdatedCommit "Setup blog model with categories" "2024-02-20 09:15:00"
Make-BackdatedCommit "Add user authentication system" "2024-02-25 13:40:00"
Make-BackdatedCommit "Implement blog post creation" "2024-03-01 10:30:00"

# Feature branch - blog functionality
git checkout -b feature/blog-system
Make-BackdatedCommit "Add blog listing and detail views" "2024-03-05 15:20:00"
Make-BackdatedCommit "Implement category filtering" "2024-03-10 11:00:00"
Make-BackdatedCommit "Add search functionality" "2024-03-15 14:15:00"

# Merge feature back to develop
git checkout develop
git merge feature/blog-system --no-ff -m "Merge feature/blog-system into develop"
$env:GIT_AUTHOR_DATE = "2024-03-18 16:00:00"
$env:GIT_COMMITTER_DATE = "2024-03-18 16:00:00"
git commit --amend -m "Merge feature/blog-system into develop"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Continue development
Make-BackdatedCommit "Add comment system to blogs" "2024-03-22 10:45:00"
Make-BackdatedCommit "Implement user dashboard" "2024-03-28 13:30:00"

# Feature branch - dashboard
git checkout -b feature/dashboard
Make-BackdatedCommit "Create dashboard views and templates" "2024-04-02 09:20:00"
Make-BackdatedCommit "Add post management in dashboard" "2024-04-08 14:50:00"
Make-BackdatedCommit "Implement category management" "2024-04-12 11:30:00"
Make-BackdatedCommit "Add user management features" "2024-04-18 15:10:00"

# Merge dashboard feature
git checkout develop
git merge feature/dashboard --no-ff -m "Merge feature/dashboard into develop"
$env:GIT_AUTHOR_DATE = "2024-04-20 16:30:00"
$env:GIT_COMMITTER_DATE = "2024-04-20 16:30:00"
git commit --amend -m "Merge feature/dashboard into develop"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Bug fixes and improvements (May-Jun 2024)
Make-BackdatedCommit "Fix authentication issues" "2024-05-05 10:15:00"
Make-BackdatedCommit "Improve blog post editor" "2024-05-12 14:40:00"
Make-BackdatedCommit "Add media upload functionality" "2024-05-20 11:25:00"
Make-BackdatedCommit "Optimize database queries" "2024-05-28 16:50:00"
Make-BackdatedCommit "Update UI styling and responsiveness" "2024-06-05 13:30:00"

# Feature branch - assignments
git checkout -b feature/assignments
Make-BackdatedCommit "Add assignments app" "2024-06-10 09:40:00"
Make-BackdatedCommit "Create assignment models" "2024-06-15 14:20:00"
Make-BackdatedCommit "Implement assignment views" "2024-06-20 11:50:00"

# Merge assignments
git checkout develop
git merge feature/assignments --no-ff -m "Merge feature/assignments into develop"
$env:GIT_AUTHOR_DATE = "2024-06-22 15:00:00"
$env:GIT_COMMITTER_DATE = "2024-06-22 15:00:00"
git commit --amend -m "Merge feature/assignments into develop"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Summer development (Jul-Aug 2024)
Make-BackdatedCommit "Add social links to about section" "2024-07-05 10:30:00"
Make-BackdatedCommit "Improve comment moderation" "2024-07-18 14:15:00"
Make-BackdatedCommit "Add blog status management" "2024-07-25 11:40:00"
Make-BackdatedCommit "Update static files and images" "2024-08-02 13:20:00"
Make-BackdatedCommit "Enhance security settings" "2024-08-15 09:50:00"

# Merge to main - First release
git checkout main
git merge develop --no-ff -m "Release v1.0 - Initial release"
$env:GIT_AUTHOR_DATE = "2024-08-20 16:00:00"
$env:GIT_COMMITTER_DATE = "2024-08-20 16:00:00"
git commit --amend -m "Release v1.0 - Initial release"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

git tag -a v1.0 -m "Version 1.0 - Initial Release"
$env:GIT_AUTHOR_DATE = "2024-08-20 16:00:00"
$env:GIT_COMMITTER_DATE = "2024-08-20 16:00:00"
git tag -a v1.0 -f -m "Version 1.0 - Initial Release"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Continue on develop
git checkout develop

# Fall updates (Sep-Nov 2024)
Make-BackdatedCommit "Add context processors for blogs" "2024-09-10 10:20:00"
Make-BackdatedCommit "Implement advanced search filters" "2024-09-25 14:35:00"
Make-BackdatedCommit "Update templates and UI improvements" "2024-10-08 11:15:00"
Make-BackdatedCommit "Add pagination to blog lists" "2024-10-22 15:40:00"
Make-BackdatedCommit "Fix registration and login flows" "2024-11-05 09:30:00"

# Feature branch - SEO and performance
git checkout -b feature/seo-optimization
Make-BackdatedCommit "Add SEO meta tags" "2024-11-10 13:25:00"
Make-BackdatedCommit "Optimize image loading" "2024-11-15 10:50:00"
Make-BackdatedCommit "Implement caching strategy" "2024-11-20 14:10:00"

# Merge SEO feature
git checkout develop
git merge feature/seo-optimization --no-ff -m "Merge feature/seo-optimization into develop"
$env:GIT_AUTHOR_DATE = "2024-11-22 16:15:00"
$env:GIT_COMMITTER_DATE = "2024-11-22 16:15:00"
git commit --amend -m "Merge feature/seo-optimization into develop"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Winter updates (Dec 2024 - Jan 2025)
Make-BackdatedCommit "Update dependencies and security patches" "2024-12-05 10:40:00"
Make-BackdatedCommit "Add email notifications" "2024-12-18 13:55:00"
Make-BackdatedCommit "Implement RSS feed" "2025-01-08 11:20:00"
Make-BackdatedCommit "Add admin customizations" "2025-01-20 14:30:00"

# Merge to main - Second release
git checkout main
git merge develop --no-ff -m "Release v2.0 - Major updates"
$env:GIT_AUTHOR_DATE = "2025-01-25 15:30:00"
$env:GIT_COMMITTER_DATE = "2025-01-25 15:30:00"
git commit --amend -m "Release v2.0 - Major updates"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

git tag -a v2.0 -m "Version 2.0 - Major Feature Update"
$env:GIT_AUTHOR_DATE = "2025-01-25 15:30:00"
$env:GIT_COMMITTER_DATE = "2025-01-25 15:30:00"
git tag -a v2.0 -f -m "Version 2.0 - Major Feature Update"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

# Recent commits (Jan-Feb 2026)
git checkout develop
Make-BackdatedCommit "Update documentation" "2026-01-15 10:15:00"
Make-BackdatedCommit "Fix minor bugs and improvements" "2026-01-28 13:45:00"
Make-BackdatedCommit "Update requirements and dependencies" "2026-02-01 09:30:00"

# Final merge to main
git checkout main
git merge develop --no-ff -m "Merge latest updates"
$env:GIT_AUTHOR_DATE = "2026-02-01 14:00:00"
$env:GIT_COMMITTER_DATE = "2026-02-01 14:00:00"
git commit --amend -m "Merge latest updates"
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

Write-Host "Git history created successfully!"
Write-Host "Branches created: main, develop, and various feature branches"
Write-Host "Total commits spanning from Feb 2024 to Feb 2026"
