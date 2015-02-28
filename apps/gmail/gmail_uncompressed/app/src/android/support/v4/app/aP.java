package android.support.v4.app;

import java.util.*;
import android.os.*;
import android.app.*;

final class ap
{
    public static ArrayList<Parcelable> a(final au[] array) {
        ArrayList<Parcelable> list;
        if (array == null) {
            list = null;
        }
        else {
            list = new ArrayList<Parcelable>(array.length);
            for (int length = array.length, i = 0; i < length; ++i) {
                list.add((Parcelable)b(array[i]));
            }
        }
        return list;
    }
    
    public static void a(final Notification$Builder notification$Builder, final au au) {
        final Notification$Action$Builder notification$Action$Builder = new Notification$Action$Builder(au.getIcon(), au.getTitle(), au.aj());
        if (au.ak() != null) {
            final RemoteInput[] a = aS.a(au.ak());
            for (int length = a.length, i = 0; i < length; ++i) {
                notification$Action$Builder.addRemoteInput(a[i]);
            }
        }
        if (au.getExtras() != null) {
            notification$Action$Builder.addExtras(au.getExtras());
        }
        notification$Builder.addAction(notification$Action$Builder.build());
    }
    
    private static Notification$Action b(final au au) {
        final Notification$Action$Builder addExtras = new Notification$Action$Builder(au.getIcon(), au.getTitle(), au.aj()).addExtras(au.getExtras());
        final aU[] ak = au.ak();
        if (ak != null) {
            final RemoteInput[] a = aS.a(ak);
            for (int length = a.length, i = 0; i < length; ++i) {
                addExtras.addRemoteInput(a[i]);
            }
        }
        return addExtras.build();
    }
}
