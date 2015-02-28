.class public final Lcom/google/android/gm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/android/mail/providers/Account;Lcom/google/android/gm/n;)Z
    .locals 4

    .prologue
    .line 32
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 33
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v1

    const-string v2, "menu_item"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    const v1, 0x7f0d029b

    if-ne v0, v1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/google/android/gm/ay;->be(Landroid/content/Context;)V

    .line 44
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 37
    :cond_0
    const v1, 0x7f0d028c

    if-ne v0, v1, :cond_1

    .line 38
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/b;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->dC(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    const v1, 0x7f0d026d

    if-ne v0, v1, :cond_2

    .line 40
    invoke-interface {p3}, Lcom/google/android/gm/n;->Cr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gm/ay;->a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
