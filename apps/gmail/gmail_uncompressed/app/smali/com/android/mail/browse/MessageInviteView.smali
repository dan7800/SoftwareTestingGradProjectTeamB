.class public Lcom/android/mail/browse/MessageInviteView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ald:Lcom/android/mail/providers/Message;

.field private atq:Lcom/android/mail/browse/aJ;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageInviteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/mail/browse/aJ;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/aJ;-><init>(Lcom/android/mail/browse/MessageInviteView;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageInviteView;->atq:Lcom/android/mail/browse/aJ;

    .line 46
    iput-object p1, p0, Lcom/android/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/MessageInviteView;)Lcom/android/mail/providers/Message;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/browse/MessageInviteView;->ald:Lcom/android/mail/providers/Message;

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/android/mail/providers/Message;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mail/browse/MessageInviteView;->ald:Lcom/android/mail/providers/Message;

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 65
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 69
    const v2, 0x7f0d015f

    if-ne v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/mail/browse/MessageInviteView;->ald:Lcom/android/mail/providers/Message;

    iget-object v1, v1, Lcom/android/mail/providers/Message;->aBs:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/android/mail/browse/MessageInviteView;->ald:Lcom/android/mail/providers/Message;

    iget-object v2, v2, Lcom/android/mail/providers/Message;->aBs:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/android/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v2, "UnifiedEmail"

    const-string v3, "SENDING INVITE COMMAND, VALUE=%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    const-string v2, "respond"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    iget-object v0, p0, Lcom/android/mail/browse/MessageInviteView;->atq:Lcom/android/mail/browse/aJ;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aJ;->b(Landroid/content/ContentValues;)V

    .line 89
    :cond_1
    return-void

    .line 75
    :cond_2
    const v2, 0x7f0d0160

    if-ne v1, v2, :cond_3

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_3
    const v2, 0x7f0d0161

    if-ne v1, v2, :cond_4

    .line 78
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_4
    const v2, 0x7f0d0162

    if-ne v1, v2, :cond_0

    .line 80
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0d015f

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0d0160

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0d0161

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0d0162

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
