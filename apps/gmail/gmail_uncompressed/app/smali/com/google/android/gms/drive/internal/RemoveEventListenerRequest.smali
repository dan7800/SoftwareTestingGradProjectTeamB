.class public Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bGk:Lcom/google/android/gms/drive/DriveId;

.field final bHa:I

.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/D;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/D;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->bGk:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->bHa:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/D;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Landroid/os/Parcel;I)V

    return-void
.end method
