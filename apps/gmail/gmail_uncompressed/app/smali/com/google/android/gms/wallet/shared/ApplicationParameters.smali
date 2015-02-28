.class public final Lcom/google/android/gms/wallet/shared/ApplicationParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/shared/ApplicationParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ae:I

.field final btV:I

.field cI:Landroid/os/Bundle;

.field cme:I

.field cmi:Landroid/accounts/Account;

.field cmj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/shared/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/shared/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cmj:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->btV:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cme:I

    iput v1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->ae:I

    return-void
.end method

.method constructor <init>(IILandroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cmj:Z

    iput p1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->btV:I

    iput p2, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cme:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cmi:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cI:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->cmj:Z

    iput p6, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->ae:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/shared/a;->a(Lcom/google/android/gms/wallet/shared/ApplicationParameters;Landroid/os/Parcel;I)V

    return-void
.end method
