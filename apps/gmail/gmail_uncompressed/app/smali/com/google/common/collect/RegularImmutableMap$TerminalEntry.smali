.class final Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/aD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/aD",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    return-void
.end method


# virtual methods
.method public final aar()Lcom/google/common/collect/aD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aD",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
