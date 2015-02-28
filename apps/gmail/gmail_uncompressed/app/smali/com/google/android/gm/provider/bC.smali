.class final Lcom/google/android/gm/provider/bC;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bnj:Lcom/google/android/gm/provider/bB;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/bB;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gm/provider/bC;->bnj:Lcom/google/android/gm/provider/bB;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
