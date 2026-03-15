# Git config helper

Helper repo for git configuration (commit message template, etc.).

## Commit message template

Uses a [Conventional Commits](https://www.conventionalcommits.org/)-style template [.hsam_gitmessage](./.hsam_gitmessage) so your editor shows type hints when writing commit messages.

### Setup

```bash
curl -sSL https://github.com/h-s-a-m/gitconfig/main/install.sh | bash -s -- https://github.com/OWNER/REPO
```

This copies the template to `~/.gitmessage` and sets `commit.template` globally. The clone is removed after install.

### Unset

To stop using the template:

```bash
git config --global --unset commit.template
```
