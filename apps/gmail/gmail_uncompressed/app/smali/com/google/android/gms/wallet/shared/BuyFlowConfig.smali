.class public final Lcom/google/android/gms/wallet/shared/BuyFlowConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/shared/BuyFlowConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final btV:I

.field cmm:Ljava/lang/String;

.field cmn:Lcom/google/android/gms/wallet/shared/ApplicationParameters;

.field cmo:Ljava/lang/String;

.field cmp:Ljava/lang/String;

.field cmq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/shared/c;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/shared/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/shared/ApplicationParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->cmm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->cmn:Lcom/google/android/gms/wallet/shared/ApplicationParameters;

    iput-object p4, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->cmo:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->cmp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/shared/BuyFlowConfig;->cmq:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/shared/c;->a(Lcom/google/android/gms/wallet/shared/BuyFlowConfig;Landroid/os/Parcel;I)V

    return-void
.end method
