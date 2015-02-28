.class public Lcom/android/email/activity/setup/ab;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected Ok:Landroid/view/View;

.field protected Ol:Landroid/view/View;

.field private ao:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public Z(Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ok:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ok:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method protected final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const v0, 0x7f04002b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    const v0, 0x7f0d00cc

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    if-lez p4, :cond_0

    .line 85
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_0
    const v0, 0x7f0d00cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    const/4 v2, 0x1

    invoke-virtual {p1, p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    const v0, 0x7f0d00d0

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ab;->Ok:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0d00ce

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ab;->Ol:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ol:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v1

    .line 88
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final aQ(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ol:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/email/activity/setup/ab;->ao:I

    return v0
.end method

.method public final ie()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/email/activity/setup/ab;->Ok:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ac;

    .line 107
    const v2, 0x7f0d00d0

    if-ne v1, v2, :cond_1

    .line 108
    invoke-interface {v0}, Lcom/android/email/activity/setup/ac;->hv()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const v2, 0x7f0d00ce

    if-ne v1, v2, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/android/email/activity/setup/ac;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "AccountSetupFragment.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/ab;->ao:I

    .line 53
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "AccountSetupFragment.state"

    iget v1, p0, Lcom/android/email/activity/setup/ab;->ao:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public final setState(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/android/email/activity/setup/ab;->ao:I

    .line 63
    return-void
.end method
