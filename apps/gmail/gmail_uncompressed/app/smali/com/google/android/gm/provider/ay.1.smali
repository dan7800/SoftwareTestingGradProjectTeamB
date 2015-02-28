.class final Lcom/google/android/gm/provider/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/aL;


# instance fields
.field final synthetic aXM:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjN:Lcom/google/android/gm/provider/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/ax;Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/google/android/gm/provider/ay;->bjN:Lcom/google/android/gm/provider/ax;

    iput-object p2, p0, Lcom/google/android/gm/provider/ay;->aXM:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final GF()V
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/gm/provider/ay;->bjN:Lcom/google/android/gm/provider/ax;

    iget-object v0, v0, Lcom/google/android/gm/provider/ax;->bjL:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/provider/az;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/az;-><init>(Lcom/google/android/gm/provider/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1038
    return-void
.end method
