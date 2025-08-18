# **Amazon Q Developer – Workshop Reference**

## Supported Environments

### Integrated Development Environments (IDEs)

Amazon Q Developer supports multiple IDEs, including:

- Visual Studio Code  
- JetBrains IDEs (IntelliJ, PyCharm, WebStorm, etc.)  
- Visual Studio 2022  
- Eclipse (Preview)

See the official [Amazon Q in IDEs Setup Guide](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/q-in-IDE-setup.html) for installation steps and up-to-date support details.

### AWS Apps & Websites

Amazon Q can also be used in:

- AWS Management Console  
- AWS Documentation site  
- AWS Console Mobile App  
- AWS main website

Reference: [Amazon Q in AWS Apps & Websites](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/q-on-aws.html)

### AWS Lambda Console Editor

Provides inline code suggestions directly in the Lambda console for supported runtimes.  
Reference: [Amazon Q in the Lambda Console](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/lambda-setup.html)

### Console-to-Code

Record actions in the AWS Console and generate corresponding CLI or IaC (CDK/CloudFormation).  
Reference: [Console-to-Code Documentation](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/console-to-code.html)

### Command Line Interface (CLI)

Enhances your terminal with autocomplete, shell command suggestions, and chat.  
Reference: [Amazon Q on the Command Line](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line.html)

### Third-Party Integrations

Integrates with:

- [GitHub (Preview)](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/amazon-q-for-github.html)  
- [GitLab Duo](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/gitlab-getting-started.html)

Reference: [Amazon Q Third-Party Integrations](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/third-party-integration.html)

---

## Tips & Tricks

### Providing Context

- Reference filenames or functions directly (e.g., *“Add logging to `orderService.js`”*).  
- Use comments as context anchors (e.g., `// TODO: optimize this loop`).  
- Highlight code in your IDE, then prompt Q for targeted suggestions.  
- Include high-level goals (e.g., *“Refactor this file for readability and add JSDoc comments”*).

### Prompting Strategies

- Break down large requests into smaller iterative prompts.  
- Ask for alternatives (e.g., *“show me two approaches”*).  
- Specify coding style or frameworks to match project conventions.  
- Request explanations of the rationale for answers/solutions to learn ***why***.  
- Save and reference local prompts @prompt

### Rules

- Use [per-project rules](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/third-party-context-project-rules.html) to steer Q Developer toward desired practices  
  - Use specific technologies or approaches like TDD  
  - Always run pre-commit checks  
  - Provide general guidance on the project

### IDE Features

- Highlight code and ask for inline explanations.  
- Use `/dev` for scoped feature development across multiple files.  
- Leverage chat context memory to avoid repeating prompts.  
- Ask Q to generate test data (e.g., JSON examples or realistic test cases).

### AWS-Specific Techniques

- Use Console-to-Code to translate console actions into CLI/CDK/IaC.  
- Ask Q to apply least-privilege IAM or add validation for security hardening.  
- Scaffold cross-service integrations (e.g., S3 → Lambda → DynamoDB).  
- Modernize code for newer runtimes or language versions.

### Debugging and Learning

- Paste stack traces and errors for cause analysis and suggested fixes.  
- Request refactorings into modern or idiomatic patterns.  
- Use learning mode prompts (e.g., *“teach me what’s happening step by step”*).

---

## Further Reading

- [Amazon Q Developer FAQ](https://aws.amazon.com/q/developer/faqs/)  
- [Amazon Q for AWS Builders](https://aws.amazon.com/q/)  
- [AWS re:Post – Amazon Q Discussions](https://repost.aws/tags/TA0dcbVDP4QgWbj0696CFBXA/amazon-q-developer)  
- [AWS Skill Builder – AI & Generative AI Learning](https://aws.amazon.com/ai/learn/)  
- [AWS Blog – Amazon Q Developer & Context Features](https://aws.amazon.com/blogs/devops/amazon-q-developers-new-context-features/)  
- [AWS Blog – Mastering Prompts with Amazon Q](https://aws.amazon.com/blogs/devops/mastering-amazon-q-developer-part-1-crafting-effective-prompts/)  
- [Well-Architected Labs](https://wellarchitectedlabs.com/)
