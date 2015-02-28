.class public Lcom/android/mail/browse/ConversationFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private alu:Lcom/android/mail/browse/m;

.field private amR:Lcom/android/mail/browse/ab;

.field private amS:Lcom/android/mail/browse/K;

.field private amT:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->alu:Lcom/android/mail/browse/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->alu:Lcom/android/mail/browse/m;

    invoke-interface {v0}, Lcom/android/mail/browse/m;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/K;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/mail/browse/ConversationFooterView;->amS:Lcom/android/mail/browse/K;

    .line 149
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ab;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    .line 103
    iget-object v1, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v2, "ignoring conversation footer tap on unbound view"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    invoke-virtual {v1}, Lcom/android/mail/browse/ab;->qK()Lcom/android/mail/browse/ae;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 109
    sget-object v1, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v2, "ignoring conversation footer tap on null header item"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    .line 113
    if-nez v1, :cond_2

    .line 114
    sget-object v1, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v2, "ignoring conversation footer tap on null message"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/mail/browse/ConversationFooterView;->amT:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/mail/providers/Message;->uV()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/browse/m;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mail/browse/ConversationFooterView;->alu:Lcom/android/mail/browse/m;

    .line 145
    return-void
.end method

.method public final b(Lcom/android/mail/browse/ab;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationFooterView;->a(Lcom/android/mail/browse/ab;)V

    .line 125
    iget-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationFooterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v1, "Unable to measure height of conversation header"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationFooterView;->getHeight()I

    move-result v0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ab;->ca(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/mail/browse/ConversationFooterView;->amS:Lcom/android/mail/browse/K;

    invoke-interface {v1, v0}, Lcom/android/mail/browse/K;->bV(I)V

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {p0, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v1, "ignoring conversation footer tap on unbound view"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->amR:Lcom/android/mail/browse/ab;

    invoke-virtual {v0}, Lcom/android/mail/browse/ab;->qK()Lcom/android/mail/browse/ae;

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v1, "ignoring conversation footer tap on null header item"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    sget-object v0, Lcom/android/mail/browse/ConversationFooterView;->mW:Ljava/lang/String;

    const-string v1, "ignoring conversation footer tap on null message"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 83
    const v2, 0x7f0d012b

    if-ne v1, v2, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 85
    const-string v2, "reply"

    .line 96
    :goto_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "conversation_footer_click"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 86
    :cond_3
    const v2, 0x7f0d012c

    if-ne v1, v2, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 88
    const-string v2, "reply_all"

    goto :goto_1

    .line 89
    :cond_4
    const v2, 0x7f0d012d

    if-ne v1, v2, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->d(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 91
    const-string v2, "forward"

    goto :goto_1

    .line 93
    :cond_5
    const-string v2, "lolwut"

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0d012a

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationFooterView;->amT:Landroid/view/View;

    .line 60
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0d012c

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
