.class final Lcom/google/android/gm/provider/bD;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Stack",
        "<",
        "Lcom/google/android/gm/provider/bF;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic bnj:Lcom/google/android/gm/provider/bB;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/bB;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gm/provider/bD;->bnj:Lcom/google/android/gm/provider/bB;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method
