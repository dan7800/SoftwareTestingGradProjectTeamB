.class final Lcom/google/api/client/util/v;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic czv:Lcom/google/api/client/util/GenericData;

.field private final czw:Lcom/google/api/client/util/q;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/GenericData;)V
    .locals 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/api/client/util/v;->czv:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 213
    new-instance v0, Lcom/google/api/client/util/n;

    iget-object v1, p1, Lcom/google/api/client/util/GenericData;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v1}, Lcom/google/api/client/util/k;->Yo()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/api/client/util/n;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->Yq()Lcom/google/api/client/util/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/v;->czw:Lcom/google/api/client/util/q;

    .line 214
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/api/client/util/v;->czv:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->czr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    iget-object v0, p0, Lcom/google/api/client/util/v;->czw:Lcom/google/api/client/util/q;

    invoke-virtual {v0}, Lcom/google/api/client/util/q;->clear()V

    .line 230
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/google/api/client/util/u;

    iget-object v1, p0, Lcom/google/api/client/util/v;->czv:Lcom/google/api/client/util/GenericData;

    iget-object v2, p0, Lcom/google/api/client/util/v;->czw:Lcom/google/api/client/util/q;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/u;-><init>(Lcom/google/api/client/util/GenericData;Lcom/google/api/client/util/q;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/api/client/util/v;->czv:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->czr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/v;->czw:Lcom/google/api/client/util/q;

    invoke-virtual {v1}, Lcom/google/api/client/util/q;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
