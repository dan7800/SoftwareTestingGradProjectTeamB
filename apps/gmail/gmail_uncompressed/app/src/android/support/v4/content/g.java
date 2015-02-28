package android.support.v4.content;

import android.content.*;

class g implements f
{
    @Override
    public Intent makeMainActivity(final ComponentName component) {
        final Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(component);
        intent.addCategory("android.intent.category.LAUNCHER");
        return intent;
    }
}
