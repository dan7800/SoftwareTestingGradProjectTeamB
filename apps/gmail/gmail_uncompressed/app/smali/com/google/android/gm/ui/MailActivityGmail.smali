.class public Lcom/google/android/gm/ui/MailActivityGmail;
.super Lcom/android/mail/ui/MailActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/c/e;


# static fields
.field private static final ajR:Landroid/content/UriMatcher;


# instance fields
.field private aXb:Lcom/google/android/gms/f/a;

.field private aXj:Lcom/google/android/gm/c/a;

.field private bqB:Lcom/google/android/gm/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 87
    sput-object v0, Lcom/google/android/gm/ui/MailActivityGmail;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/label/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/google/android/gm/ui/MailActivityGmail;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gm"

    const-string v2, "*/label/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/google/android/gm/ui/MailActivityGmail;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/label/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mail/ui/MailActivity;-><init>()V

    .line 96
    new-instance v0, Lcom/google/android/gm/ui/n;

    invoke-direct {v0}, Lcom/google/android/gm/ui/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aLa:Lcom/android/mail/ui/aF;

    .line 97
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Lcom/android/a/a;)Lcom/android/mail/b/j;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Lcom/google/android/gm/ui/l;

    iget-object v1, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->yd()Lcom/android/mail/ui/O;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mail/ui/O;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gm/ui/l;-><init>(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/android/a/a;)V

    return-object v0
.end method

.method public final a(Lcom/android/mail/providers/Account;I)V
    .locals 1

    .prologue
    .line 317
    invoke-static {p2}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const v0, 0x7f090064

    .line 325
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/MailActivityGmail;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/ay;->a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 326
    return-void

    .line 320
    :cond_0
    invoke-static {p2}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const v0, 0x7f090063

    goto :goto_0

    .line 323
    :cond_1
    const v0, 0x7f0902f7

    goto :goto_0
.end method

.method public final dy(I)V
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->finish()V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->DE()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/c/h;->U(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/MailActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->finish()V

    .line 187
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_required_sanitizer_version_number"

    invoke-static {v0, v1, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mail/i/g;->cx(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_1

    const-string v1, "label"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "account"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string v0, "label"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v0, "account"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 170
    invoke-static {p0, v0, v1}, Lcom/google/android/gm/ay;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/MailActivityGmail;->setIntent(Landroid/content/Intent;)V

    .line 175
    new-instance v0, Lcom/google/android/gm/ui/G;

    const-string v4, "state-resolving-people-error"

    const-string v5, "Contacts"

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ui/G;-><init>(Lcom/google/android/gm/ui/MailActivityGmail;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    .line 184
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {p0}, Lcom/google/android/gm/ay;->aX(Landroid/content/Context;)Lcom/google/android/gms/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/google/android/gm/ui/MailActivityGmail;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 122
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_3
    move-object v1, v3

    move-object v0, v3

    goto :goto_1

    .line 124
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 130
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "Public content provider view intent"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 145
    invoke-static {p0, v0, v4}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lcom/google/android/gm/provider/U;->size()I

    move-result v8

    move v1, v4

    .line 149
    :goto_4
    if-ge v1, v8, :cond_4

    .line 150
    invoke-virtual {v5, v1}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v4

    .line 151
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-nez v9, :cond_3

    .line 152
    invoke-virtual {v4}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    sget-object v5, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v6, "problem parsing labelId"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v1, v6, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v3

    .line 141
    goto/16 :goto_1

    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move-object v1, v3

    .line 158
    goto/16 :goto_1

    .line 160
    :pswitch_2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inboxFallback"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    const-string v1, "folderUri"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_5
    move-object v0, v2

    goto/16 :goto_2

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 263
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/MailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 275
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->openOptionsMenu()V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/MailActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/mail/ui/MailActivity;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/c/a;->cancel(Z)Z

    .line 255
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-super {p0}, Lcom/android/mail/ui/MailActivity;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "activity"

    aput-object v3, v2, v4

    const-string v3, "main"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/f/a;->g(Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    invoke-static {v0, v1, v5}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lcom/google/android/gm/c/a;

    invoke-direct {v0, p0}, Lcom/google/android/gm/c/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/c/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/mail/ui/MailActivity;->onStart()V

    .line 198
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStart()V

    .line 199
    return-void
.end method

.method protected onStop()V
    .locals 10

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/O;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v7

    .line 204
    if-eqz v7, :cond_0

    .line 205
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/b;->bS(Landroid/content/Context;)I

    move-result v0

    .line 209
    if-lez v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 213
    invoke-virtual {v0}, Lcom/android/mail/i/g;->tW()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 215
    invoke-virtual {v0, v2, v3}, Lcom/android/mail/i/g;->R(J)V

    .line 216
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v7, v6

    .line 217
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/c/c;->ft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "account_present"

    invoke-static {v2}, Lcom/google/android/gm/c/c;->fu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 216
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStop()V

    .line 228
    invoke-super {p0}, Lcom/android/mail/ui/MailActivity;->onStop()V

    .line 229
    return-void
.end method

.method public final yj()Lcom/android/mail/ui/ar;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/google/android/gm/ui/k;

    iget-object v1, p0, Lcom/google/android/gm/ui/MailActivityGmail;->bqB:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/MailActivityGmail;->yd()Lcom/android/mail/ui/O;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mail/ui/O;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/ui/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zJ()Lcom/android/mail/providers/z;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/google/android/gm/as;

    invoke-direct {v0, p0}, Lcom/google/android/gm/as;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
