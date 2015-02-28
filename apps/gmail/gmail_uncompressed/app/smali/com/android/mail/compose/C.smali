.class public final Lcom/android/mail/compose/C;
.super Lcom/android/ex/chips/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/ex/chips/a;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/C;->a(Landroid/accounts/Account;)V

    .line 27
    return-void
.end method
