.class public Lcom/google/android/gms/drive/StorageStats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/StorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bGH:J

.field final bGI:J

.field final bGJ:J

.field final bGK:J

.field final bGL:I

.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/s;

    invoke-direct {v0}, Lcom/google/android/gms/drive/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/StorageStats;->btV:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/StorageStats;->bGH:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/StorageStats;->bGI:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/StorageStats;->bGJ:J

    iput-wide p8, p0, Lcom/google/android/gms/drive/StorageStats;->bGK:J

    iput p10, p0, Lcom/google/android/gms/drive/StorageStats;->bGL:I

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

    invoke-static {p0, p1}, Lcom/google/android/gms/drive/s;->a(Lcom/google/android/gms/drive/StorageStats;Landroid/os/Parcel;)V

    return-void
.end method
