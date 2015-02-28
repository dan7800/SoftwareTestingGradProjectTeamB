.class public Lcom/android/mail/browse/ConversationViewHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private alu:Lcom/android/mail/browse/m;

.field private amr:Lcom/android/mail/providers/Conversation;

.field private aqO:Lcom/android/mail/ui/aP;

.field private arj:Lcom/android/mail/browse/SubjectAndFolderView;

.field private ark:Lcom/android/mail/browse/StarView;

.field private arl:Lcom/android/mail/browse/ag;

.field private arm:Lcom/android/mail/browse/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationViewHeader;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ac;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arm:Lcom/android/mail/browse/ac;

    .line 126
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arm:Lcom/android/mail/browse/ac;

    iget-object v0, v0, Lcom/android/mail/browse/ac;->amr:Lcom/android/mail/providers/Conversation;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    .line 127
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/SubjectAndFolderView;->a(Lcom/android/mail/browse/ac;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->aD(Z)V

    .line 131
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ag;Lcom/android/mail/browse/m;Lcom/android/mail/ui/aP;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arl:Lcom/android/mail/browse/ag;

    .line 105
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewHeader;->alu:Lcom/android/mail/browse/m;

    .line 106
    iput-object p3, p0, Lcom/android/mail/browse/ConversationViewHeader;->aqO:Lcom/android/mail/ui/aP;

    .line 107
    return-void
.end method

.method public final aD(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->ark:Lcom/android/mail/browse/StarView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/StarView;->aD(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uL()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->ark:Lcom/android/mail/browse/StarView;

    invoke-virtual {v2, p1}, Lcom/android/mail/browse/StarView;->aD(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->ark:Lcom/android/mail/browse/StarView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/mail/browse/StarView;->setVisibility(I)V

    .line 122
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public final e(Lcom/android/mail/providers/Conversation;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arl:Lcom/android/mail/browse/ag;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->alu:Lcom/android/mail/browse/m;

    invoke-interface {v2}, Lcom/android/mail/browse/m;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/mail/browse/SubjectAndFolderView;->a(Lcom/android/mail/browse/ag;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;)V

    .line 115
    return-void
.end method

.method public final f(Lcom/android/mail/providers/Conversation;)V
    .locals 3

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    .line 151
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->e(Lcom/android/mail/providers/Conversation;)V

    .line 153
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->aD(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arm:Lcom/android/mail/browse/ac;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mail/browse/ConversationViewHeader;->mW:Ljava/lang/String;

    const-string v1, "Unable to measure height of conversation header"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getHeight()I

    move-result v0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arm:Lcom/android/mail/browse/ac;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ac;->ca(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arl:Lcom/android/mail/browse/ag;

    invoke-interface {v1, v0}, Lcom/android/mail/browse/ag;->ce(I)V

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-static {p0, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v1, :cond_0

    const v1, 0x7f0d0182

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 167
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->aD(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->aqO:Lcom/android/mail/ui/aP;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    invoke-static {v1}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "starred"

    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewHeader;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/ui/aP;->b(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0d0181

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/SubjectAndFolderView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    .line 96
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/SubjectAndFolderView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/StarView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->ark:Lcom/android/mail/browse/StarView;

    .line 98
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->ark:Lcom/android/mail/browse/StarView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/StarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-virtual {v0}, Lcom/android/mail/browse/SubjectAndFolderView;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/ah;->bi(Ljava/lang/String;)Lcom/android/mail/browse/ah;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->arl:Lcom/android/mail/browse/ag;

    invoke-interface {v1}, Lcom/android/mail/browse/ag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "copy-subject-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->arj:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/SubjectAndFolderView;->setSubject(Ljava/lang/String;)V

    .line 111
    return-void
.end method
