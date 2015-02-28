.class final Lcom/google/android/gm/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/android/mail/ui/ToastBarOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/ui/ToastBarOperation;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gm/ads/AdToastBarOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gm/ads/AdToastBarOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gm/ads/p;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/google/android/gm/ads/p;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/google/android/gm/ads/AdToastBarOperation;

    return-object v0
.end method
