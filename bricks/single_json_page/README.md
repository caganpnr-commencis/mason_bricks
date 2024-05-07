# single_json_page

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a single WF or a BFF page.

## Variables ✨

| Variable             | Description                                  | Default      | Type     |
| -------------------- | -------------------------------------------- | ------------ | -------- |
| `page_type`          | Name of the page type                        | wf           | `enum`   |
| -------------------- | ------------------------------               | ------------ | -------- |
| `step_number`        | Step number to be shown                      | 0            | `number` |
| -------------------- | ------------------------------               | ------------ | -------- |
| `page_template_name` | Options to generate different page templates | Default      | `enum`   |
| -------------------- | ------------------------------               | ------------ | -------- |
| `page_name`          | Name of the page to be created               | test_feature | `string` |

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.

```sh
brew tap felangel/mason
brew install mason
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add single_json_page to your library.

```sh
mason add -g single_json_page --path bricks/single_json_page
```

Generate your brick

```sh
mason make single_json_page
```

## Example Output 📦

```
📜step_1_wf_test_feature_input_page_response.json

```
