.class public final Lcom/google/android/gms/identity/accounts/api/AccountData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/accounts/api/AccountData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bQV:Ljava/lang/String;

.field private final btV:I

.field private final bxh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/c;

    invoke-direct {v0}, Lcom/google/android/gms/identity/accounts/api/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/AccountData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Account name must not be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->bxh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->bQV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final FP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->bxh:Ljava/lang/String;

    return-object v0
.end method

.method public final Iu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->bQV:Ljava/lang/String;

    return-object v0
.end method

.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/identity/accounts/api/c;->a(Lcom/google/android/gms/identity/accounts/api/AccountData;Landroid/os/Parcel;)V

    return-void
.end method
