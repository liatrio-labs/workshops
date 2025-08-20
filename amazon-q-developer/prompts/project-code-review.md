# Code Review Workflow

## Objective
Perform comprehensive code review to ensure quality, security, and alignment with project requirements.

## Prerequisites
- Code is ready for review (feature complete, no merge conflicts)
- All automated CI checks have passed
- Project documentation is available

## Review Process

### 1. Context Analysis
- Review `docs/` directory for project requirements
- Understand architecture decisions and constraints
- Identify the scope of changes being reviewed

### 2. Pre-Review Validation
- ✅ Branch/PR is ready for review
- ✅ All CI checks pass
- ✅ No merge conflicts exist
- ✅ Feature appears complete

### 3. Systematic Code Examination

#### Code Quality
- **Standards Compliance:** Check adherence to coding standards and style guidelines
- **Business Logic:** Verify implementation matches requirements
- **Architecture:** Ensure code follows established patterns

#### Testing & Coverage
- **Test Quality:** Assess test coverage and effectiveness
- **Edge Cases:** Verify handling of boundary conditions
- **Test Organization:** Check test structure and maintainability

#### Security & Performance
- **Vulnerabilities:** Look for security issues and potential exploits
- **Performance:** Evaluate efficiency and resource usage
- **Error Handling:** Review exception handling and logging

### 4. Documentation Review
- **Code Comments:** Ensure complex logic is well-documented
- **API Documentation:** Verify public interfaces are documented
- **Architecture Alignment:** Check consistency with design decisions

### 5. Feedback Documentation
For each finding:
- **Issue Description:** Clear explanation of the problem
- **Impact Assessment:** Severity and potential consequences
- **Specific Suggestions:** Actionable improvement recommendations
- **Code Examples:** Show preferred implementation when helpful

### 6. Final Validation
- ✅ All review criteria addressed
- ✅ Feedback is constructive and actionable
- ✅ Security concerns documented
- ✅ Performance implications noted
- ✅ Documentation requirements met

## Review Checklist
- [ ] Code follows project standards
- [ ] Business requirements are met
- [ ] Tests are comprehensive and pass
- [ ] Security vulnerabilities addressed
- [ ] Performance is acceptable
- [ ] Error handling is robust
- [ ] Documentation is complete
- [ ] No code smells or technical debt

## Output Format
Create review comments with:
- **File/Line Reference**
- **Issue Category** (Security, Performance, Style, Logic)
- **Description** of the issue
- **Recommendation** for improvement
- **Priority** (Critical, High, Medium, Low)

