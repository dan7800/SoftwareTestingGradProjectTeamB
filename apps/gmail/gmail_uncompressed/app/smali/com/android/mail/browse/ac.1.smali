.class public final Lcom/android/mail/browse/ac;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field public final amr:Lcom/android/mail/providers/Conversation;

.field final synthetic aqW:Lcom/android/mail/browse/aa;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/providers/Conversation;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/mail/browse/ac;->amr:Lcom/android/mail/providers/Conversation;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/providers/Conversation;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/ac;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/providers/Conversation;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 132
    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationViewHeader;

    .line 134
    iget-object v1, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->b(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v2}, Lcom/android/mail/browse/aa;->c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v3}, Lcom/android/mail/browse/aa;->d(Lcom/android/mail/browse/aa;)Lcom/android/mail/ui/aP;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/browse/ConversationViewHeader;->a(Lcom/android/mail/browse/ag;Lcom/android/mail/browse/m;Lcom/android/mail/ui/aP;)V

    .line 136
    iget-object v1, p0, Lcom/android/mail/browse/ac;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mail/browse/m;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/mail/browse/ac;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationViewHeader;->e(Lcom/android/mail/providers/Conversation;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/ac;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationViewHeader;->aD(Z)V

    .line 142
    const-string v1, "overlay_item_root"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationViewHeader;->setTag(Ljava/lang/Object;)V

    .line 144
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lcom/android/mail/browse/ConversationViewHeader;

    .line 150
    invoke-virtual {p1, p0}, Lcom/android/mail/browse/ConversationViewHeader;->a(Lcom/android/mail/browse/ac;)V

    .line 151
    return-void
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v0}, Lcom/android/mail/browse/aa;->e(Lcom/android/mail/browse/aa;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    return-object v0
.end method
