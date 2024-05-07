import 'package:mason/mason.dart';

void run(HookContext context) {
  final pageType = context.vars['page_type'] as String;
  final pageTemplateName = context.vars['page_template_name'] as String;
  final pageName = context.vars['page_name'] as String;
  final stepNumberRaw = context.vars['step_number'];

  context.vars['isDefault'] = pageTemplateName == 'Default';
  context.vars['isPopup'] = pageTemplateName == 'Popup Page';
  context.vars['isSuccess'] = pageTemplateName == 'Success End Page';
  context.vars['isFailure'] = pageTemplateName == 'Failure End Page';

  final int stepNumber = stepNumberRaw is int ? stepNumberRaw : int.tryParse(stepNumberRaw.toString()) ?? 0;
  int effectiveStepNumber = (stepNumber <= 0) ? 1 : stepNumber;

  String suffix = "";
  switch (pageTemplateName) {
    case 'Default':
      suffix = "_input_page";
      break;
    case 'Popup Page':
      suffix = "_confirmation_popup_page";
      break;
    case 'Success End Page':
      suffix = "_success_end_page";
      break;
    case 'Failure End Page':
      suffix = "_failure_end_page";
      break;
  }

  context.vars['pageSuffix'] = suffix;
  context.vars['isWf'] = pageType == "wf";

  if (pageType == 'bff') {
    context.vars['keyForName'] = 'pageName';
    context.vars['keyForPage'] = 'componentJson';
    context.vars['fileName'] = (stepNumber <= 0)
        ? "bff_${pageName.snakeCase}_response"
        : "step_${stepNumber}_bff_${pageName.snakeCase}_response";
  } else {
    context.vars['keyForName'] = 'name';
    context.vars['keyForPage'] = 'page';
    context.vars['fileName'] = "step_${effectiveStepNumber}_wf_${pageName.snakeCase}${suffix}_response";
  }
}
