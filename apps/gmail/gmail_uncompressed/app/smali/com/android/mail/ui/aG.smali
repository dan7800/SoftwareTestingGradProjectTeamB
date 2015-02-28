.class public final Lcom/android/mail/ui/aG;
.super Lcom/android/mail/ui/ConversationTipView;
.source "SourceFile"


# instance fields
.field private final aHo:Lcom/android/mail/i/g;

.field private aHp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aG;->aHo:Lcom/android/mail/i/g;

    .line 38
    invoke-virtual {p0}, Lcom/android/mail/ui/aG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aG;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method private yF()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mail/ui/aG;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aG;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aG;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tE()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mail/ui/aG;->yF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    .line 44
    return-void
.end method

.method public final dismiss()V
    .locals 6

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/aG;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tF()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    .line 70
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "long_press_tip"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 73
    return-void
.end method

.method public final wk()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/mail/ui/aG;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/mail/ui/aG;->yF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    .line 49
    iget-boolean v0, p0, Lcom/android/mail/ui/aG;->aHp:Z

    return v0
.end method
