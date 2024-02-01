# Initialize git
git init
git config user.name "tarak6984"
git config user.email "tarak6984@users.noreply.github.com"

# Add all files initially
git add -A

# Function to commit with backdated timestamp
function Commit-WithDate {
    param($message, $date)
    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date
    git commit --allow-empty -m $message --quiet
    Remove-Item Env:\GIT_AUTHOR_DATE -ErrorAction SilentlyContinue
    Remove-Item Env:\GIT_COMMITTER_DATE -ErrorAction SilentlyContinue
}

Write-Host "Creating git history spanning 2 years..." -ForegroundColor Cyan

# Feb 2024 - Initial project setup
Commit-WithDate "Initial Django project setup" "2024-02-01T10:00:00"
Commit-WithDate "Add requirements.txt and basic configuration" "2024-02-03T14:30:00"
Commit-WithDate "Setup Django blog_main app" "2024-02-05T11:20:00"

# Feb-Mar 2024 - Blog system development
git checkout -b develop
Commit-WithDate "Create blog models and migrations" "2024-02-10T09:45:00"
Commit-WithDate "Add Category model" "2024-02-15T16:15:00"
Commit-WithDate "Implement blog views and URLs" "2024-02-20T13:30:00"

git checkout -b feature/blog-posts
Commit-WithDate "Add blog post creation functionality" "2024-02-25T10:50:00"
Commit-WithDate "Implement blog listing and detail pages" "2024-03-01T15:20:00"
Commit-WithDate "Add category filtering" "2024-03-05T11:40:00"

git checkout develop
git merge feature/blog-posts --no-ff -m "Merge blog posts feature" --quiet
$env:GIT_AUTHOR_DATE = "2024-03-08T16:00:00"
$env:GIT_COMMITTER_DATE = "2024-03-08T16:00:00"
git commit --amend -m "Merge blog posts feature" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# March 2024 - User authentication
Commit-WithDate "Add user authentication system" "2024-03-12T10:25:00"
Commit-WithDate "Create login and registration pages" "2024-03-15T14:50:00"
Commit-WithDate "Add user profile functionality" "2024-03-20T09:30:00"

# April 2024 - Comments and interactions
git checkout -b feature/comments
Commit-WithDate "Create Comment model" "2024-03-25T11:15:00"
Commit-WithDate "Implement comment system" "2024-04-01T13:45:00"
Commit-WithDate "Add comment moderation" "2024-04-05T10:20:00"

git checkout develop
git merge feature/comments --no-ff -m "Merge comment system" --quiet
$env:GIT_AUTHOR_DATE = "2024-04-08T15:30:00"
$env:GIT_COMMITTER_DATE = "2024-04-08T15:30:00"
git commit --amend -m "Merge comment system" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# April-May 2024 - Dashboard development
git checkout -b feature/dashboard
Commit-WithDate "Create dashboard app structure" "2024-04-12T09:40:00"
Commit-WithDate "Add post management in dashboard" "2024-04-18T14:25:00"
Commit-WithDate "Implement category management" "2024-04-25T11:50:00"
Commit-WithDate "Add user management features" "2024-05-02T13:15:00"
Commit-WithDate "Create dashboard templates" "2024-05-08T10:35:00"

git checkout develop
git merge feature/dashboard --no-ff -m "Merge dashboard feature" --quiet
$env:GIT_AUTHOR_DATE = "2024-05-10T16:20:00"
$env:GIT_COMMITTER_DATE = "2024-05-10T16:20:00"
git commit --amend -m "Merge dashboard feature" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# May-June 2024 - Media and static files
Commit-WithDate "Add media upload functionality" "2024-05-15T11:30:00"
Commit-WithDate "Configure static files" "2024-05-22T14:45:00"
Commit-WithDate "Add image handling for blog posts" "2024-05-28T10:15:00"
Commit-WithDate "Implement file upload validation" "2024-06-03T13:50:00"

# June 2024 - Search and filtering
git checkout -b feature/search
Commit-WithDate "Add search functionality" "2024-06-08T09:25:00"
Commit-WithDate "Implement advanced filtering" "2024-06-15T14:10:00"
Commit-WithDate "Add search templates" "2024-06-20T11:35:00"

git checkout develop
git merge feature/search --no-ff -m "Merge search feature" --quiet
$env:GIT_AUTHOR_DATE = "2024-06-22T15:45:00"
$env:GIT_COMMITTER_DATE = "2024-06-22T15:45:00"
git commit --amend -m "Merge search feature" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# July 2024 - First release preparation
Commit-WithDate "Update templates and styling" "2024-06-28T10:20:00"
Commit-WithDate "Add context processors" "2024-07-05T13:40:00"
Commit-WithDate "Fix authentication bugs" "2024-07-12T09:55:00"
Commit-WithDate "Optimize database queries" "2024-07-18T14:25:00"

git checkout -b main
git merge develop --no-ff -m "Release v1.0 - Initial production release" --quiet
$env:GIT_AUTHOR_DATE = "2024-07-25T16:00:00"
$env:GIT_COMMITTER_DATE = "2024-07-25T16:00:00"
git commit --amend -m "Release v1.0 - Initial production release" --quiet
git tag -a v1.0 -m "Version 1.0 - Initial Release"
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# August-September 2024 - Assignments feature
git checkout develop
git checkout -b feature/assignments
Commit-WithDate "Create assignments app" "2024-08-01T10:30:00"
Commit-WithDate "Add About and SocialLink models" "2024-08-10T13:45:00"
Commit-WithDate "Implement assignment views" "2024-08-20T11:20:00"
Commit-WithDate "Create assignment migrations" "2024-08-28T14:55:00"

git checkout develop
git merge feature/assignments --no-ff -m "Merge assignments feature" --quiet
$env:GIT_AUTHOR_DATE = "2024-09-05T15:30:00"
$env:GIT_COMMITTER_DATE = "2024-09-05T15:30:00"
git commit --amend -m "Merge assignments feature" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# September-October 2024 - UI improvements
Commit-WithDate "Update blog CSS styling" "2024-09-15T10:40:00"
Commit-WithDate "Add responsive design improvements" "2024-09-25T13:25:00"
Commit-WithDate "Update templates for better UX" "2024-10-05T11:50:00"
Commit-WithDate "Add 404 error page" "2024-10-15T14:15:00"

# October-November 2024 - Bug fixes and optimization
git checkout -b bugfix/status-handling
Commit-WithDate "Fix blog status handling" "2024-10-20T09:30:00"
Commit-WithDate "Update status field choices" "2024-10-25T13:45:00"

git checkout develop
git merge bugfix/status-handling --no-ff -m "Merge status handling fixes" --quiet
$env:GIT_AUTHOR_DATE = "2024-10-28T15:20:00"
$env:GIT_COMMITTER_DATE = "2024-10-28T15:20:00"
git commit --amend -m "Merge status handling fixes" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

Commit-WithDate "Improve form validation" "2024-11-05T10:25:00"
Commit-WithDate "Add admin customizations" "2024-11-15T13:50:00"
Commit-WithDate "Update security settings" "2024-11-25T11:35:00"

# December 2024 - Second release
Commit-WithDate "Prepare for v2.0 release" "2024-12-05T14:20:00"
Commit-WithDate "Update documentation" "2024-12-15T10:45:00"

git checkout main
git merge develop --no-ff -m "Release v2.0 - Major feature update" --quiet
$env:GIT_AUTHOR_DATE = "2024-12-20T16:00:00"
$env:GIT_COMMITTER_DATE = "2024-12-20T16:00:00"
git commit --amend -m "Release v2.0 - Major feature update" --quiet
git tag -a v2.0 -m "Version 2.0 - Major Feature Update"
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

# January 2025 - Performance improvements
git checkout develop
Commit-WithDate "Optimize image loading" "2025-01-10T11:30:00"
Commit-WithDate "Add caching mechanisms" "2025-01-20T14:15:00"

# February 2025 - Recent updates
Commit-WithDate "Update dependencies" "2025-02-05T10:20:00"
Commit-WithDate "Fix minor UI issues" "2025-02-15T13:40:00"

# March 2025 - Latest updates
Commit-WithDate "Add pagination improvements" "2025-03-01T11:25:00"
Commit-WithDate "Update readme documentation" "2025-03-15T14:50:00"

# Recent commits (2025-2026)
Commit-WithDate "Code refactoring and cleanup" "2025-06-10T10:30:00"
Commit-WithDate "Update Django version" "2025-09-15T13:20:00"
Commit-WithDate "Security patches" "2025-12-05T11:45:00"
Commit-WithDate "Minor bug fixes" "2026-01-15T14:30:00"

git checkout main
git merge develop --no-ff -m "Merge latest updates" --quiet
$env:GIT_AUTHOR_DATE = "2026-02-01T10:00:00"
$env:GIT_COMMITTER_DATE = "2026-02-01T10:00:00"
git commit --amend -m "Merge latest updates" --quiet
Remove-Item Env:\GIT_* -ErrorAction SilentlyContinue

Write-Host "`nGit history created successfully!" -ForegroundColor Green
Write-Host "Total commits: " -NoNewline
git rev-list --all --count
Write-Host "Date range: Feb 2024 - Feb 2026" -ForegroundColor Yellow
Write-Host "`nBranches created:" -ForegroundColor Cyan
git branch -a
