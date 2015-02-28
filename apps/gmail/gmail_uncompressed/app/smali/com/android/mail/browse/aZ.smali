.class public final Lcom/android/mail/browse/aZ;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/bd;


# instance fields
.field private final auE:Lcom/android/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/mail/browse/ConversationItemView;

    invoke-direct {v0, p1, p2}, Lcom/android/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    iput-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    .line 40
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aZ;->addView(Landroid/view/View;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 1

    .prologue
    .line 65
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pG()Landroid/animation/Animator;

    move-result-object v0

    .line 67
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 69
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pH()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;)V
    .locals 10

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/browse/ConversationItemView;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;)V

    .line 62
    return-void
.end method

.method public final b(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 1

    .prologue
    .line 72
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pI()Landroid/animation/Animator;

    move-result-object v0

    .line 74
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 76
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pJ()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/mail/browse/aZ;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public final pB()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pB()Z

    move-result v0

    return v0
.end method

.method public final rY()Lcom/android/mail/browse/ConversationItemView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/browse/aZ;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->reset()V

    .line 49
    return-void
.end method
