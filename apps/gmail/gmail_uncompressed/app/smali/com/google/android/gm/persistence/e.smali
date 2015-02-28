.class final Lcom/google/android/gm/persistence/e;
.super Lcom/google/android/gm/persistence/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/persistence/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bbl:Lcom/google/android/gm/persistence/b;


# direct methods
.method constructor <init>(Lcom/google/android/gm/persistence/b;)V
    .locals 1

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/google/android/gm/persistence/e;->bbl:Lcom/google/android/gm/persistence/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/c;-><init>(Lcom/google/android/gm/persistence/b;B)V

    return-void
.end method


# virtual methods
.method public final synthetic N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/android/gm/persistence/e;->bbl:Lcom/google/android/gm/persistence/b;

    const-string v1, "confirm-actions"

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gm/persistence/b;->a(Lcom/google/android/gm/persistence/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1443
    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/persistence/e;->bbl:Lcom/google/android/gm/persistence/b;

    const-string v5, "confirm-actions"

    invoke-static {v4, p1, v0, v5}, Lcom/google/android/gm/persistence/b;->a(Lcom/google/android/gm/persistence/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
