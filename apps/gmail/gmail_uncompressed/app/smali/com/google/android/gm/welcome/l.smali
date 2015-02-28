.class final Lcom/google/android/gm/welcome/l;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;B)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/l;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 602
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 603
    const-string v1, "WelcomeTour"

    const-string v2, "List of accounts changed. Refreshing list."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 604
    iget-object v1, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v1}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->b(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Lcom/google/android/gm/welcome/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 609
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    const-string v2, "pending-changes"

    iget-object v3, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v3}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->b(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Lcom/google/android/gm/welcome/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 612
    iget-object v2, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 616
    iget-object v1, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v1}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->c(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 617
    iget-object v1, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v1}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->b(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Lcom/google/android/gm/welcome/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/a;->getCount()I

    move-result v1

    .line 618
    :goto_1
    if-ge v0, v1, :cond_1

    .line 619
    iget-object v2, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v2}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->b(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Lcom/google/android/gm/welcome/a;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v4}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->c(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gm/welcome/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 620
    iget-object v3, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v3}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->c(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/l;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->d(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-lez v1, :cond_2

    const v0, 0x7f0903be

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0903bd

    goto :goto_2
.end method
