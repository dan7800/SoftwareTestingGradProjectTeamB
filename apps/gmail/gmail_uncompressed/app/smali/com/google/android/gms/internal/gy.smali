.class public final Lcom/google/android/gms/internal/gy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/u;


# instance fields
.field public bSP:Ljava/lang/String;

.field public bSQ:I

.field public bSR:I

.field public bSS:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gy;->CREATOR:Lcom/google/android/gms/internal/u;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gy;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gy;->bSP:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/gy;->bSQ:I

    iput p4, p0, Lcom/google/android/gms/internal/gy;->bSR:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/gy;->bSS:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/gy;Landroid/os/Parcel;)V

    return-void
.end method
