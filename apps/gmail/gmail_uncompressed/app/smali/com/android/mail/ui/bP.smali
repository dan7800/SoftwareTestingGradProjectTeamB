.class final Lcom/android/mail/ui/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aKe:Lcom/android/mail/b/b;

.field public final aKf:Landroid/widget/ImageView;

.field final synthetic aKg:Lcom/android/mail/ui/bO;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/bO;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    iput-object p2, p0, Lcom/android/mail/ui/bP;->aKf:Landroid/widget/ImageView;

    .line 1684
    iget-object v0, p0, Lcom/android/mail/ui/bP;->aKf:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    return-void
.end method


# virtual methods
.method public final d(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 1696
    iput-object p1, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    .line 1697
    iget-object v0, p0, Lcom/android/mail/ui/bP;->aKe:Lcom/android/mail/b/b;

    iget-object v1, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/b/b;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 1702
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/bP;->aKf:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1703
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v0, v0, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, p0, Lcom/android/mail/ui/bP;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bB;->s(Lcom/android/mail/providers/Account;)V

    .line 1708
    return-void
.end method

.method public final zv()V
    .locals 4

    .prologue
    .line 1688
    new-instance v0, Lcom/android/mail/b/b;

    iget-object v1, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v1, v1, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v1}, Lcom/android/mail/ui/bB;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v2, v2, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v2}, Lcom/android/mail/ui/bB;->zg()Lcom/android/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v3, v3, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v3}, Lcom/android/mail/ui/bB;->xJ()Lcom/android/mail/b/j;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mail/b/b;-><init>(Landroid/content/res/Resources;Lcom/android/a/a;Lcom/android/mail/b/j;)V

    iput-object v0, p0, Lcom/android/mail/ui/bP;->aKe:Lcom/android/mail/b/b;

    .line 1690
    iget-object v0, p0, Lcom/android/mail/ui/bP;->aKe:Lcom/android/mail/b/b;

    iget-object v1, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v1, v1, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->s(Lcom/android/mail/ui/bB;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mail/ui/bP;->aKg:Lcom/android/mail/ui/bO;

    iget-object v2, v2, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->s(Lcom/android/mail/ui/bB;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/b/b;->L(II)V

    .line 1692
    iget-object v0, p0, Lcom/android/mail/ui/bP;->aKf:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mail/ui/bP;->aKe:Lcom/android/mail/b/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1693
    return-void
.end method
