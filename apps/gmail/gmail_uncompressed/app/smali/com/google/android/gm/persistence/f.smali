.class final Lcom/google/android/gm/persistence/f;
.super Lcom/google/android/gm/persistence/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/persistence/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bbl:Lcom/google/android/gm/persistence/b;


# direct methods
.method constructor <init>(Lcom/google/android/gm/persistence/b;)V
    .locals 1

    .prologue
    .line 641
    iput-object p1, p0, Lcom/google/android/gm/persistence/f;->bbl:Lcom/google/android/gm/persistence/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/c;-><init>(Lcom/google/android/gm/persistence/b;B)V

    return-void
.end method


# virtual methods
.method final synthetic N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/gm/persistence/f;->bbl:Lcom/google/android/gm/persistence/b;

    const-string v1, "action-strip-action-reply-all"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/persistence/f;->bbl:Lcom/google/android/gm/persistence/b;

    const-string v4, "action-strip-action-reply-all"

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v0, v4, v5}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
