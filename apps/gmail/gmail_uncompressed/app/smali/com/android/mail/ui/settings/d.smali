.class public Lcom/android/mail/ui/settings/d;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field private aOS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mail/ui/settings/GeneralPrefsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private aOT:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/settings/d;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mail/ui/settings/d;->aOT:Landroid/database/Cursor;

    return-object p1
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 93
    instance-of v0, p1, Lcom/android/mail/ui/settings/GeneralPrefsFragment;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/mail/ui/settings/GeneralPrefsFragment;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mail/ui/settings/d;->aOS:Ljava/lang/ref/WeakReference;

    .line 97
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    const v0, 0x7f060016

    invoke-virtual {p0, v0, p1}, Lcom/android/mail/ui/settings/d;->loadHeadersFromResource(ILjava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/android/mail/ui/settings/d;->aOT:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/settings/d;->aOT:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_0
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    iget-object v0, p0, Lcom/android/mail/ui/settings/d;->aOT:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 112
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 114
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 122
    :goto_0
    iget-object v2, v0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 123
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 124
    const-string v3, "email"

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/settings/d;->aOT:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/settings/d;->A(Ljava/util/List;)V

    .line 133
    return-void

    .line 119
    :cond_4
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/d;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/d;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mail/ui/settings/e;

    invoke-direct {v2, p0, v3}, Lcom/android/mail/ui/settings/e;-><init>(Lcom/android/mail/ui/settings/d;B)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 62
    return-void
.end method
