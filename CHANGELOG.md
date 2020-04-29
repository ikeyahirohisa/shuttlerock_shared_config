# Change log

## 0.2.28 (2020-04-29)

### Changed

- Updated ruby to 2.6.6


## 0.2.27 (2020-03-06)

### Changed
- Added task for adding PULL_REQUEST_TEMPLATE.md to project.
  Please run for create/update  .github/PULL_REQUEST_TEMPLATE.md:
  ```
    rake shuttlerock_shared_config:update_pull_request_template  # Update PULL_REQUEST_TEMPLATE.md
  ```
- Updated command shuttlerock_shared_config:update. Now command include update_pull_request_template

## 0.2.26 (2019-01-16)

### Changed
- Include a department for each problem cop in .rubocop.yml.
  Please run for update .rubocop.yml:
  ```
    rake shuttlerock_shared_config:update_rubocop      # Update .rubocop.yml
  ```

## 0.2.23 (2019-10-05)

### Changed
- Include a department for each problem cop in .rubocop.yml.
  Please run for update .rubocop.yml:
  ```
    rake shuttlerock_shared_config:update_rubocop      # Update .rubocop.yml
  ```

## 0.2.22 (2019-10-05)

### Changed

- Update dependencies
