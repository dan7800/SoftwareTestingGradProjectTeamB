.class public abstract Lcom/google/api/client/googleapis/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cwh:Lcom/google/api/client/googleapis/a/e;

.field cwi:Ljava/lang/String;

.field cwj:Ljava/lang/String;

.field cwk:Ljava/lang/String;

.field final cwl:Lcom/google/api/client/util/F;

.field cwm:Z

.field cwn:Z

.field final cwo:Lcom/google/api/client/http/A;

.field cwp:Lcom/google/api/client/http/v;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/A;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/F;Lcom/google/api/client/http/v;)V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/A;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->cwo:Lcom/google/api/client/http/A;

    .line 334
    iput-object p4, p0, Lcom/google/api/client/googleapis/a/b;->cwl:Lcom/google/api/client/util/F;

    .line 335
    invoke-virtual {p0, p2}, Lcom/google/api/client/googleapis/a/b;->gW(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;

    .line 336
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/a/b;->gX(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;

    .line 337
    iput-object p5, p0, Lcom/google/api/client/googleapis/a/b;->cwp:Lcom/google/api/client/http/v;

    .line 338
    return-void
.end method


# virtual methods
.method public gW(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 385
    invoke-static {p1}, Lcom/google/api/client/googleapis/a/a;->gU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->cwi:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public gX(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 421
    invoke-static {p1}, Lcom/google/api/client/googleapis/a/a;->gV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->cwj:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public gY(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->cwk:Ljava/lang/String;

    .line 481
    return-object p0
.end method
