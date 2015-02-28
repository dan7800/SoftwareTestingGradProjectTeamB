.class public abstract Lcom/google/android/gms/internal/L;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/K;


# direct methods
.method public static A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/K;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/K;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/K;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/M;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/M;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/e;

    invoke-static {p2}, Lcom/google/android/gms/clearcut/e;->aa(Landroid/os/Parcel;)Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/L;->a(Lcom/google/android/gms/internal/H;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/google/android/gms/internal/H;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/H;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/J;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/J;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
