.class public final Lcom/google/android/gm/ui/a;
.super Lcom/android/mail/ui/ConversationTipView;
.source "SourceFile"


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aHp:Z

.field private bdv:Lcom/google/android/gm/provider/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/a;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gm/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->bc(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/ui/a;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gm/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 6

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/gm/ui/a;->aHp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FE()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ui/a;->aHp:Z

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "always_show_images_tip"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 97
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/gm/ui/a;->aHp:Z

    return v0
.end method

.method protected final yO()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f040038

    return v0
.end method

.method protected final yP()V
    .locals 8

    .prologue
    const v7, 0x7f0801a9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/a;->aHy:Landroid/view/View;

    .line 49
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ui/b;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/b;-><init>(Lcom/google/android/gm/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gm/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    const v0, 0x7f09039e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gm/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0903a5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v7}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    .line 62
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lcom/google/android/gm/ui/c;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ui/c;-><init>(Lcom/google/android/gm/ui/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0900ba

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    const v2, 0x7f0903a6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f090351

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gm/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v7}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    .line 78
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Lcom/google/android/gm/ui/d;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/d;-><init>(Lcom/google/android/gm/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public final z(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/gm/ui/a;->Nc:Lcom/android/mail/providers/Account;

    .line 35
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    .line 37
    iget-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FB()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FC()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/a;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FD()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/ui/a;->aHp:Z

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
