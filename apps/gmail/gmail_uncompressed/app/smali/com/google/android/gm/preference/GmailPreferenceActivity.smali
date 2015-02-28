.class public Lcom/google/android/gm/preference/GmailPreferenceActivity;
.super Lcom/android/mail/ui/settings/d;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/gm/n;


# instance fields
.field private bbA:I

.field private bbB:Z

.field private bbC:Lcom/google/android/gm/c/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mail/ui/settings/d;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbA:I

    .line 276
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 1
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
    .line 186
    const v0, 0x7f06000e

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 202
    return-void
.end method

.method public final Cr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const v0, 0x7f0902f8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/d;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 70
    const-string v0, "extra_folder"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "extra_folder"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    const-string v1, "extra_account"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "label"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "extra_manage_folders"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    const-string v0, "extra_account"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    .line 117
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "extra_account"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-string v0, "extra_account"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1, v7}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    goto :goto_1

    .line 79
    :cond_4
    if-eqz v9, :cond_1

    .line 80
    const-string v0, "reporting_problem"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    new-instance v0, Lcom/google/android/gm/preference/k;

    const-string v4, "state-feedback-error"

    const-string v5, "Feedback"

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/preference/k;-><init>(Lcom/google/android/gm/preference/GmailPreferenceActivity;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbC:Lcom/google/android/gm/c/h;

    .line 94
    const-string v0, "reporting_problem"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 96
    const-string v0, "reporting_problem"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    .line 100
    :goto_2
    if-nez v1, :cond_5

    if-eqz v0, :cond_1

    .line 101
    :cond_5
    const-string v0, "screen_shot"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 105
    iget-object v1, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbC:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Landroid/graphics/Bitmap;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    move v0, v7

    .line 98
    goto :goto_2

    .line 111
    :cond_7
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Unknown initial data uri %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v9, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 207
    const v1, 0x7f100013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4

    .prologue
    .line 230
    if-nez p2, :cond_2

    .line 231
    iget v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbA:I

    .line 232
    iget v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbA:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbB:Z

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->invalidateHeaders()V

    .line 238
    :cond_0
    :goto_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d026b

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 239
    invoke-static {p0}, Lcom/google/android/gm/a;->h(Landroid/app/Activity;)V

    .line 242
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/settings/d;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 243
    return-void

    .line 236
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity;->bbA:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 214
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->finish()V

    .line 218
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    const v1, 0x7f0d0293

    if-ne v0, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "manage_accounts"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gm/preference/l;->DI()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "manage_accounts"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 224
    invoke-static {p1, p0, v0, p0}, Lcom/google/android/gm/m;->a(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/android/mail/providers/Account;Lcom/google/android/gm/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    .line 267
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/mail/ui/settings/d;->onStart()V

    .line 131
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 132
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/mail/ui/settings/d;->onStop()V

    .line 138
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 141
    return-void
.end method
