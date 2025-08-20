# Amazon Q Developer Workshop Workflow

This workflow demonstrates a complete project lifecycle using Amazon Q Developer, from requirements analysis to deployment.

## Prerequisites
- [ ] Amazon Q Developer is configured and active
- [ ] Git repository is initialized
- [ ] PRD document exists in root directory

## Workflow Steps

| Step | Phase | Task | Instruction | Expected Output | Validation |
|------|-------|------|--------|-----------------|------------|
| 1 | Setup | Initialize Project Structure | `git init && mkdir -p docs && mv prd.md docs/` | Directory structure created | ✅ Folders exist, PRD copied |
| 2 | Analysis | Generate User Stories | `@project-user-stories @prd.md` | `docs/user-stories.md` | ✅ Stories follow standard format with acceptance criteria |
| 3 | Analysis | Explore Architecture Options | `@project-architecture-options @prd.md` | `selected architecture document` | ✅ At least 3 architecture options with pros/cons |
| 4 | Analysis | Save Architecture Document | "Save the architecture document to @docs" | Architecture saved to docs/ | ✅ Architecture document exists in docs directory |
| 5 | Analysis | Review Requirements & Architecture | `@project-review @docs/ "Don't create a review document just return findings"` | Review findings and recommendations | ✅ All gaps and conflicts identified |
| 6 | Planning | Establish Project Rules | `@project-rules @docs` | `.amazonq/rules/rules.md` | ✅ Coding standards and conventions defined |
| 7 | Planning | Create Development Plans | `@project-plans @docs` | `docs/features` directory | ✅ Features numbered, prioritized, dependencies clear |
| 8 | Development | Execute Feature Development | `@dev @[feature-file].md` | Working feature with tests | ✅ All acceptance criteria met, tests pass |
| 9 | Development | Final Code Review | `@project-code-review` | Code review feedback | ✅ Code review feedback |

---
*This workflow is designed to be completed in approximately 30 minutes for the parking garage API example.*
