.class final Lcom/google/api/client/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cyA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final cyz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/util/f;->cyA:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/google/api/client/util/f;->cyz:Ljava/lang/Class;

    .line 62
    return-void
.end method


# virtual methods
.method final Yn()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/util/f;->cyA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/client/util/f;->cyz:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/api/client/util/O;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
