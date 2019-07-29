# Pipe for custom CI

This Bitbucket Pipe sends an HTTP request to your custom CI system, letting it know the Bitbucket repository it has to clone, the current commit and branch (ref), so it can deploy the current commit to an environment.

## YAML definition

Add the following snippet to the script section of your `bitbucket-pipelines.yml` file:

```yaml
- pipe: paris/pipe-for-custom-ci:0.1.0
  variables:
    CI_SYSTEM_HOST: '<string>'
    CI_SYSTEM_TOKEN: '<string>'
    CI_JOB_ARGS: '<string>'
```

## Variables

Variable | Usage
------------ | -------------
`CI_SYSTEM_HOST` (\*) | The host of the custom CI system
`CI_SYSTEM_TOKEN` (\*) | The authentication token for the custom CI system
`CI_JOB_ARGS` | Arguments to pass to the CI job in JSON format

(\*) = required variable.

## Prerequisites

In order to use this Pipe, you need to:

1. Set up a running CI system
2. Obtain the authentication token from your CI system
3. Set the `CI_SYSTEM_HOST` and `CI_SYSTEM_TOKEN` variables in Bitbucket

## Examples

```
- pipe: paris/pipe-for-custom-ci:0.1.0
  variables:
    CI_SYSTEM_HOST: ${CI_SYSTEM_HOST}
    CI_SYSTEM_TOKEN: ${CI_SYSTEM_TOKEN}
    CI_JOB_ARGS: '{"env": "dev"}'
```

## License

This software is [MIT licensed](./LICENSE).


