.class abstract Lcom/google/android/gm/persistence/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic bbl:Lcom/google/android/gm/persistence/b;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/persistence/b;)V
    .locals 0

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/google/android/gm/persistence/c;->bbl:Lcom/google/android/gm/persistence/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/persistence/b;B)V
    .locals 0

    .prologue
    .line 1903
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/c;-><init>(Lcom/google/android/gm/persistence/b;)V

    return-void
.end method


# virtual methods
.method abstract N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bU(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1918
    iget-object v0, p0, Lcom/google/android/gm/persistence/c;->bbl:Lcom/google/android/gm/persistence/b;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 1920
    if-eqz v0, :cond_1

    .line 1921
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1922
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/persistence/c;->N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1934
    :goto_0
    return-object v0

    .line 1923
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1924
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/persistence/c;->c(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1930
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/persistence/c;->bbl:Lcom/google/android/gm/persistence/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/b;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    if-eqz v0, :cond_2

    .line 1932
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/persistence/c;->N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1934
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract c(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation
.end method
