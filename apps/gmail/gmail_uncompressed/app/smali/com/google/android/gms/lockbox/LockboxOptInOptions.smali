.class public Lcom/google/android/gms/lockbox/LockboxOptInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/lockbox/a;


# instance fields
.field final btV:I

.field ceK:I

.field ceL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/lockbox/a;

    invoke-direct {v0}, Lcom/google/android/gms/lockbox/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->CREATOR:Lcom/google/android/gms/lockbox/a;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->btV:I

    iput p2, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->ceK:I

    iput p3, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->ceL:I

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

    invoke-static {p0, p1}, Lcom/google/android/gms/lockbox/a;->a(Lcom/google/android/gms/lockbox/LockboxOptInOptions;Landroid/os/Parcel;)V

    return-void
.end method
