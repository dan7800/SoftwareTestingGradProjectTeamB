package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.feedback.*;

public abstract class as extends Binder implements ar
{
    public static ar B(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.feedback.internal.IFeedbackService");
        if (queryLocalInterface != null && queryLocalInterface instanceof ar) {
            return (ar)queryLocalInterface;
        }
        return new at(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.feedback.internal.IFeedbackService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.feedback.internal.IFeedbackService");
                final int int1 = parcel.readInt();
                ErrorReport errorReport = null;
                if (int1 != 0) {
                    errorReport = (ErrorReport)ErrorReport.CREATOR.createFromParcel(parcel);
                }
                final boolean a = this.a(errorReport);
                parcel2.writeNoException();
                int n3;
                if (a) {
                    n3 = 1;
                }
                else {
                    n3 = 0;
                }
                parcel2.writeInt(n3);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.feedback.internal.IFeedbackService");
                this.Y(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.feedback.internal.IFeedbackService");
                final int int2 = parcel.readInt();
                ErrorReport errorReport2 = null;
                if (int2 != 0) {
                    errorReport2 = (ErrorReport)ErrorReport.CREATOR.createFromParcel(parcel);
                }
                final boolean b = this.b(errorReport2);
                parcel2.writeNoException();
                int n4 = 0;
                if (b) {
                    n4 = 1;
                }
                parcel2.writeInt(n4);
                return true;
            }
        }
    }
}
