.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 321
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 324
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 325
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->YW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->M(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method private static M(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 335
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 345
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->cAs:Lcom/google/common/collect/EmptyImmutableSet;

    goto :goto_0

    .line 340
    :pswitch_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 341
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static Zw()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->cAs:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static Zx()Lcom/google/common/collect/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    aput-object p0, v1, v0

    .line 148
    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 149
    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 150
    const/4 v0, 0x3

    aput-object p3, v1, v0

    .line 151
    const/4 v0, 0x4

    aput-object p4, v1, v0

    .line 152
    const/4 v0, 0x5

    aput-object p5, v1, v0

    .line 153
    const/4 v0, 0x6

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 154
    add-int/lit8 v2, v0, -0x6

    aget-object v2, p6, v2

    aput-object v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 271
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/l;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->M(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method private static fk(I)I
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 223
    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_0

    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/i;->c(ZLjava/lang/Object;)V

    move v0, v1

    .line 229
    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static varargs i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 161
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->fk(I)I

    move-result v5

    .line 162
    new-array v6, v5, [Ljava/lang/Object;

    .line 163
    add-int/lit8 v7, v5, -0x1

    .line 164
    const/4 v1, 0x0

    move v2, v3

    move v0, v3

    .line 166
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 167
    aget-object v8, p0, v2

    .line 168
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 169
    invoke-static {v9}, Lcom/google/common/collect/u;->fj(I)I

    move-result v4

    .line 170
    :goto_1
    and-int v10, v4, v7

    .line 171
    aget-object v11, v6, v10

    .line 172
    if-nez v11, :cond_3

    .line 173
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    aput-object v8, v6, v10

    .line 178
    add-int/2addr v0, v9

    .line 166
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 181
    if-nez v1, :cond_2

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 184
    :goto_2
    if-ge v4, v2, :cond_2

    .line 185
    aget-object v8, p0, v4

    .line 186
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 169
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_5
    if-nez v1, :cond_6

    .line 196
    :goto_3
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 199
    aget-object v2, p0, v3

    .line 200
    new-instance v1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .line 206
    :goto_4
    return-object v0

    .line 193
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 201
    :cond_7
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->fk(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-gt v5, v1, :cond_0

    .line 206
    new-instance v1, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct {v1, p0, v0, v6, v7}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_4
.end method

.method public static j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 243
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->cAs:Lcom/google/common/collect/EmptyImmutableSet;

    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract YX()Lcom/google/common/collect/aJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aJ",
            "<TE;>;"
        }
    .end annotation
.end method

.method Zc()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 357
    if-ne p1, p0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    .line 360
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->Zc()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->Zc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 364
    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->YX()Lcom/google/common/collect/aJ;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
