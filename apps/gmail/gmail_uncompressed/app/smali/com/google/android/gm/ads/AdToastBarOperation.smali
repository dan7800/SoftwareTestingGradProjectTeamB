.class public Lcom/google/android/gm/ads/AdToastBarOperation;
.super Lcom/android/mail/ui/ToastBarOperation;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/ui/ToastBarOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final aZQ:Ljava/lang/Runnable;

.field private final aZR:Ljava/lang/Runnable;

.field private final aZp:Lcom/google/android/gm/provider/Advertisement;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/gm/ads/p;

    invoke-direct {v0}, Lcom/google/android/gm/ads/p;-><init>()V

    sput-object v0, Lcom/google/android/gm/ads/AdToastBarOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/ToastBarOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 71
    new-instance v0, Lcom/google/android/gm/ads/q;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/q;-><init>(Lcom/google/android/gm/ads/AdToastBarOperation;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZQ:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/google/android/gm/ads/r;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/r;-><init>(Lcom/google/android/gm/ads/AdToastBarOperation;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZR:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Advertisement;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZp:Lcom/google/android/gm/provider/Advertisement;

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->Nc:Lcom/android/mail/providers/Account;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/ads/AdToastBarOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/Advertisement;Lcom/android/mail/providers/Account;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 30
    const/4 v1, 0x1

    const v2, 0x7f0d026e

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 71
    new-instance v0, Lcom/google/android/gm/ads/q;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/q;-><init>(Lcom/google/android/gm/ads/AdToastBarOperation;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZQ:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/google/android/gm/ads/r;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/r;-><init>(Lcom/google/android/gm/ads/AdToastBarOperation;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZR:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZp:Lcom/google/android/gm/provider/Advertisement;

    .line 32
    iput-object p2, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->Nc:Lcom/android/mail/providers/Account;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/google/android/gm/provider/Advertisement;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZp:Lcom/google/android/gm/provider/Advertisement;

    return-object v0
.end method


# virtual methods
.method public final Am()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public final ar(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZQ:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public final au(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0903a2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final av(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZR:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/ToastBarOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gm/ads/AdToastBarOperation;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void
.end method
