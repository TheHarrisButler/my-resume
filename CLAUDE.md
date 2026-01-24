# CLAUDE.md - Typst Resume Project Guide

This document provides comprehensive guidance for AI assistants (like Claude) working with this Typst-based resume project.

## Project Overview

This is a personal resume project built using **Typst**, a modern markup language for creating documents. The project features:

- **Custom template system** with reusable components
- **Semantic versioning** automated through commit messages
- **CI/CD pipeline** that compiles, versions, and publishes to AWS S3
- **Two-file architecture**: Separate template (`package.typ`) from content (`resume.typ`)

### Technology Stack

- **Typst v0.14.0** - Document markup language and compiler
- **GitHub Actions** - CI/CD automation
- **AWS S3** - PDF artifact storage
- **Roboto Font** - Typography (installed via fontist in CI)

### Key Characteristics

- **Cloud-Native**: All builds happen in GitHub Actions, outputs stored in S3
- **Fully Automated**: Commit → Compile → Version → Publish
- **Template-Based**: Reusable CV template system separate from content
- **Professional Structure**: Clean separation of concerns

## Project Structure

```
/Users/harris.butler/Documents/personal/my-resume/
├── .github/
│   ├── scripts/
│   │   └── apply-version.sh         # Applies version to PDF filenames
│   └── workflows/
│       ├── check-title.yml          # Validates PR titles (semantic commits)
│       └── publish.yml              # Main CI/CD: compile → version → publish
├── resume/
│   ├── package.typ                  # Template system & reusable components
│   └── resume.typ                   # Actual resume content
├── config.json                      # Version configuration (single source of truth)
├── .gitignore
└── README.md
```

### File Descriptions

| File | Purpose | When to Modify |
|------|---------|----------------|
| `resume/package.typ` | CV template system with theme, layout components (`cv`, `section`, `entry` functions) | Changing styles, colors, layout, or adding new template components |
| `resume/resume.typ` | Resume content (experience, projects, skills, education) | Updating resume content, adding jobs, projects, skills |
| `config.json` | Current version number (e.g., `{"version": "2.1.0"}`) | Rarely - usually auto-updated by CI/CD |
| `.github/workflows/publish.yml` | CI/CD pipeline for compilation and publishing | Modifying build process, Typst version, S3 publishing |
| `.github/workflows/check-title.yml` | PR title validation (semantic commits) | Changing PR validation rules |
| `.github/scripts/apply-version.sh` | Bash script to create versioned PDF copies | Changing filename patterns or version application logic |

## Local Development Setup

To work on the resume locally and compile it on your machine:

### 1. Install Typst

**macOS:**
```bash
brew install typst
```

**Linux:**
```bash
# Arch Linux
sudo pacman -S typst

# Ubuntu/Debian (via cargo)
cargo install --git https://github.com/typst/typst --tag v0.14.0

# Or download binary from https://github.com/typst/typst/releases
```

**Windows:**
```powershell
# Using Chocolatey
choco install typst

# Or download binary from https://github.com/typst/typst/releases
```

### 2. Install Roboto Font

The template uses Roboto as the default font. Install it on your system:

**macOS:**
```bash
brew install font-roboto
# Or download from Google Fonts and install via Font Book
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install fonts-roboto

# Arch Linux
sudo pacman -S ttf-roboto
```

**Windows:**
- Download from [Google Fonts](https://fonts.google.com/specimen/Roboto)
- Extract and install .ttf files via right-click → Install

### 3. Compile the Resume

From the project root:

```bash
# Compile once
typst compile resume/resume.typ resume.pdf

# Watch mode (auto-recompile on changes)
typst watch resume/resume.typ resume.pdf
```

The compiled PDF will be saved as `resume.pdf` in the project root.

### 4. Font Path Troubleshooting

If Typst can't find Roboto, specify the font path:

```bash
typst compile resume/resume.typ resume.pdf --font-path /path/to/fonts
```

Common font paths:
- macOS: `/System/Library/Fonts`, `/Library/Fonts`
- Linux: `/usr/share/fonts`, `~/.local/share/fonts`
- Windows: `C:\Windows\Fonts`

## Understanding the Template System (package.typ)

The `resume/package.typ` file contains a complete, reusable CV template system with three main components:

### Theme System

The `default-theme` object defines all styling and layout properties:

```typst
#let default-theme = (
  // Colors
  accent: black,                           // Accent color for headers
  body: rgb(222).lighten(50%),            // Body text color

  // Typography
  font-family: "Roboto",
  font-size: 11pt,

  // Layout & Spacing
  margin-top: 0.5in,
  margin-bottom: 0.3in,
  margin-left: 0.25in,
  margin-right: 0.25in,
  main-width: 5fr,                        // Main content width ratio
  aside-width: 3fr,                       // Aside panel width ratio
  gutter: 17pt,                           // Space between columns
  left-gutter: 55pt,                      // Left margin for entry dates

  // Vertical spacing
  block-above: 7pt,
  block-below: 10pt,
)
```

### Core Template Functions

#### `cv()` - Master Template Function

Creates the complete CV layout with header, three-column body, and footer:

```typst
#cv(
  title: "Your Name",           // Main header text
  subtitle: "Your Title",       // Subheader text
  header: [                     // Top section (contact info, etc.)
    // Content here
  ],
  main: [                       // Main content panel (right side)
    // Experience, projects, etc.
  ],
  aside: [                      // Aside panel (left side)
    // Skills, education, etc.
  ],
  footer: none,                 // Optional footer
  theme: default-theme,         // Theme configuration
)
```

**Layout**: Creates a three-column grid: `[left-gutter] [main-content] [aside-panel]`

#### `section()` - Section Headers

Creates titled sections with decorative accent bars:

```typst
#section(
  name: "Professional Experience",  // Section title
  theme: default-theme,
)
```

#### `entry()` - Content Entries

Flexible component for jobs, projects, education, etc.:

```typst
#entry(
  left: "2020 - Present",          // Left gutter (dates, labels)
  title: "Senior Software Engineer", // Main title (left-aligned)
  right: "Company Name",           // Right content (company, location)
  body: [                          // Description/details
    - Bullet point 1
    - Bullet point 2
  ],
  theme: default-theme,
)
```

### Customization

To customize the theme, modify the `default-theme` object in `package.typ`:

```typst
// Example: Change accent color to blue
#let default-theme = (
  accent: rgb(0, 102, 204),  // Blue accent
  // ... rest of theme
)
```

You can also pass custom theme properties to individual components:

```typst
#section(
  name: "Projects",
  theme: (..default-theme, accent: red),  // Override just the accent
)
```

## Resume Content (resume.typ)

The `resume/resume.typ` file contains the actual resume content and uses the template system:

### Structure

```typst
// Import template functions
#import "package.typ": *

// Main CV layout
#cv(
  title: "Harris Butler",
  subtitle: "Senior Software Engineer",

  header: [
    // Contact information
  ],

  aside: [
    // Left panel: Contact, Skills, Education, Awards
    #section(name: "Technology Stack")
    // Skills listed here

    #section(name: "Education")
    // Education entries here

    #section(name: "Awards")
    // Awards listed here
  ],

  main: [
    // Right panel: Experience and Projects
    #section(name: "Professional Experience")
    // Job entries using #entry()

    #section(name: "Projects")
    // Project entries using #entry()
  ],
)
```

### Two-Panel Layout

- **Aside Panel (Left)**: Narrower column (3fr) for supplementary information
  - Contact details
  - Technology Stack (skills)
  - Education
  - Awards

- **Main Panel (Right)**: Wider column (5fr) for primary content
  - Professional Experience (with dates, titles, companies, descriptions)
  - Projects (with titles, descriptions, links)

## Common Tasks

### 1. Adding a New Job

**Location**: `resume/resume.typ`, inside `main: [ ... ]`, within the "Professional Experience" section

**Template**:
```typst
#section(name: "Professional Experience")

#entry(
  left: "Month Year - Present",        // Or "Month Year - Month Year"
  title: "Your Job Title",
  right: "Company Name",
  body: [
    - Describe your key achievement or responsibility
    - Another important accomplishment (use bullet points)
    - Technical details, technologies used, or impact metrics
  ],
)

// Add more #entry() blocks for additional jobs
```

**Example**:
```typst
#entry(
  left: "Jan 2023 - Present",
  title: "Staff Software Engineer",
  right: "Tech Corp",
  body: [
    - Led migration of monolithic application to microservices architecture, reducing deployment time by 60%
    - Implemented GraphQL API serving 10M+ requests daily
    - Mentored team of 5 junior engineers
  ],
)
```

**Tips**:
- Jobs are listed chronologically (most recent first)
- Use present tense for current jobs, past tense for previous roles
- Keep descriptions concise and achievement-focused

### 2. Adding a Project

**Location**: `resume/resume.typ`, inside `main: [ ... ]`, within the "Projects" section

**Template**:
```typst
#section(name: "Projects")

#entry(
  title: "Project Name",
  right: link("https://project-url.com"),  // Optional link
  body: [
    Brief description of the project, what it does, and technologies used.
  ],
)
```

**Example**:
```typst
#entry(
  title: "DevTools Dashboard",
  right: link("https://github.com/username/devtools"),
  body: [
    Open-source developer productivity dashboard built with React, TypeScript, and Go.
    Features real-time metrics, custom integrations, and plugin system. 500+ GitHub stars.
  ],
)
```

**Tips**:
- Omit `left:` parameter (no dates needed for projects)
- Include links if publicly available
- Mention technologies, impact, or recognition (GitHub stars, users, etc.)

### 3. Updating Technology Stack

**Location**: `resume/resume.typ`, inside `aside: [ ... ]`, within the "Technology Stack" section

**Current Format**:
The skills are organized in a definition list by category:

```typst
#section(name: "Technology Stack")

/ Languages: TypeScript, Go, Python, Java, C#, Rust
/ Web: React, Node.js, Express, GraphQL, REST APIs
/ Infrastructure: AWS, Docker, Kubernetes, Terraform
/ Databases: PostgreSQL, MongoDB, Redis
/ Tools: Git, CI/CD, Linux, Vim
```

**To Add a Skill**:
Simply add it to the appropriate category:

```typst
/ Languages: TypeScript, Go, Python, Java, C#, Rust, Swift  // Added Swift
```

**To Add a Category**:
```typst
/ Mobile: React Native, Swift, Kotlin
```

**Tips**:
- Keep categories logical and concise
- Order skills by proficiency or relevance (most important first)
- Avoid listing every framework/tool - focus on relevant ones

### 4. Modifying Contact Information

**Location**: `resume/resume.typ`, inside the `cv()` function's `header` parameter

**Current Structure**:
```typst
#cv(
  title: "Harris Butler",
  subtitle: "Senior Software Engineer",
  header: [
    #grid(
      columns: (1fr, 1fr),
      [#link("mailto:email@example.com")],
      [#link("https://github.com/username")],
    )
  ],
  // ...
)
```

**To Update**:
- Change `title`: Your full name
- Change `subtitle`: Your professional title/tagline
- Modify `header` grid: Contact links (email, GitHub, LinkedIn, website, etc.)

**Example**:
```typst
header: [
  #grid(
    columns: (1fr, 1fr, 1fr),  // Three columns
    [#link("mailto:new@email.com")],
    [#link("https://github.com/newusername")],
    [#link("https://linkedin.com/in/yourprofile")],
  )
],
```

### 5. Changing Theme/Colors

**Location**: `resume/package.typ`, modify the `default-theme` object

**Change Accent Color**:
```typst
#let default-theme = (
  accent: rgb(0, 102, 204),  // Change from black to blue
  // ... rest unchanged
)
```

**Change Font**:
```typst
#let default-theme = (
  font-family: "Inter",      // Change from Roboto to Inter
  // ... rest unchanged
)
```

**Change Font Size**:
```typst
#let default-theme = (
  font-size: 10pt,           // Change from 11pt to 10pt
  // ... rest unchanged
)
```

**Change Layout Proportions**:
```typst
#let default-theme = (
  main-width: 4fr,           // Narrower main content
  aside-width: 4fr,          // Wider aside panel
  // ... rest unchanged
)
```

**Tips**:
- After changing fonts, ensure the new font is installed locally and in CI
- Test color changes for readability (especially for printing)
- Adjust spacing if changing font sizes significantly

### 6. Updating Version Manually

**Location**: `config.json`

**Current Format**:
```json
{
  "version": "2.1.0"
}
```

**To Update**:
Simply edit the version number following [semantic versioning](https://semver.org/):

- **Major** (X.0.0): Breaking changes or major overhaul
- **Minor** (x.Y.0): New content or features (new job, project)
- **Patch** (x.y.Z): Small fixes or updates

**Note**: Version updates are usually automated by CI/CD based on commit messages. Manual updates are rarely needed.

## CI/CD Pipeline

### Publish Workflow (`.github/workflows/publish.yml`)

**Trigger**: Every push to `main` branch

**Pipeline Steps**:

1. **GitHub App Token Creation**
   - Creates authentication token for automated commits
   - Allows CI to commit version updates back to the repo

2. **Repository Checkout**
   - Checks out code with full git history
   - Required for version management

3. **Font Installation**
   - Uses `fontist/setup-fontist@v2` to set up font manager
   - Installs Roboto font family
   - Fonts stored in `/home/runner/.fontist/fonts`

4. **Typst Compilation**
   - Sets up Typst v0.14.0 via `typst-community/setup-typst@v4`
   - Compiles: `typst compile resume/resume.typ dist/resume.pdf --font-path /home/runner/.fontist/fonts`
   - Output saved to `dist/resume.pdf`

5. **Version Management**
   - Reads current version from `config.json` (e.g., "2.1.0")
   - Parses commit message to determine version bump:
     - `feat!` in commit → **Major** version bump (2.1.0 → 3.0.0)
     - `feat` in commit → **Minor** version bump (2.1.0 → 2.2.0)
     - `fix` in commit → **Patch** version bump (2.1.0 → 2.1.1)
   - Updates `config.json` with new version

6. **Auto-Commit New Version**
   - Commits updated `config.json` back to main
   - Commit message: `"released resume version X.Y.Z [skip ci]"`
   - `[skip ci]` prevents infinite build loops

7. **Version Application**
   - Runs `.github/scripts/apply-version.sh`
   - Creates two PDF copies:
     - `harris-resume.pdf` (latest, unversioned)
     - `harris-resumevX.Y.Z.pdf` (archived, versioned)

8. **S3 Publishing**
   - Assumes IAM role for S3 access
   - Uploads artifacts to AWS S3 bucket
   - Both latest and versioned PDFs are published
   - Command: `aws s3 sync dist/ s3://bucket-name/resume/`

### Check Title Workflow (`.github/workflows/check-title.yml`)

**Trigger**: Pull request opened/edited

**Purpose**: Validates PR titles follow semantic commit conventions

**Validation**:
- Uses `amannn/action-semantic-pull-request@v5`
- Requires PR title to start with:
  - `feat` - New feature or content addition
  - `fix` - Bug fix or small correction
- Ensures proper versioning when PR is merged

**Example Valid PR Titles**:
- `feat: Add new job at Tech Corp`
- `fix: Correct typo in education section`
- `feat!: Complete resume redesign` (major change)

### Semantic Versioning Strategy

| Commit Message | Version Bump | Example |
|----------------|--------------|---------|
| `feat!: Major redesign` | Major (X.0.0) | 2.1.0 → 3.0.0 |
| `feat: Add new job` | Minor (x.Y.0) | 2.1.0 → 2.2.0 |
| `fix: Correct typo` | Patch (x.y.Z) | 2.1.0 → 2.1.1 |

**Single Source of Truth**: `config.json`

**Output Artifacts**:
- `harris-resume.pdf` - Latest version (always overwrites)
- `harris-resumevX.Y.Z.pdf` - Archived versions (e.g., `harris-resumev2.1.0.pdf`)

## Best Practices

### Testing

- **Always compile locally** before pushing to ensure no syntax errors
- Use `typst watch` during development for instant feedback
- Check PDF output for layout issues, especially after template changes

### Commit Conventions

- Follow semantic commit format: `type: description`
- Use `feat:` for content additions (new jobs, projects, skills)
- Use `fix:` for corrections or small updates
- Use `feat!:` sparingly for major redesigns or breaking template changes
- Keep commit messages descriptive but concise

### Code Organization

- **Separate template from content**: Keep `package.typ` generic and reusable
- **Template changes**: Modify `package.typ` only when changing styles, layout, or adding new components
- **Content changes**: Modify `resume.typ` for resume updates
- **Consider separate commits** for template vs. content changes
- **Document new components**: If adding new template functions, add comments explaining parameters

### Template Reusability

- Keep `package.typ` generic enough to use for different resumes
- Avoid hardcoding personal information in the template
- Use theme parameters for customization rather than hardcoded values
- Consider making `package.typ` a standalone Typst package if used across multiple projects

## Quick Reference

### File Overview

| File Path | Purpose | Modify When... |
|-----------|---------|----------------|
| `resume/resume.typ` | Resume content | Updating jobs, projects, skills, contact info |
| `resume/package.typ` | Template system | Changing colors, fonts, layout, adding components |
| `config.json` | Version number | Manual version override (rare) |
| `.github/workflows/publish.yml` | CI/CD pipeline | Changing build process or publishing logic |
| `.github/workflows/check-title.yml` | PR validation | Modifying semantic commit rules |
| `.github/scripts/apply-version.sh` | PDF versioning | Changing filename patterns |

### Common Commands

```bash
# Compile once
typst compile resume/resume.typ resume.pdf

# Watch mode (auto-recompile)
typst watch resume/resume.typ resume.pdf

# Compile with custom font path
typst compile resume/resume.typ resume.pdf --font-path /path/to/fonts

# Check Typst version
typst --version

# View Typst help
typst help
```

### Useful File Paths

- **Main resume source**: `resume/resume.typ:1`
- **Template system**: `resume/package.typ:1`
- **Theme configuration**: `resume/package.typ:3` (look for `default-theme`)
- **Version config**: `config.json:2`
- **CI/CD workflow**: `.github/workflows/publish.yml:1`

### Key Template Components

```typst
// Import all template functions
#import "package.typ": *

// Main CV structure
#cv(title: "", subtitle: "", header: [], aside: [], main: [])

// Section header with accent bar
#section(name: "Section Name")

// Entry (job, project, etc.)
#entry(left: "", title: "", right: "", body: [])
```

---

**Last Updated**: 2026-01-24
**Typst Version**: 0.14.0
**Current Resume Version**: 2.1.0
