# Feature Development Workflow

## Objective
Execute test-driven development for a specific feature using Amazon Q Developer.

## Prerequisites
- Feature file exists in `docs/features/` with clear acceptance criteria
- Project documentation is available in `docs/`
- Development environment is set up

## Process

### 1. Project Context Review
- Examine documentation in `docs/` directory
- Review product requirements document
- Understand project architecture and constraints

### 2. Feature Readiness Check
- Feature file has clear acceptance criteria
- Dependencies are satisfied or documented
- No blocking status exists

### 3. Branch Management
```bash
git checkout -b feature/[feature-name]
```

### 4. Update Feature Status
- Mark feature status as `in-progress` in feature file
- Commit status change with descriptive message

### 5. Test-Driven Development Cycle
- **Write Tests First:** Create test cases for each acceptance criterion
- **Run Tests:** Verify tests fail initially (red phase)
- **Implement Code:** Build minimal code to pass tests (green phase)
- **Refactor:** Improve code quality while keeping tests passing
- **Repeat:** Continue until all acceptance criteria are met

### 6. Quality Assurance
- Run full test suite non-interactively
- Execute linters and code quality checks
- Perform security scans
- Address any issues found

### 7. Code Review Process
- Self-review all changes
- Use `@prompts/project-code-review.md` for systematic review
- Document findings and address feedback

### 8. Feature Completion
- Update feature status to `dev-complete`
- Mark acceptance criteria as completed
- Update test requirements status
- Save development plan to `docs/features/[feature-number]-plan.md`

## Success Criteria
- All tests pass
- Code quality checks pass
- Security scans clear
- Feature meets all acceptance criteria
- Documentation is updated

## Error Handling
- **Test failures:** Review acceptance criteria and implementation
- **Quality issues:** Address linter/security findings before proceeding
- **Merge conflicts:** Resolve with main branch before completion
