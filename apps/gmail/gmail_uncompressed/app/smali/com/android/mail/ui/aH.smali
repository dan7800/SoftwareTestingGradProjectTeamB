.class public final Lcom/android/mail/ui/aH;
.super Lcom/android/mail/ui/ConversationTipView;
.source "SourceFile"


# instance fields
.field private final aHo:Lcom/android/mail/i/g;

.field private aqE:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aH;->aHo:Lcom/android/mail/i/g;

    .line 22
    invoke-virtual {p0}, Lcom/android/mail/ui/aH;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aH;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method

.method private yF()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mail/ui/aH;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aH;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aH;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tC()Z

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
    .line 33
    invoke-direct {p0}, Lcom/android/mail/ui/aH;->yF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    .line 34
    return-void
.end method

.method public final dismiss()V
    .locals 6

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mail/ui/aH;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tD()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    .line 61
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "photo_teaser"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 64
    return-void
.end method

.method public final wk()V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/mail/ui/aH;->dismiss()V

    .line 54
    :cond_0
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/mail/ui/aH;->yF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    .line 40
    iget-boolean v0, p0, Lcom/android/mail/ui/aH;->aqE:Z

    return v0
.end method

.method protected final yG()Lcom/android/mail/ui/aO;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/mail/ui/aO;

    invoke-direct {v0}, Lcom/android/mail/ui/aO;-><init>()V

    return-object v0
.end method
