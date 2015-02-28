.class final Lcom/google/android/gm/provider/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic PG:Landroid/content/Context;

.field final synthetic bjJ:Ljava/lang/String;

.field final synthetic bjK:Landroid/os/Handler;

.field final synthetic bjL:Landroid/os/Handler;

.field final synthetic bjM:Lcom/google/android/gm/provider/aM;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/gm/provider/aM;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/android/gm/provider/ax;->PG:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gm/provider/ax;->bjJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/provider/ax;->bjK:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gm/provider/ax;->bjL:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/gm/provider/ax;->bjM:Lcom/google/android/gm/provider/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/gm/provider/ax;->PG:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/ax;->bjJ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/google/android/gm/provider/ax;->bjK:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/ay;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/provider/ay;-><init>(Lcom/google/android/gm/provider/ax;Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V

    .line 1040
    return-void
.end method
