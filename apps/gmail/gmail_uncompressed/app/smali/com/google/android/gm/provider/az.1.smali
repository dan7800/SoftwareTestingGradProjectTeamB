.class final Lcom/google/android/gm/provider/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjO:Lcom/google/android/gm/provider/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/ay;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/google/android/gm/provider/az;->bjO:Lcom/google/android/gm/provider/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/gm/provider/az;->bjO:Lcom/google/android/gm/provider/ay;

    iget-object v0, v0, Lcom/google/android/gm/provider/ay;->bjN:Lcom/google/android/gm/provider/ax;

    iget-object v0, v0, Lcom/google/android/gm/provider/ax;->bjM:Lcom/google/android/gm/provider/aM;

    iget-object v1, p0, Lcom/google/android/gm/provider/az;->bjO:Lcom/google/android/gm/provider/ay;

    iget-object v1, v1, Lcom/google/android/gm/provider/ay;->aXM:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/aM;->a(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1036
    return-void
.end method
