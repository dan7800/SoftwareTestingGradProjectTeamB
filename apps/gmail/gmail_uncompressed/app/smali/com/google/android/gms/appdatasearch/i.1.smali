.class public final Lcom/google/android/gms/appdatasearch/i;
.super Ljava/lang/Object;


# instance fields
.field private final bwk:Lcom/google/android/gms/appdatasearch/j;

.field private final bwl:I

.field final synthetic bwm:Lcom/google/android/gms/appdatasearch/SearchResults;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SearchResults;ILcom/google/android/gms/appdatasearch/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/i;->bwk:Lcom/google/android/gms/appdatasearch/j;

    iput p2, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    return-void
.end method


# virtual methods
.method public final fG(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwk:Lcom/google/android/gms/appdatasearch/j;

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/j;->a(Lcom/google/android/gms/appdatasearch/j;)[Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v1, v1, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v3, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v1, v1, v3

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwk:Lcom/google/android/gms/appdatasearch/j;

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/j;->a(Lcom/google/android/gms/appdatasearch/j;)[Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v3, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v3, v0, v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, v1, v3

    move-object v1, v0

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/l;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwd:[Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v3, v3, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v4, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v3, v3, v4

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwe:[Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v4, v4, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v5, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v4, v4, v5

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/appdatasearch/l;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/appdatasearch/l;-><init>([I[B)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/l;->en(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public final fH(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwc:[Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwc:[Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v1, v1, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v2, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with corpus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v2, v2, Lcom/google/android/gms/appdatasearch/SearchResults;->bwh:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/i;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget-object v3, v3, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iget v4, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget v3, v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/appdatasearch/i;->bwl:I

    aget-boolean v0, v0, v1

    goto :goto_0
.end method
