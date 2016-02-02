/**
*   CODE BY Joao Pedro Nardari dos Santos - joaonardari@gmail.com
*   Add the code in your UIViewController.m and set cpfField Outset in your UIViewController.h
*   and @syntesize cpfField
*/

@syntesize cpfField;

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField == cpfField) {
        if ([string length] == 0)
            return YES;
        
        if (textField.text.length > 13)
            return NO;
        
        if ([textField.text length] == 3 || [textField.text length] == 7) {
            textField.text = [textField.text stringByAppendingString:@"."];
        } else if ([textField.text length] == 11) {
            textField.text = [textField.text stringByAppendingString:@"-"];
        }
    }
    
    return YES;
}
