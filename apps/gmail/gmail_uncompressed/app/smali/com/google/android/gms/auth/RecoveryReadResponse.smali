.class public Lcom/google/android/gms/auth/RecoveryReadResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/h;


# instance fields
.field public bmI:Ljava/lang/String;

.field final btV:I

.field public bxA:Ljava/lang/String;

.field public bxB:Ljava/lang/String;

.field public bxw:Ljava/lang/String;

.field public bxx:Ljava/lang/String;

.field public bxy:Ljava/lang/String;

.field public bxz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->CREATOR:Lcom/google/android/gms/auth/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxy:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxz:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxA:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bmI:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->bxB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/h;->a(Lcom/google/android/gms/auth/RecoveryReadResponse;Landroid/os/Parcel;)V

    return-void
.end method
