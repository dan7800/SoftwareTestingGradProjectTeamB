.class public Lcom/android/mail/browse/MessageFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/browse/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/mail/browse/q;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private alu:Lcom/android/mail/browse/m;

.field private aqI:Landroid/app/LoaderManager;

.field private aqT:Landroid/support/v4/e/a;

.field private asg:Lcom/android/mail/browse/ae;

.field private ash:Lcom/android/mail/browse/f;

.field private asi:Landroid/view/View;

.field private asj:Lcom/android/mail/ui/AttachmentTileGrid;

.field private ask:Landroid/widget/LinearLayout;

.field private asl:Lcom/android/mail/browse/aE;

.field private asm:Ljava/lang/Integer;

.field private c:Landroid/app/FragmentManager;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/MessageFooterView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->wC:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method

.method private aG(Z)V
    .locals 7

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    invoke-virtual {v0}, Lcom/android/mail/browse/f;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/f;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    invoke-virtual {v2}, Lcom/android/mail/browse/f;->oI()Lcom/android/mail/providers/Attachment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vC()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 173
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    :cond_2
    :goto_1
    return-void

    .line 173
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uB()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asl:Lcom/android/mail/browse/aE;

    invoke-interface {v3}, Lcom/android/mail/browse/aE;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    invoke-static {v0}, Lcom/android/mail/ui/AttachmentTile;->g(Lcom/android/mail/providers/Attachment;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->n(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mail/browse/ConversationMessage;->aBr:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/AttachmentTileGrid;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    iget-object v1, p0, Lcom/android/mail/browse/MessageFooterView;->c:Landroid/app/FragmentManager;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v3}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/ui/AttachmentTileGrid;->a(Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/browse/ConversationMessage;Ljava/util/List;Z)V

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v6, p1}, Lcom/android/mail/browse/MessageFooterView;->b(Ljava/util/List;Z)V

    goto :goto_1
.end method

.method private b(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    invoke-direct {p0}, Lcom/android/mail/browse/MessageFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Attachment;

    .line 227
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v3

    .line 228
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageAttachmentBar;

    .line 231
    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->wC:Landroid/view/LayoutInflater;

    invoke-static {v0, p0}, Lcom/android/mail/browse/MessageAttachmentBar;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentBar;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageAttachmentBar;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageAttachmentBar;->a(Landroid/app/FragmentManager;)V

    .line 235
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v3}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->aqT:Landroid/support/v4/e/a;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v4}, Lcom/android/mail/browse/ae;->qS()Lcom/android/mail/browse/aa;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_3

    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->aqT:Landroid/support/v4/e/a;

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/mail/browse/MessageFooterView;->aqT:Landroid/support/v4/e/a;

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/MessageAttachmentBar;->a(Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Account;Lcom/android/mail/browse/ConversationMessage;ZLandroid/support/v4/e/a;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/mail/browse/aa;->qJ()Landroid/support/v4/e/a;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->aqT:Landroid/support/v4/e/a;

    goto :goto_2

    .line 241
    :cond_4
    return-void
.end method

.method private oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->alu:Lcom/android/mail/browse/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->alu:Lcom/android/mail/browse/m;

    invoke-interface {v0}, Lcom/android/mail/browse/m;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/android/mail/browse/m;Lcom/android/mail/browse/aE;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/mail/browse/MessageFooterView;->aqI:Landroid/app/LoaderManager;

    .line 112
    iput-object p2, p0, Lcom/android/mail/browse/MessageFooterView;->c:Landroid/app/FragmentManager;

    .line 113
    iput-object p3, p0, Lcom/android/mail/browse/MessageFooterView;->alu:Lcom/android/mail/browse/m;

    .line 114
    iput-object p4, p0, Lcom/android/mail/browse/MessageFooterView;->asl:Lcom/android/mail/browse/aE;

    .line 115
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ae;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 119
    iput-object p1, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    .line 121
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    if-nez v3, :cond_4

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v0, v3, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asm:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asm:Ljava/lang/Integer;

    invoke-static {v3, v0}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->aqI:Landroid/app/LoaderManager;

    iget-object v4, p0, Lcom/android/mail/browse/MessageFooterView;->asm:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 132
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v3}, Lcom/android/mail/ui/AttachmentTileGrid;->removeAllViewsInLayout()V

    .line 133
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 134
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asi:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v3, v2}, Lcom/android/mail/ui/AttachmentTileGrid;->setVisibility(I)V

    .line 136
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_1
    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asm:Ljava/lang/Integer;

    .line 142
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 143
    sget-object v3, Lcom/android/mail/browse/MessageFooterView;->mW:Ljava/lang/String;

    const-string v4, "binding footer view, calling initLoader for message %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->aqI:Landroid/app/LoaderManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-direct {p0, v1}, Lcom/android/mail/browse/MessageFooterView;->aG(Z)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 155
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asi:Landroid/view/View;

    iget-boolean v4, v0, Lcom/android/mail/browse/ConversationMessage;->aBx:Z

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/MessageFooterView;->setVisibility(I)V

    .line 158
    return-void

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v3}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 155
    goto :goto_1

    :cond_6
    move v1, v2

    .line 157
    goto :goto_2
.end method

.method public final oU()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 294
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_entire_message"

    const-string v2, "clicked"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/android/mail/browse/MessageFooterView;->mW:Ljava/lang/String;

    const-string v1, "Trying to open clipped message with no activity defined"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageFooterView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v3}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v4, v3, Lcom/android/mail/browse/ConversationMessage;->aBy:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "extra-account-uri"

    iget-object v5, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "permalink"

    iget-object v5, v3, Lcom/android/mail/browse/ConversationMessage;->aBy:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "account-name"

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "server-message-id"

    iget-object v3, v3, Lcom/android/mail/browse/ConversationMessage;->aBd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/android/mail/browse/e;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageFooterView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v2}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/browse/ConversationMessage;->aBm:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 102
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asi:Landroid/view/View;

    .line 103
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AttachmentTileGrid;

    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asj:Lcom/android/mail/ui/AttachmentTileGrid;

    .line 104
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ask:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->asi:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    check-cast p2, Lcom/android/mail/browse/f;

    iput-object p2, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    invoke-virtual {v0}, Lcom/android/mail/browse/f;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageFooterView;->aG(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/MessageFooterView;->ash:Lcom/android/mail/browse/f;

    .line 277
    return-void
.end method
