.class public Lcom/google/android/gm/welcome/WelcomeTourState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bsA:Lcom/google/common/base/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/j",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation
.end field

.field private final bsB:Z

.field private final bsC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gm/welcome/r;

    invoke-direct {v0}, Lcom/google/android/gm/welcome/r;-><init>()V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeTourState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Lcom/google/android/gm/welcome/s;

    invoke-direct {v1, p0}, Lcom/google/android/gm/welcome/s;-><init>(Lcom/google/android/gm/welcome/WelcomeTourState;)V

    iput-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsA:Lcom/google/common/base/j;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 69
    instance-of v1, v0, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 70
    :cond_0
    check-cast v0, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    check-cast v0, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    .line 75
    :goto_1
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_2
    array-length v1, v0

    const-class v2, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    goto :goto_1
.end method

.method public constructor <init>(Z[Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;)V
    .locals 5

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/gm/welcome/s;

    invoke-direct {v0, p0}, Lcom/google/android/gm/welcome/s;-><init>(Lcom/google/android/gm/welcome/WelcomeTourState;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsA:Lcom/google/common/base/j;

    .line 78
    const-string v1, "WelcomeTour"

    const-string v2, "Welcome Tour mode will be shown for %s user"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "new"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    iput-boolean p1, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    .line 81
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    .line 82
    return-void

    .line 78
    :cond_0
    const-string v0, "upgrading"

    goto :goto_0
.end method


# virtual methods
.method public final IX()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    return v0
.end method

.method public final IY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    instance-of v1, p1, Lcom/google/android/gm/welcome/WelcomeTourState;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    check-cast p1, Lcom/google/android/gm/welcome/WelcomeTourState;

    .line 121
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    iget-boolean v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final size()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsB:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState;->bsC:Ljava/util/List;

    const-class v3, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 113
    return-void

    :cond_0
    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    goto :goto_1
.end method
