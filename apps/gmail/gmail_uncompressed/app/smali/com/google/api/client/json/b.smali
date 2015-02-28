.class public Lcom/google/api/client/json/b;
.super Lcom/google/api/client/util/GenericData;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cxZ:Lcom/google/api/client/json/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    return-void
.end method


# virtual methods
.method public WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->WT()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/b;

    return-object v0
.end method

.method public synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    return-object v0
.end method

.method public final Yc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/api/client/json/b;->cxZ:Lcom/google/api/client/json/d;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/api/client/json/b;->cxZ:Lcom/google/api/client/json/d;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/d;->an(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/api/client/json/d;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/api/client/json/b;->cxZ:Lcom/google/api/client/json/d;

    .line 61
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/b;

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/json/b;->cxZ:Lcom/google/api/client/json/d;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/json/b;->cxZ:Lcom/google/api/client/json/d;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/d;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/api/client/util/N;->c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
