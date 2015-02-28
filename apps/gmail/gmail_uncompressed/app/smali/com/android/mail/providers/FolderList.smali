.class public Lcom/android/mail/providers/FolderList;
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
            "Lcom/android/mail/providers/FolderList;",
            ">;"
        }
    .end annotation
.end field

.field private static final aAK:Lcom/android/mail/providers/FolderList;


# instance fields
.field public final aAL:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/mail/providers/FolderList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/providers/FolderList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mail/providers/FolderList;->aAK:Lcom/android/mail/providers/FolderList;

    .line 96
    new-instance v0, Lcom/android/mail/providers/n;

    invoke-direct {v0}, Lcom/android/mail/providers/n;-><init>()V

    sput-object v0, Lcom/android/mail/providers/FolderList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/android/mail/providers/Folder;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zr()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    goto :goto_0
.end method

.method public static d([B)Lcom/android/mail/providers/FolderList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 71
    sget-object v0, Lcom/android/mail/providers/FolderList;->aAK:Lcom/android/mail/providers/FolderList;

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    sget-object v0, Lcom/android/mail/providers/FolderList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/FolderList;

    .line 78
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)",
            "Lcom/android/mail/providers/FolderList;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/android/mail/providers/FolderList;

    invoke-direct {v0, p0}, Lcom/android/mail/providers/FolderList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final uN()[B
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/providers/FolderList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    return-void
.end method
