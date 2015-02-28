.class public Lcom/google/android/gms/auth/RecoveryWriteRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/i;


# instance fields
.field final btV:I

.field public bxC:Z

.field public bxw:Ljava/lang/String;

.field public bxx:Ljava/lang/String;

.field public bxy:Ljava/lang/String;

.field public mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->CREATOR:Lcom/google/android/gms/auth/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mAccount:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->bxw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->bxx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->bxy:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->bxC:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/i;->a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Landroid/os/Parcel;)V

    return-void
.end method
