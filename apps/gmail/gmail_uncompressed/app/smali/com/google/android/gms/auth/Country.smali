.class public Lcom/google/android/gms/auth/Country;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/f;


# instance fields
.field public PP:Ljava/lang/String;

.field final btV:I

.field public mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/Country;->CREATOR:Lcom/google/android/gms/auth/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/Country;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/Country;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/auth/Country;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/Country;->PP:Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/f;->a(Lcom/google/android/gms/auth/Country;Landroid/os/Parcel;)V

    return-void
.end method
