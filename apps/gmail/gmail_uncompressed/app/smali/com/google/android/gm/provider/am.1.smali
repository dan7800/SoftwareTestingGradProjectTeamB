.class final Lcom/google/android/gm/provider/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/ag;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FK()V
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->GA()V

    .line 1836
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/ah;)V
    .locals 4

    .prologue
    .line 1820
    invoke-virtual {p1}, Lcom/google/android/gm/provider/ah;->FM()J

    move-result-wide v0

    .line 1821
    iget-object v2, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gm/provider/D;->ae(J)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->u(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/ah;->FL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    :cond_0
    return-void
.end method

.method public final m(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/google/android/gm/provider/am;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V

    .line 1829
    return-void
.end method
