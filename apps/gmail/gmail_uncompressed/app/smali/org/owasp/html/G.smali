.class public final Lorg/owasp/html/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cJb:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cJj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cJc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/p;",
            ">;"
        }
    .end annotation
.end field

.field private final cJd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cJe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/b;",
            ">;"
        }
    .end annotation
.end field

.field private final cJf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cJg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cJh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private cJi:Z

.field private transient cJk:Lcom/google/common/collect/ImmutableMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 163
    const-string v0, "a"

    const-string v1, "font"

    const-string v2, "img"

    const-string v3, "input"

    const-string v4, "span"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/G;->cJb:Lcom/google/common/collect/ImmutableSet;

    .line 443
    const-string v0, "action"

    const-string v1, "archive"

    const-string v2, "background"

    const-string v3, "cite"

    const-string v4, "classid"

    const-string v5, "codebase"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "dsync"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "formaction"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "href"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "icon"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "longdesc"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "manifest"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "poster"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "profile"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "src"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "srcset"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "usemap"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/G;->cJj:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJc:Ljava/util/Map;

    .line 167
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJd:Ljava/util/Map;

    .line 169
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJe:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/G;->cJf:Ljava/util/Set;

    .line 172
    sget-object v0, Lorg/owasp/html/G;->cJb:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->h(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJg:Ljava/util/Set;

    .line 174
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJh:Ljava/util/Map;

    .line 634
    return-void
.end method

.method static synthetic a(Lorg/owasp/html/G;Lorg/owasp/html/b;Ljava/util/List;)Lorg/owasp/html/G;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lorg/owasp/html/G;->a(Lorg/owasp/html/b;Ljava/util/List;)Lorg/owasp/html/G;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/owasp/html/G;Lorg/owasp/html/b;Ljava/util/List;Ljava/util/List;)Lorg/owasp/html/G;
    .locals 7

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/owasp/html/G;->cJd:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/owasp/html/G;->cJd:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/owasp/html/b;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/owasp/html/b;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p1, v5, v1

    invoke-static {v5}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private a(Lorg/owasp/html/b;Ljava/util/List;)Lorg/owasp/html/G;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/owasp/html/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/owasp/html/G;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lorg/owasp/html/G;->cJe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/owasp/html/b;

    .line 334
    iget-object v3, p0, Lorg/owasp/html/G;->cJe:Ljava/util/Map;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/owasp/html/b;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-static {v4}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_0
    return-object p0
.end method

.method private acf()Lcom/google/common/collect/ImmutableMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 625
    :goto_0
    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/G;->cJc:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 510
    iget-object v0, p0, Lorg/owasp/html/G;->cJd:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 513
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 516
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/G;->cJe:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 518
    iget-object v0, p0, Lorg/owasp/html/G;->cJf:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 521
    iget-boolean v0, p0, Lorg/owasp/html/G;->cJi:Z

    if-eqz v0, :cond_3

    .line 522
    const-string v0, "a"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/p;

    .line 523
    if-nez v0, :cond_2

    .line 524
    sget-object v0, Lorg/owasp/html/p;->cHY:Lorg/owasp/html/p;

    .line 526
    :cond_2
    const-string v2, "a"

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/owasp/html/p;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    new-instance v5, Lorg/owasp/html/H;

    invoke-direct {v5, p0}, Lorg/owasp/html/H;-><init>(Lorg/owasp/html/G;)V

    aput-object v5, v3, v0

    invoke-static {v3}, Lorg/owasp/html/s;->a([Lorg/owasp/html/p;)Lorg/owasp/html/p;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "mailto"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "http"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "https"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    sget-object v0, Lorg/owasp/html/V;->cKb:Lorg/owasp/html/V;

    move-object v3, v0

    .line 563
    :goto_2
    sget-object v0, Lorg/owasp/html/G;->cJj:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->h(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    .line 564
    sget-object v0, Lorg/owasp/html/G;->cJj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 567
    const/4 v1, 0x2

    new-array v8, v1, [Lorg/owasp/html/b;

    const/4 v1, 0x0

    aput-object v3, v8, v1

    const/4 v9, 0x1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/owasp/html/b;

    aput-object v1, v8, v9

    invoke-static {v8}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 560
    :cond_5
    new-instance v0, Lorg/owasp/html/v;

    invoke-direct {v0, v1}, Lorg/owasp/html/v;-><init>(Ljava/lang/Iterable;)V

    move-object v3, v0

    goto :goto_2

    .line 574
    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 576
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 578
    const/4 v2, 0x2

    new-array v10, v2, [Lorg/owasp/html/b;

    const/4 v2, 0x0

    aput-object v3, v10, v2

    const/4 v11, 0x1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/owasp/html/b;

    aput-object v2, v10, v11

    invoke-static {v10}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 585
    :cond_9
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v8

    .line 587
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/owasp/html/p;

    .line 590
    sget-object v2, Lorg/owasp/html/p;->cHY:Lorg/owasp/html/p;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 591
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 596
    if-nez v2, :cond_10

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zu()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    move-object v5, v2

    .line 597
    :goto_6
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v10

    .line 599
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 600
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 603
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/owasp/html/b;

    .line 605
    sget-object v11, Lorg/owasp/html/b;->cGF:Lorg/owasp/html/b;

    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 606
    invoke-virtual {v10, v3, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    goto :goto_7

    .line 610
    :cond_c
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 611
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 612
    const/4 v4, 0x2

    new-array v12, v4, [Lorg/owasp/html/b;

    const/4 v13, 0x0

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/owasp/html/b;

    aput-object v4, v12, v13

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/owasp/html/b;

    aput-object v2, v12, v4

    invoke-static {v12}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v2

    .line 614
    sget-object v4, Lorg/owasp/html/b;->cGF:Lorg/owasp/html/b;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 615
    invoke-virtual {v10, v3, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    goto :goto_8

    .line 619
    :cond_e
    new-instance v2, Lorg/owasp/html/n;

    invoke-virtual {v10}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iget-object v4, p0, Lorg/owasp/html/G;->cJg:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/owasp/html/n;-><init>(Ljava/lang/String;Lorg/owasp/html/p;Ljava/util/Map;Z)V

    invoke-virtual {v8, v0, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    goto/16 :goto_5

    .line 625
    :cond_f
    invoke-virtual {v8}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    goto/16 :goto_0

    :cond_10
    move-object v5, v2

    goto/16 :goto_6
.end method


# virtual methods
.method public final varargs H([Ljava/lang/String;)Lorg/owasp/html/G;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/owasp/html/p;->cHX:Lorg/owasp/html/p;

    invoke-virtual {p0, v0, p1}, Lorg/owasp/html/G;->a(Lorg/owasp/html/p;[Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    return-object v0
.end method

.method public final varargs I([Ljava/lang/String;)Lorg/owasp/html/G;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 259
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 260
    invoke-static {v3}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    iget-object v4, p0, Lorg/owasp/html/G;->cJh:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-object p0
.end method

.method public final varargs J([Ljava/lang/String;)Lorg/owasp/html/I;
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zs()Lcom/google/common/collect/x;

    move-result-object v1

    .line 303
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 304
    invoke-static {v3}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Lorg/owasp/html/I;

    invoke-virtual {v1}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/owasp/html/I;-><init>(Lorg/owasp/html/G;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs K([Ljava/lang/String;)Lorg/owasp/html/G;
    .locals 4

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 390
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 391
    invoke-static {v2}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    iget-object v3, p0, Lorg/owasp/html/G;->cJf:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-object p0
.end method

.method public final a(Lorg/owasp/html/i;)Lorg/owasp/html/G;
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 433
    new-instance v0, Lorg/owasp/html/X;

    invoke-direct {v0, p1}, Lorg/owasp/html/X;-><init>(Lorg/owasp/html/i;)V

    const-string v1, "style"

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->aE(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/owasp/html/G;->a(Lorg/owasp/html/b;Ljava/util/List;)Lorg/owasp/html/G;

    .line 435
    return-object p0
.end method

.method public final varargs a(Lorg/owasp/html/p;[Ljava/lang/String;)Lorg/owasp/html/G;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/G;->cJk:Lcom/google/common/collect/ImmutableMap;

    .line 202
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 203
    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    const/4 v0, 0x2

    new-array v5, v0, [Lorg/owasp/html/p;

    iget-object v0, p0, Lorg/owasp/html/G;->cJc:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/p;

    aput-object v0, v5, v2

    aput-object p1, v5, v6

    invoke-static {v5}, Lorg/owasp/html/s;->a([Lorg/owasp/html/p;)Lorg/owasp/html/p;

    move-result-object v0

    .line 209
    iget-object v5, p0, Lorg/owasp/html/G;->cJc:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lorg/owasp/html/G;->cJh:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->iD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/owasp/html/G;->cJh:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 216
    :cond_1
    return-object p0
.end method

.method public final ace()Lorg/owasp/html/U;
    .locals 5

    .prologue
    .line 484
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v1

    .line 486
    iget-object v0, p0, Lorg/owasp/html/G;->cJh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    goto :goto_0

    .line 491
    :cond_1
    new-instance v0, Lorg/owasp/html/U;

    invoke-direct {p0}, Lorg/owasp/html/G;->acf()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iget-object v3, p0, Lorg/owasp/html/G;->cJe:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/owasp/html/U;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
