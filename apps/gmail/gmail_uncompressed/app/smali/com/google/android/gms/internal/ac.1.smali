.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/a;


# instance fields
.field public final bRn:Z

.field public final bRo:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ac;->CREATOR:Lcom/google/android/gms/internal/a;

    return-void
.end method

.method constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ac;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ac;->bRn:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ac;->bRo:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/ac;Landroid/os/Parcel;)V

    return-void
.end method
