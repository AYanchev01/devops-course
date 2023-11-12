# Contributing to Our Python Project

## Branching Strategy

### Main Branches

- `main`: This branch reflects the production-ready state of the code.
- `develop`: Primary development branch where feature branches merge.

### Supporting Branches

- **Feature Branches**: Branch from `develop`, merge back into `develop`.
  - Naming: `feature/<feature-name>`
- **Hotfix Branches**: Branch from `main` for urgent fixes, merge back
  into both `main` and `develop`.
  - Naming: `hotfix/<hotfix-name>`
- **Release Branches**: Prepare new releases. Branch from `develop`,
  merge into both `main` and `develop`.
  - Naming: `release/<version-number>`

## Workflow Steps

1. Fork the repository.
2. Create a new branch as per the strategy above.
3. Make your changes.
4. Write or adapt tests as needed.
5. Adhere to coding standards (run linters, check style).
6. Push changes to your fork.
7. Create a pull request to the `develop` branch.
8. Pull requests are reviewed and, if approved, merged.

## Coding Standards

Follow the PEP 8 style guide for Python code. Document your code as needed.

Thank you for contributing to our project!
