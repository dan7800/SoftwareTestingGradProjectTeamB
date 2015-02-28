.class public Lcom/android/mail/ui/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/mail/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/mail/a;",
        ">;>;",
        "Lcom/android/mail/b;"
    }
.end annotation


# instance fields
.field private aGy:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;"
        }
    .end annotation
.end field

.field private akd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ib:Landroid/database/DataSetObservable;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ar;->ib:Landroid/database/DataSetObservable;

    .line 48
    iput-object p1, p0, Lcom/android/mail/ui/ar;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/ar;->ib:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final aX(Ljava/lang/String;)Lcom/android/mail/a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/ui/ar;->aGy:Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ar;->aGy:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/a;

    goto :goto_0
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mail/ui/ar;->ib:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/ar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final i(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mail/ui/ar;->akd:Ljava/util/Set;

    .line 53
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/mail/j;

    iget-object v1, p0, Lcom/android/mail/ui/ar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/ui/ar;->akd:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/android/mail/j;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lcom/android/mail/ui/ar;->aGy:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p0, Lcom/android/mail/ui/ar;->ib:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method protected final xW()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mail/ui/ar;->akd:Ljava/util/Set;

    return-object v0
.end method
