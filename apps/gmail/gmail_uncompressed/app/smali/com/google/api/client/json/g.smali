.class public final Lcom/google/api/client/json/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cxZ:Lcom/google/api/client/json/d;

.field cyc:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/d;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/json/g;->cyc:Ljava/util/Collection;

    .line 158
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/d;

    iput-object v0, p0, Lcom/google/api/client/json/g;->cxZ:Lcom/google/api/client/json/d;

    .line 159
    return-void
.end method


# virtual methods
.method public final F(Ljava/util/Collection;)Lcom/google/api/client/json/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/json/g;"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/api/client/json/g;->cyc:Ljava/util/Collection;

    .line 186
    return-object p0
.end method

.method public final Ye()Lcom/google/api/client/json/f;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/google/api/client/json/f;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/f;-><init>(Lcom/google/api/client/json/g;)V

    return-object v0
.end method
