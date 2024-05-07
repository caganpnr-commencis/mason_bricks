# wf_json_layers_complete

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates everything you need to get started to a new workflow page.

## Variables ✨

| Variable    | Description                    | Default      | Type     |
| ----------- | ------------------------------ | ------------ | -------- |
| `page_name` | Name of the page to be created | test_feature | `string` |

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.

```sh
brew tap felangel/mason
brew install mason
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add wf_json_layers_complete to your library.

```sh
mason add -g wf_json_layers_complete --path bricks/wf_json_layers_complete
```

Generate your brick

```sh
mason make wf_json_layers_complete
```

## Example Output 📦

```
📦test-feature
 ┗ 📜step_1_test_feature_input_page_response.json
 ┗ 📜step_2_test_feature_confirmation_popup_page_response.json
 ┗ 📜step_3_test_feature_failure_end_page_response.json
 ┗ 📜step_3_test_feature_success_end_page_response.json
```
