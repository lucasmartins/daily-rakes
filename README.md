# Daily Rakes

This is just some Rake tasks I want shared between multiple projects on the go.

# Branch

This branch creator will use this pattern for branch naming:
```ruby
/s(\d+)-(.*)/ # s10-my-branch
```
Where the `s` stands for Week (in pt_br) and `(\d+)` is generated from the actual year's week number.

**You're encouraged to change the `s` to `w`, so it represents Week correctly.**

## Usage

```bash
rake branch:new
Give it a name (leave it empty for autogen):
$ some-stuff
Switched to a new branch 's10-somestuff'
Total 0 (delta 0), reused 0 (delta 0)
To git@github.com:lucasmartins/daily-rakes.git
 * [new branch]      s10-some-stuff -> s10-some-stuff
```

For a generated name, leave it blank. Good for when you're in a hurry - or just don't want to spend time thinking about a name right now.
```bash
rake branch:new
Give it a name (leave it empty for autogen):
$
Switched to a new branch 's10-violet-arizona-89'
Total 0 (delta 0), reused 0 (delta 0)
To git@github.com:lucasmartins/daily-rakes.git
 * [new branch]      s10-violet-arizona-89 -> s10-violet-arizona-89
```

## Install
Fork this repository, then clone your own fork inside any rake tasks folder you already have in your project:
```
$ cd my-rails-app
$ git clone git@github.com:[user]/daily-rakes.git lib/tasks/day2day
$ rake branch:new
```

