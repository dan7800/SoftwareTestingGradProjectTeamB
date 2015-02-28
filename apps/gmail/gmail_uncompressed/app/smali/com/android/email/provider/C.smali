.class public final Lcom/android/email/provider/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TH:Lcom/android/email/provider/ProjectionMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/email/provider/ProjectionMap;

    invoke-direct {v0}, Lcom/android/email/provider/ProjectionMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    return-void
.end method


# virtual methods
.method public final g([Ljava/lang/String;)Lcom/android/email/provider/C;
    .locals 4

    .prologue
    .line 43
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 44
    iget-object v3, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    invoke-static {v3, v2, v2}, Lcom/android/email/provider/ProjectionMap;->a(Lcom/android/email/provider/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object p0
.end method

.method public final kr()Lcom/android/email/provider/ProjectionMap;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/email/provider/ProjectionMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/email/provider/ProjectionMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    invoke-static {v1, v0}, Lcom/android/email/provider/ProjectionMap;->b(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    return-object v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/email/provider/C;->TH:Lcom/android/email/provider/ProjectionMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/email/provider/ProjectionMap;->a(Lcom/android/email/provider/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method
