.class public final Lcom/google/android/gm/provider/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bhV:J

.field private final bhW:J

.field private final bhX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bhY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bhZ:Z


# direct methods
.method public constructor <init>(JJLjava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide p1, p0, Lcom/google/android/gm/provider/ah;->bhV:J

    .line 169
    iput-wide p3, p0, Lcom/google/android/gm/provider/ah;->bhW:J

    .line 170
    iput-object p5, p0, Lcom/google/android/gm/provider/ah;->bhX:Ljava/util/Set;

    .line 171
    iput-object p6, p0, Lcom/google/android/gm/provider/ah;->bhY:Ljava/util/Set;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ah;->bhZ:Z

    .line 173
    return-void
.end method


# virtual methods
.method public final FL()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/android/gm/provider/ah;->bhV:J

    return-wide v0
.end method

.method public final FM()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/android/gm/provider/ah;->bhW:J

    return-wide v0
.end method

.method public final FN()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ah;->bhZ:Z

    return v0
.end method

.method public final n(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/provider/ah;->bhX:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ah;->bhY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 178
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
