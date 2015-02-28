package android.support.v4.d;

import android.content.*;
import android.net.*;
import android.print.*;

final class b implements d
{
    private final e fF;
    
    b(final Context context) {
        this.fF = new e(context);
    }
    
    @Override
    public final void b(final String s, final Uri uri) {
        final e ff = this.fF;
        final f f = new f(ff, s, uri, null, ff.fG);
        final PrintManager printManager = (PrintManager)ff.mContext.getSystemService("print");
        final PrintAttributes$Builder printAttributes$Builder = new PrintAttributes$Builder();
        printAttributes$Builder.setColorMode(ff.fH);
        if (ff.fI == 1) {
            printAttributes$Builder.setMediaSize(PrintAttributes$MediaSize.UNKNOWN_LANDSCAPE);
        }
        else if (ff.fI == 2) {
            printAttributes$Builder.setMediaSize(PrintAttributes$MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(s, (PrintDocumentAdapter)f, printAttributes$Builder.build());
    }
    
    @Override
    public final void n(final int n) {
        this.fF.fG = 1;
    }
}
