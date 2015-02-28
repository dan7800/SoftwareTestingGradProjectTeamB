.class public Lcom/google/android/gm/drive/FixPermissionDialogState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bap:Z

.field private final baq:I

.field private final bar:I

.field private final bas:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gm/drive/f;

    invoke-direct {v0}, Lcom/google/android/gm/drive/f;-><init>()V

    sput-object v0, Lcom/google/android/gm/drive/FixPermissionDialogState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bap:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->baq:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bar:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bas:I

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZIII)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bap:Z

    .line 24
    iput p2, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->baq:I

    .line 25
    iput p3, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bar:I

    .line 26
    iput p4, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bas:I

    .line 27
    return-void
.end method


# virtual methods
.method public final Dm()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bap:Z

    return v0
.end method

.method public final Dn()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bar:I

    return v0
.end method

.method public final Do()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bas:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->baq:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->baq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->bas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
