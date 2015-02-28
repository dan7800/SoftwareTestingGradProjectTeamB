.class public final Lcom/google/android/gms/drive/events/CompletionEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/CompletionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bBx:I

.field final bGR:Landroid/os/ParcelFileDescriptor;

.field final bGS:Landroid/os/ParcelFileDescriptor;

.field final bGT:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final bGU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bGV:Landroid/os/IBinder;

.field private bGW:Z

.field private bGX:Z

.field private bGY:Z

.field final bGk:Lcom/google/android/gms/drive/DriveId;

.field final btV:I

.field final bxh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/ArrayList;ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGY:Z

    iput p1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGk:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bxh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGR:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGS:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGT:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p7, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGU:Ljava/util/ArrayList;

    iput p8, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bBx:I

    iput-object p9, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGV:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGU:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "CompletionEvent [id=%s, status=%s, trackingTag=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGk:Lcom/google/android/gms/drive/DriveId;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bBx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\',\'"

    iget-object v2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->bGU:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/b;->a(Lcom/google/android/gms/drive/events/CompletionEvent;Landroid/os/Parcel;I)V

    return-void
.end method
