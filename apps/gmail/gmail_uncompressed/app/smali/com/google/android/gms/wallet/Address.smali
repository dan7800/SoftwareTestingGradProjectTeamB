.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bRa:Ljava/lang/String;

.field bRb:Ljava/lang/String;

.field bRc:Ljava/lang/String;

.field bRd:Ljava/lang/String;

.field bRi:Ljava/lang/String;

.field bRk:Z

.field bRl:Ljava/lang/String;

.field private final btV:I

.field bya:Ljava/lang/String;

.field ckJ:Ljava/lang/String;

.field ckK:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->bRb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->bRc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->bRd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->bRa:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->ckJ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->ckK:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->bRi:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->bya:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->bRk:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->bRl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;)V

    return-void
.end method
