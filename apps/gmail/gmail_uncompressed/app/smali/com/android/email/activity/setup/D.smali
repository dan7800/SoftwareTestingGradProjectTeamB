.class public Lcom/android/email/activity/setup/D;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/D;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/setup/D;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/D;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400a4

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "quickResponse"

    aput-object v5, v4, v6

    new-array v5, v7, [I

    const v7, 0x7f0d01e5

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/setup/D;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d009c

    invoke-static {v1, v2}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/email/activity/setup/D;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/E;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/E;-><init>(Lcom/android/email/activity/setup/D;Landroid/widget/SimpleCursorAdapter;)V

    invoke-virtual {v1, v6, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 104
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/setup/D;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/D;->Nc:Lcom/android/mail/providers/Account;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/D;->setHasOptionsMenu(Z)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 145
    const v0, 0x7f100011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 119
    const v0, 0x7f040020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 122
    const v0, 0x7f0d009c

    invoke-static {v2, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 124
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0d009d

    invoke-static {v1, v3}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    new-instance v1, Lcom/android/email/activity/setup/F;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/F;-><init>(Lcom/android/email/activity/setup/D;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d02a9

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/email/activity/setup/D;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/android/email/activity/setup/aK;->a(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/email/activity/setup/aK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/D;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/aK;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
