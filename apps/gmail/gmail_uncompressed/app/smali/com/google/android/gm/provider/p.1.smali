.class final Lcom/google/android/gm/provider/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdk:Lcom/google/android/gm/provider/o;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/o;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/gm/provider/p;->bdk:Lcom/google/android/gm/provider/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gm/provider/p;->bdk:Lcom/google/android/gm/provider/o;

    iget-object v0, v0, Lcom/google/android/gm/provider/o;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v0}, Lcom/google/android/gm/provider/k;->e(Lcom/google/android/gm/provider/k;)V

    .line 265
    return-void
.end method
