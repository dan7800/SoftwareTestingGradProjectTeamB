.class public final Lcom/android/email/activity/setup/R;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"


# instance fields
.field private NA:Landroid/widget/EditText;

.field private NB:Landroid/view/View;

.field private NC:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/R;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/email/activity/setup/R;->hP()V

    return-void
.end method

.method public static hO()Lcom/android/email/activity/setup/R;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/email/activity/setup/R;

    invoke-direct {v0}, Lcom/android/email/activity/setup/R;-><init>()V

    return-object v0
.end method

.method private hP()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/email/activity/setup/R;->hQ()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, v3

    if-ne v2, v0, :cond_0

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/R;->Z(Z)V

    .line 110
    return-void

    :cond_0
    move v0, v1

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public final Z(Z)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->Z(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/email/activity/setup/R;->NB:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    return-void
.end method

.method public final hQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/email/activity/setup/R;->NA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hR()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/email/activity/setup/R;->NC:Z

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/android/email/activity/setup/R;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/T;

    .line 89
    const v2, 0x7f0d00d0

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/setup/R;->NC:Z

    .line 92
    invoke-interface {v0}, Lcom/android/email/activity/setup/T;->hv()V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    const v2, 0x7f0d00cf

    if-ne v1, v2, :cond_1

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/R;->NC:Z

    .line 95
    invoke-interface {v0}, Lcom/android/email/activity/setup/T;->hv()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    const v0, 0x7f040025

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/R;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 52
    const v0, 0x7f0d00a4

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/R;->NA:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f0d00cf

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/R;->NB:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/android/email/activity/setup/R;->NB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v0, Lcom/android/email/activity/setup/S;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/S;-><init>(Lcom/android/email/activity/setup/R;)V

    .line 69
    iget-object v2, p0, Lcom/android/email/activity/setup/R;->NA:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/R;->aQ(I)V

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/R;->NB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-object v1
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/android/email/activity/setup/R;->hP()V

    .line 82
    return-void
.end method
