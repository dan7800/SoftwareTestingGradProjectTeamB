.class public Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/b;


# instance fields
.field final bxK:Landroid/os/Bundle;

.field final bxL:[B

.field final responseCode:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->CREATOR:Lcom/google/android/gms/auth/api/b;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->responseCode:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->bxK:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->bxL:[B

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

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/b;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;Landroid/os/Parcel;)V

    return-void
.end method
