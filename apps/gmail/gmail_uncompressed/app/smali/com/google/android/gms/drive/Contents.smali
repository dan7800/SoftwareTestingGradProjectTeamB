.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bEA:Landroid/os/ParcelFileDescriptor;

.field final bGi:I

.field final bGj:I

.field final bGk:Lcom/google/android/gms/drive/DriveId;

.field final bGl:Z

.field private bGm:Z

.field private bGn:Z

.field final btV:I

.field private mClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/o;

    invoke-direct {v0}, Lcom/google/android/gms/drive/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->bGm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->bGn:Z

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->bEA:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->bGi:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->bGj:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->bGk:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/Contents;->bGl:Z

    return-void
.end method


# virtual methods
.method public final LS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Contents;->bGi:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/o;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method
