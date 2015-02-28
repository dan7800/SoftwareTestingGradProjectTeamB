.class final Lcom/android/mail/d/i;
.super Lcom/android/mail/d/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)V
    .locals 6

    .prologue
    .line 30
    const v4, 0x7f0200a0

    const v5, 0x7f0900ba

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/d/f;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;II)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/utils/p;I)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x7

    return v0
.end method

.method public final ta()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final tb()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    const v2, 0x7f0d026c

    invoke-virtual {p0}, Lcom/android/mail/d/i;->tc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/mail/d/i;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/d/i;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->e(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    .line 39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "[FooterItem VIEW_SETTINGS_ITEM]"

    return-object v0
.end method
