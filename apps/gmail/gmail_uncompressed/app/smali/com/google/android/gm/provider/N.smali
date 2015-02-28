.class public final Lcom/google/android/gm/provider/N;
.super Lcom/google/android/gm/provider/M;
.source "SourceFile"


# instance fields
.field private final bgl:Lcom/google/android/gm/provider/f;

.field private bgm:Ljava/lang/String;

.field private final bgn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bgo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bgp:I

.field private bgq:Z

.field private bgr:I

.field private bgs:Z

.field private bgt:D

.field private final bgu:Ljava/lang/StringBuilder;

.field private final bgv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/f;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/gm/provider/M;-><init>(Lcom/google/android/gm/provider/aj;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgo:Ljava/util/Set;

    .line 39
    iput v1, p0, Lcom/google/android/gm/provider/N;->bgp:I

    .line 40
    iput-boolean v1, p0, Lcom/google/android/gm/provider/N;->bgq:Z

    .line 41
    iput v1, p0, Lcom/google/android/gm/provider/N;->bgr:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgv:Ljava/util/HashMap;

    .line 50
    iput-object p4, p0, Lcom/google/android/gm/provider/N;->bgl:Lcom/google/android/gm/provider/f;

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bga:Lcom/google/android/gm/provider/aj;

    const-string v2, "^f"

    invoke-interface {v0, v2}, Lcom/google/android/gm/provider/aj;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bge:Ljava/util/Set;

    iget-wide v4, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgs:Z

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgs:Z

    if-eqz v0, :cond_1

    .line 58
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iput-wide v2, p0, Lcom/google/android/gm/provider/N;->bgt:D

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/provider/N;->EQ()V

    .line 66
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0

    .line 60
    :cond_1
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/google/android/gm/provider/N;->bgt:D

    goto :goto_1
.end method

.method private EQ()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 220
    sget-object v0, Lcom/google/android/gm/provider/N;->bfU:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/gm/provider/N;->bgi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgm:Ljava/lang/String;

    .line 250
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgi:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    const-string v0, "from_address"

    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bgd:Ljava/util/Set;

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/N;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 234
    const-string v0, "to_addresses"

    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bgc:Ljava/util/Set;

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/N;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 235
    const-string v0, "subject"

    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bgf:Ljava/util/Set;

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/N;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bge:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 239
    const-string v3, "tag:%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gm/provider/N;->bga:Lcom/google/android/gm/provider/aj;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/google/android/gm/provider/aj;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgh:Z

    if-eqz v0, :cond_3

    .line 243
    const-string v0, "-tag:%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "^u"

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgg:Z

    if-eqz v0, :cond_4

    .line 246
    const-string v0, "tag:has_attachments"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_4
    const-string v0, " "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/N;->bgm:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/N;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgv:Ljava/util/HashMap;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method final EK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "conversation_labels.conversation_id IN (%s)"

    return-object v0
.end method

.method final EL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method final dO(I)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/google/android/gm/provider/N;->bgp:I

    if-nez v0, :cond_0

    .line 109
    const/16 p1, 0x14

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgm:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgq:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/gm/provider/N;->bgr:I

    if-le p1, v0, :cond_8

    .line 115
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgq:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p1, :cond_7

    .line 119
    iget-wide v0, p0, Lcom/google/android/gm/provider/N;->bgt:D

    iget-object v3, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v3, p1, v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 121
    const/16 v1, 0xa

    const/16 v3, 0x1f4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    const-string v1, "Gmail"

    const-string v3, "Search request for [%s] num results %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gm/provider/N;->bgm:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    iget-object v1, p0, Lcom/google/android/gm/provider/N;->bgl:Lcom/google/android/gm/provider/f;

    iget-object v3, p0, Lcom/google/android/gm/provider/N;->bgm:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/provider/N;->mAccount:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gm/provider/N;->bgp:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gm/provider/f;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/appdatasearch/SearchResults;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_7

    .line 130
    const-string v3, "Gmail"

    const-string v4, "Search request done with %d results"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->Jr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->Jr()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 134
    iput-boolean v8, p0, Lcom/google/android/gm/provider/N;->bgq:Z

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->Jr()I

    move-result v0

    if-lez v0, :cond_7

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/i;

    .line 144
    const-string v5, "conversation"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/appdatasearch/i;->fG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 146
    iget-boolean v6, p0, Lcom/google/android/gm/provider/N;->bgs:Z

    if-eqz v6, :cond_5

    .line 148
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgv:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 172
    const-string v6, "body"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/appdatasearch/i;->fG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgv:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .line 176
    iget-object v3, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lt v3, p1, :cond_c

    .line 177
    :goto_3
    iget v3, p0, Lcom/google/android/gm/provider/N;->bgp:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/gm/provider/N;->bgp:I

    .line 184
    iget-object v3, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    iget v3, p0, Lcom/google/android/gm/provider/N;->bgp:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gm/provider/N;->bgt:D

    .line 188
    :cond_4
    const-string v3, "Gmail"

    const-string v4, "Cids found now %d (added %d sent %d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 155
    :cond_5
    const-string v6, "^f"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/appdatasearch/i;->fH(Ljava/lang/String;)Z

    move-result v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 159
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 160
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgo:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_6
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v6, p0, Lcom/google/android/gm/provider/N;->bgo:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_7
    iput p1, p0, Lcom/google/android/gm/provider/N;->bgr:I

    .line 194
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gm/provider/N;->bgq:Z

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/N;->bgo:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 203
    iget-object v2, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 208
    if-lez v0, :cond_b

    .line 209
    iget-object v1, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/N;->bgu:Ljava/lang/StringBuilder;

    return-object v0

    :cond_c
    move v3, v0

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method final o(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/gm/provider/O;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/O;-><init>(Lcom/google/android/gm/provider/N;Landroid/database/Cursor;)V

    return-object v0
.end method
