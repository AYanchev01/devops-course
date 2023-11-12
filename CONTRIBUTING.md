# Contributing to Our Python Project

## Branching Strategy

### Main Branches

- `main`: This branch reflects the production-ready state of the code.
- `develop`: This is the primary development branch where all the feature branches merge.

### Supporting Branches

- **Feature Branches**: Branch off from `develop` and merge back into `develop`.
  - Naming convention: `feature/<feature-name>`
- **Hotfix Branches**: Branch from `main` for urgent bug fixes and merge back into both `main` and `develop`.
  - Naming convention: `hotfix/<hotfix-name>`
- **Release Branches**: Used to prepare a new production release. Branch from `develop` and merge into both `main` and `develop`.
  - Naming convention: `release/<version-number>`

## Workflow Steps

1. Fork the repository.
2. Create a new branch according to the branching strategy above.
3. Make your changes.
4. Write or adapt tests as needed.
5. Ensure your code adheres to the coding standards (run linters, check style).
6. Push your changes to your fork.
7. Create a pull request to the `develop` branch.
8. The pull request will be reviewed and, if approved, merged into the project.

## Coding Standards

Follow the PEP 8 style guide for Python code. Ensure to document your code where necessary.

Thank you for contributing to our project!
