.class public final Lcom/android/email/activity/setup/O;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"


# instance fields
.field private Nt:Ljava/lang/String;

.field private Ny:Ljava/lang/String;

.field private Nz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/activity/setup/O;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 59
    const-string v1, "accountEmail"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "userProtocol"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "providerProtocol"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/email/activity/setup/O;

    invoke-direct {v1}, Lcom/android/email/activity/setup/O;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/O;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/setup/O;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/P;

    .line 112
    const v2, 0x7f0d009f

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/email/activity/setup/O;->Ny:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/P;->q(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    const v2, 0x7f0d00a0

    if-ne v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/email/activity/setup/O;->Nz:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/P;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/email/activity/setup/O;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v1, "accountEmail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/O;->Nt:Ljava/lang/String;

    .line 73
    const-string v1, "userProtocol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/O;->Ny:Ljava/lang/String;

    .line 74
    const-string v1, "providerProtocol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/O;->Nz:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/O;->Ny:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    iget-object v2, v0, Lcom/android/email/service/o;->name:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/setup/O;->Nz:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    iget-object v3, v0, Lcom/android/email/service/o;->name:Ljava/lang/String;

    .line 87
    const v0, 0x7f040023

    const v4, 0x7f09022e

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/android/email/activity/setup/O;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 90
    const v0, 0x7f0d009e

    invoke-static {v4, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    const v5, 0x7f09022f

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/setup/O;->Nt:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f0d00d0

    invoke-static {v4, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 95
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const v0, 0x7f0d009f

    invoke-static {v4, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f0d00a0

    invoke-static {v4, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object v4
.end method
