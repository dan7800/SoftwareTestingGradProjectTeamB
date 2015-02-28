.class public final Lcom/android/email/activity/setup/ah;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"


# instance fields
.field private OB:Landroid/widget/EditText;

.field private OC:Landroid/widget/EditText;

.field private OD:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/ah;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    return-object v0
.end method

.method public static ij()Lcom/android/email/activity/setup/ah;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/email/activity/setup/ah;

    invoke-direct {v0}, Lcom/android/email/activity/setup/ah;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ik()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 74
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ah;->getView()Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ah;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bc;

    invoke-interface {v0}, Lcom/android/email/activity/setup/bc;->hN()Lcom/android/email/activity/setup/SetupDataFragment;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iA()I

    move-result v1

    .line 83
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 85
    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    .line 87
    iget-object v3, v2, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    .line 88
    iget-object v4, p0, Lcom/android/email/activity/setup/ah;->OB:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/android/email/activity/setup/ah;->OB:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ah;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    .line 97
    iget-boolean v0, v0, Lcom/android/email/service/o;->UK:Z

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OD:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->ik()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->ik()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_3
    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ah;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ah;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/setup/ai;

    invoke-direct {v4, p0, v0}, Lcom/android/email/activity/setup/ai;-><init>(Lcom/android/email/activity/setup/ah;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 60
    const v0, 0x7f040028

    const v1, 0x7f090230

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/ah;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0d00bb

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ah;->OB:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0d00bd

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0d00bc

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ah;->OD:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/email/activity/setup/ah;->OC:Landroid/widget/EditText;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 67
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/ah;->aQ(I)V

    .line 69
    return-object v1
.end method
