.class final Lorg/owasp/html/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/M;


# static fields
.field static final cHW:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final cHR:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/n;",
            ">;"
        }
    .end annotation
.end field

.field final cHS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cHT:Lorg/owasp/html/N;

.field transient cHU:Z

.field private final cHV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 71
    const-string v0, "script"

    const-string v1, "style"

    const-string v2, "noscript"

    const-string v3, "nostyle"

    const-string v4, "noembed"

    const-string v5, "noframes"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "iframe"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "object"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "frame"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "frameset"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "title"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/o;->cHW:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method constructor <init>(Lorg/owasp/html/N;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/owasp/html/N;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/n;",
            ">;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    .line 67
    iput-object p2, p0, Lorg/owasp/html/o;->cHR:Lcom/google/common/collect/ImmutableMap;

    .line 68
    iput-object p3, p0, Lorg/owasp/html/o;->cHS:Lcom/google/common/collect/ImmutableSet;

    .line 69
    return-void
.end method


# virtual methods
.method public final abZ()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    .line 78
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->abZ()V

    .line 80
    return-void
.end method

.method public final aca()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 84
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v2, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v2, v0}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 83
    :cond_0
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    .line 91
    iget-object v0, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->aca()V

    .line 92
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lorg/owasp/html/o;->cHR:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/n;

    .line 105
    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/owasp/html/n;->cHP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/owasp/html/b;

    if-nez v2, :cond_0

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p1, v1, v3}, Lorg/owasp/html/b;->apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v5, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/owasp/html/n;->cHO:Lorg/owasp/html/p;

    invoke-interface {v1, p1, p2}, Lorg/owasp/html/p;->apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lorg/owasp/html/n;->cHQ:Z

    if-nez v2, :cond_7

    .line 108
    :cond_3
    iget-boolean v2, v0, Lorg/owasp/html/n;->cHN:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    iget-object v0, v0, Lorg/owasp/html/n;->cHM:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/owasp/html/o;->cHS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    :cond_4
    iget-object v0, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v0, v1, p2}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    :goto_3
    return-void

    :cond_5
    move-object v1, v4

    .line 105
    goto :goto_1

    .line 108
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 111
    :cond_7
    invoke-static {p1}, Lorg/owasp/html/HtmlTextEscapingMode;->iA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Lorg/owasp/html/o;->cHW:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    goto :goto_3
.end method

.method public final io(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->io(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final ip(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    .line 149
    :goto_0
    if-lez v0, :cond_2

    .line 150
    add-int/lit8 v4, v0, -0x2

    .line 151
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_1
    if-le v2, v4, :cond_1

    .line 154
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v5, p0, Lorg/owasp/html/o;->cHT:Lorg/owasp/html/N;

    invoke-interface {v5, v0}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 153
    :cond_0
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    :cond_2
    iput-boolean v1, p0, Lorg/owasp/html/o;->cHU:Z

    .line 164
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_3

    .line 165
    iget-object v0, p0, Lorg/owasp/html/o;->cHV:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    if-eqz v0, :cond_6

    .line 167
    iget-object v2, p0, Lorg/owasp/html/o;->cHS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/owasp/html/o;->cHU:Z

    .line 171
    :cond_3
    return-void

    :cond_4
    move v0, v4

    .line 162
    goto :goto_0

    :cond_5
    move v0, v1

    .line 167
    goto :goto_3

    .line 164
    :cond_6
    add-int/lit8 v0, v2, -0x2

    move v2, v0

    goto :goto_2
.end method
