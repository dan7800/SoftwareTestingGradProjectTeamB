.class public Lcom/google/android/gms/auth/RecoveryDecision;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/g;


# instance fields
.field final btV:I

.field public bxr:Landroid/app/PendingIntent;

.field public bxs:Z

.field public bxt:Z

.field public bxu:Z

.field public bxv:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryDecision;->CREATOR:Lcom/google/android/gms/auth/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryDecision;->btV:I

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;ZZZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryDecision;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryDecision;->bxr:Landroid/app/PendingIntent;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/RecoveryDecision;->bxs:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/RecoveryDecision;->bxt:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/RecoveryDecision;->bxu:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryDecision;->bxv:Landroid/app/PendingIntent;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/g;->a(Lcom/google/android/gms/auth/RecoveryDecision;Landroid/os/Parcel;I)V

    return-void
.end method
