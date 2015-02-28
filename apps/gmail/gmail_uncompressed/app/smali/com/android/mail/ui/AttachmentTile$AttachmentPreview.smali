.class public final Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
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
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aGk:Ljava/lang/String;

.field public aGl:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/android/mail/ui/am;

    invoke-direct {v0}, Lcom/android/mail/ui/am;-><init>()V

    sput-object v0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGk:Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGl:Landroid/graphics/Bitmap;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGk:Ljava/lang/String;

    .line 279
    iput-object p2, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGl:Landroid/graphics/Bitmap;

    .line 280
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGl:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 257
    return-void
.end method
