.class final Lcom/android/mail/browse/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic amq:Lcom/android/mail/browse/u;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 2375
    iput-object p1, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 2380
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2381
    sget-object v3, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0, v3}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;)V

    goto :goto_1

    .line 2378
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 2384
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2386
    if-eqz v1, :cond_2

    .line 2387
    iget-object v0, p0, Lcom/android/mail/browse/w;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->j(Lcom/android/mail/browse/u;)V

    .line 2389
    :cond_2
    return-void
.end method
