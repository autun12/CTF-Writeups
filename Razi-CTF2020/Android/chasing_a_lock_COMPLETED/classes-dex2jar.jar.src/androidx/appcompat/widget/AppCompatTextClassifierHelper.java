package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.util.Preconditions;

final class AppCompatTextClassifierHelper {
  private TextClassifier mTextClassifier;
  
  private TextView mTextView;
  
  AppCompatTextClassifierHelper(TextView paramTextView) {
    this.mTextView = (TextView)Preconditions.checkNotNull(paramTextView);
  }
  
  public TextClassifier getTextClassifier() {
    TextClassifier textClassifier1 = this.mTextClassifier;
    TextClassifier textClassifier2 = textClassifier1;
    if (textClassifier1 == null) {
      TextClassificationManager textClassificationManager = (TextClassificationManager)this.mTextView.getContext().getSystemService(TextClassificationManager.class);
      if (textClassificationManager != null)
        return textClassificationManager.getTextClassifier(); 
      textClassifier2 = TextClassifier.NO_OP;
    } 
    return textClassifier2;
  }
  
  public void setTextClassifier(TextClassifier paramTextClassifier) {
    this.mTextClassifier = paramTextClassifier;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/AppCompatTextClassifierHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */