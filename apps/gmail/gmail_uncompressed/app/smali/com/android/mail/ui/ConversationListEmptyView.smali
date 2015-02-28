.class public Lcom/android/mail/ui/ConversationListEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aGH:Landroid/widget/TextView;

.field private aGe:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationListEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Folder;Ljava/lang/String;Landroid/support/v4/e/a;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    if-eqz p4, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGe:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/mail/utils/o;->a(Landroid/widget/ImageView;Lcom/android/mail/providers/Folder;)V

    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGH:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_1
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGe:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uS()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0900fe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3, p2}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uT()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0d013e

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGe:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListEmptyView;->aGH:Landroid/widget/TextView;

    .line 53
    return-void
.end method
