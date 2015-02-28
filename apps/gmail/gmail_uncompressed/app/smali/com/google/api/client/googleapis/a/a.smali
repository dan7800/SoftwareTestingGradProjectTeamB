.class public abstract Lcom/google/api/client/googleapis/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cwd:Ljava/util/logging/Logger;


# instance fields
.field private final cvE:Lcom/google/api/client/http/u;

.field private final cwh:Lcom/google/api/client/googleapis/a/e;

.field private final cwi:Ljava/lang/String;

.field private final cwj:Ljava/lang/String;

.field private final cwk:Ljava/lang/String;

.field private final cwl:Lcom/google/api/client/util/F;

.field private cwm:Z

.field private cwn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/api/client/googleapis/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/a/a;->cwd:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/a/b;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwh:Lcom/google/api/client/googleapis/a/e;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwh:Lcom/google/api/client/googleapis/a/e;

    .line 78
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/a/a;->gU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwi:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/a/a;->gV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwj:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwk:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/M;->gK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/api/client/googleapis/a/a;->cwd:Ljava/util/logging/Logger;

    const-string v1, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwk:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwp:Lcom/google/api/client/http/v;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwo:Lcom/google/api/client/http/A;

    invoke-virtual {v0}, Lcom/google/api/client/http/A;->XS()Lcom/google/api/client/http/u;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cvE:Lcom/google/api/client/http/u;

    .line 87
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwl:Lcom/google/api/client/util/F;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwl:Lcom/google/api/client/util/F;

    .line 88
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/a/b;->cwm:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/a/a;->cwm:Z

    .line 89
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/a/b;->cwn:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/a/a;->cwn:Z

    .line 90
    return-void

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/google/api/client/googleapis/a/b;->cwo:Lcom/google/api/client/http/A;

    iget-object v1, p1, Lcom/google/api/client/googleapis/a/b;->cwp:Lcom/google/api/client/http/v;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/A;->a(Lcom/google/api/client/http/v;)Lcom/google/api/client/http/u;

    move-result-object v0

    goto :goto_0
.end method

.method static gU(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    const-string v0, "root URL cannot be null."

    invoke-static {p0, v0}, Lcom/google/api/client/util/H;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    :cond_0
    return-object p0
.end method

.method static gV(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 264
    const-string v0, "service path cannot be null"

    invoke-static {p0, v0}, Lcom/google/api/client/util/H;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 266
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/api/client/util/H;->c(ZLjava/lang/Object;)V

    .line 268
    const-string p0, ""

    .line 277
    :cond_0
    :goto_0
    return-object p0

    .line 269
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final WY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/a;->cwi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/a;->cwj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final WZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwk:Ljava/lang/String;

    return-object v0
.end method

.method public final Xa()Lcom/google/api/client/http/u;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cvE:Lcom/google/api/client/http/u;

    return-object v0
.end method

.method public Xb()Lcom/google/api/client/util/F;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwl:Lcom/google/api/client/util/F;

    return-object v0
.end method

.method protected a(Lcom/google/api/client/googleapis/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/a/c",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwh:Lcom/google/api/client/googleapis/a/e;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->cwh:Lcom/google/api/client/googleapis/a/e;

    .line 189
    :cond_0
    return-void
.end method
