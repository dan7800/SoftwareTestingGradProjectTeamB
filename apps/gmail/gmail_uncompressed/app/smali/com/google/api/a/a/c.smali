.class public final Lcom/google/api/a/a/c;
.super Lcom/google/api/a/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/a/a/h",
        "<",
        "Lcom/google/api/a/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic czO:Lcom/google/api/a/a/b;


# direct methods
.method protected constructor <init>(Lcom/google/api/a/a/b;Lcom/google/api/a/a/a/a;)V
    .locals 6

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/google/api/a/a/c;->czO:Lcom/google/api/a/a/b;

    .line 1076
    iget-object v1, p1, Lcom/google/api/a/a/b;->czN:Lcom/google/api/a/a/a;

    const-string v2, "POST"

    const-string v3, "attachments"

    const-class v5, Lcom/google/api/a/a/a/a;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/api/a/a/h;-><init>(Lcom/google/api/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1077
    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/c;
    .locals 1

    .prologue
    .line 1116
    invoke-super {p0, p1, p2}, Lcom/google/api/a/a/h;->q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/c;

    return-object v0
.end method


# virtual methods
.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/c;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/c;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/c;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/c;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/c;

    move-result-object v0

    return-object v0
.end method
