.class final Lcom/google/api/client/http/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final buv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field final cwT:Lcom/google/api/client/util/e;

.field final cwU:Ljava/lang/StringBuilder;

.field final cwV:Lcom/google/api/client/util/k;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/o;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1114
    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/q;->buv:Ljava/util/List;

    .line 1115
    invoke-static {v0, v3}, Lcom/google/api/client/util/k;->a(Ljava/lang/Class;Z)Lcom/google/api/client/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/q;->cwV:Lcom/google/api/client/util/k;

    .line 1116
    iput-object p2, p0, Lcom/google/api/client/http/q;->cwU:Ljava/lang/StringBuilder;

    .line 1117
    new-instance v0, Lcom/google/api/client/util/e;

    invoke-direct {v0, p1}, Lcom/google/api/client/util/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/api/client/http/q;->cwT:Lcom/google/api/client/util/e;

    .line 1118
    return-void
.end method
