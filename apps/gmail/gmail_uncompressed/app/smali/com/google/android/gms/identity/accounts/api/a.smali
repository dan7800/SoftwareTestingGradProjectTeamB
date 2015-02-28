.class public final Lcom/google/android/gms/identity/accounts/api/a;
.super Ljava/lang/Object;


# static fields
.field static final bQW:Lcom/google/android/gms/identity/accounts/api/e;

.field private static final bQX:Lcom/google/android/gms/identity/accounts/api/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/b;

    invoke-direct {v0}, Lcom/google/android/gms/identity/accounts/api/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/a;->bQW:Lcom/google/android/gms/identity/accounts/api/e;

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/d;

    sget-object v1, Lcom/google/android/gms/identity/accounts/api/a;->bQW:Lcom/google/android/gms/identity/accounts/api/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/identity/accounts/api/d;-><init>(Lcom/google/android/gms/identity/accounts/api/e;)V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/a;->bQX:Lcom/google/android/gms/identity/accounts/api/d;

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/identity/accounts/api/a;->bQX:Lcom/google/android/gms/identity/accounts/api/d;

    invoke-static {p0, p1}, Lcom/google/android/gms/identity/accounts/api/d;->e(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/identity/accounts/api/AccountData;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/gms/identity/accounts/api/a;->bQX:Lcom/google/android/gms/identity/accounts/api/d;

    const-string v1, "Context must not be null."

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Intent must not be null."

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/gms/identity/accounts/api/d;->e(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.accounts.ACCOUNT_DATA"

    sget-object v2, Lcom/google/android/gms/identity/accounts/api/AccountData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    check-cast v0, Lcom/google/android/gms/identity/accounts/api/AccountData;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v0, v1

    invoke-virtual {v3, v1, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method
