.class final Lcom/google/android/gm/provider/Q;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/android/gm/provider/R;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bgA:Lcom/google/android/gm/provider/P;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/P;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/gm/provider/Q;->bgA:Lcom/google/android/gm/provider/P;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/google/android/gm/provider/R;

    iget-object v1, p0, Lcom/google/android/gm/provider/Q;->bgA:Lcom/google/android/gm/provider/P;

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/R;-><init>(Lcom/google/android/gm/provider/P;)V

    return-object v0
.end method
