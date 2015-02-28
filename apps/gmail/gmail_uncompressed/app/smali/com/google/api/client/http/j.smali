.class public final Lcom/google/api/client/http/j;
.super Lcom/google/api/client/util/GenericData;
.source "SourceFile"


# static fields
.field private static final cwK:Lcom/google/api/client/util/a/b;


# instance fields
.field private cwL:Ljava/lang/String;

.field private cwM:Ljava/lang/String;

.field private cwN:Ljava/lang/String;

.field private cwO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/http/j;->cwK:Lcom/google/api/client/util/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/j;->port:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/api/client/http/j;->hg(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/j;-><init>(Ljava/net/URI;)V

    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/j;->port:I

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/j;->cwL:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/google/api/client/http/j;->cwM:Ljava/lang/String;

    .line 155
    iput p3, p0, Lcom/google/api/client/http/j;->port:I

    .line 156
    invoke-static {p4}, Lcom/google/api/client/http/j;->hf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    .line 157
    if-eqz p5, :cond_2

    invoke-static {p5}, Lcom/google/api/client/util/a/a;->hz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/http/j;->fragment:Ljava/lang/String;

    .line 158
    if-eqz p6, :cond_0

    .line 159
    invoke-static {p6, p0}, Lcom/google/api/client/http/I;->n(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_0
    if-eqz p7, :cond_1

    invoke-static {p7}, Lcom/google/api/client/util/a/a;->hz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/api/client/http/j;->cwN:Ljava/lang/String;

    .line 162
    return-void

    :cond_2
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method private constructor <init>(Ljava/net/URI;)V
    .locals 8

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 8

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private Xm()Lcom/google/api/client/http/j;
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->WT()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    .line 191
    iget-object v1, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    .line 194
    :cond_0
    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x1

    .line 574
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_3

    .line 577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->hC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 579
    check-cast v0, Ljava/util/Collection;

    .line 580
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 581
    invoke-static {v0, p1, v4, v2}, Lcom/google/api/client/http/j;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_0
    move v2, v0

    .line 583
    goto :goto_0

    .line 584
    :cond_1
    invoke-static {v2, p1, v4, v1}, Lcom/google/api/client/http/j;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    move v2, v0

    .line 587
    goto :goto_0

    .line 588
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private static a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 591
    if-eqz p0, :cond_1

    .line 592
    const/4 p0, 0x0

    .line 593
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->hC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    return p0

    .line 595
    :cond_1
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private d(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 557
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 558
    iget-object v0, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    if-eqz v1, :cond_0

    .line 560
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->hA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 566
    :cond_2
    return-void
.end method

.method private static hf(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 534
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    .line 537
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v0, v4

    .line 540
    :goto_1
    if-eqz v2, :cond_4

    .line 541
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 542
    const/4 v2, -0x1

    if-eq v5, v2, :cond_2

    move v2, v3

    .line 544
    :goto_2
    if-eqz v2, :cond_3

    .line 545
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->hz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v5, 0x1

    .line 551
    goto :goto_1

    :cond_2
    move v2, v4

    .line 542
    goto :goto_2

    .line 547
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 552
    goto :goto_0
.end method

.method private static hg(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 617
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 412
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/api/client/http/j;->Xm()Lcom/google/api/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method public final Xn()Ljava/lang/String;
    .locals 5

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/api/client/http/j;->cwL:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/api/client/http/j;->cwN:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/j;->cwN:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->hB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/j;->cwM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/api/client/http/j;->port:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/api/client/http/j;->d(Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/api/client/http/j;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/api/client/http/j;->a(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/google/api/client/http/j;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/http/j;->cwK:Lcom/google/api/client/util/a/b;

    invoke-virtual {v4, v2}, Lcom/google/api/client/util/a/b;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Xo()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/api/client/http/j;->hf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/j;->cwO:Ljava/util/List;

    .line 498
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/api/client/http/j;->Xm()Lcom/google/api/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 172
    if-ne p0, p1, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/google/api/client/util/GenericData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/api/client/http/j;

    if-nez v0, :cond_2

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_2
    check-cast p1, Lcom/google/api/client/http/j;

    .line 180
    invoke-virtual {p0}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final hd(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/http/j;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final he(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 449
    check-cast v0, Ljava/util/Collection;

    .line 450
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 453
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
