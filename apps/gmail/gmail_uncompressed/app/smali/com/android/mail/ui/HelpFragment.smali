.class public final Lcom/android/mail/ui/HelpFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private aKF:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "help.url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 64
    iget-object v1, p0, Lcom/android/mail/ui/HelpFragment;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f10000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    const v0, 0x7f0d0296

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/HelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    :cond_0
    const v0, 0x7f0d0297

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Landroid/support/v4/d/a;->ay()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    :cond_1
    return-void

    .line 91
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/HelpFragment;->setHasOptionsMenu(Z)V

    .line 71
    const v0, 0x7f040087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const v0, 0x7f0d0109

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/mail/ui/HelpFragment;->aKF:Landroid/webkit/WebView;

    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/HelpFragment;->aKF:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    if-eqz p3, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/mail/ui/HelpFragment;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 80
    :cond_0
    return-object v1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 104
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 110
    :cond_1
    const v2, 0x7f0d0296

    if-ne v0, v2, :cond_2

    .line 111
    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/HelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/HelpFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    const v2, 0x7f0d0297

    if-ne v0, v2, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0901a6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/mail/ui/HelpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mail/ui/HelpFragment;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "print"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    new-instance v4, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v4}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const v2, 0x7f0d0298

    if-ne v0, v2, :cond_4

    .line 117
    new-instance v0, Lcom/android/mail/ui/ce;

    invoke-direct {v0}, Lcom/android/mail/ui/ce;-><init>()V

    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "copyright"

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/ui/ce;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const v2, 0x7f0d029a

    if-ne v0, v2, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/android/mail/ui/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mail/ui/cn;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 122
    :cond_5
    const v2, 0x7f0d0299

    if-ne v0, v2, :cond_6

    .line 123
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/HelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/HelpFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method
