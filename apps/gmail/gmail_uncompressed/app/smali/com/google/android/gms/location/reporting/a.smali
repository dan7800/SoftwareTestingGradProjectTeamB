.class public final Lcom/google/android/gms/location/reporting/a;
.super Ljava/lang/Object;


# direct methods
.method public static eP(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 p0, 0x63

    :goto_1
    :pswitch_0
    return p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
