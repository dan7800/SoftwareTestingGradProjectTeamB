.class final Lcom/google/android/gm/provider/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic beZ:Lcom/google/android/gm/provider/D;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/D;)V
    .locals 0

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/google/android/gm/provider/E;->beZ:Lcom/google/android/gm/provider/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/google/android/gm/provider/E;->beZ:Lcom/google/android/gm/provider/D;

    invoke-static {v0}, Lcom/google/android/gm/provider/D;->a(Lcom/google/android/gm/provider/D;)V

    .line 2508
    iget-object v0, p0, Lcom/google/android/gm/provider/E;->beZ:Lcom/google/android/gm/provider/D;

    invoke-static {v0}, Lcom/google/android/gm/provider/D;->b(Lcom/google/android/gm/provider/D;)V

    .line 2509
    iget-object v0, p0, Lcom/google/android/gm/provider/E;->beZ:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->notifyObservers()V

    .line 2510
    return-void
.end method
