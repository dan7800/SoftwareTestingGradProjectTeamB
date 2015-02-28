.class public final Lcom/android/email/activity/setup/U;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/view/a;


# instance fields
.field private Mq:Landroid/content/Context;

.field private NE:Landroid/view/View;

.field private NF:Landroid/view/View;

.field private NG:Landroid/widget/EditText;

.field private NH:Landroid/widget/EditText;

.field private NI:Landroid/text/TextWatcher;

.field private NJ:Landroid/widget/TextView;

.field private NK:Landroid/widget/TextView;

.field private NL:Landroid/widget/TextView;

.field private NM:Lcom/android/email/view/CertificateSelector;

.field private NN:Landroid/view/View;

.field private NO:Landroid/widget/TextView;

.field private NP:Ljava/lang/String;

.field private NQ:Z

.field private NR:Z

.field private NS:Ljava/lang/String;

.field NT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private NU:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/email/activity/setup/U;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/android/email/activity/setup/U;

    invoke-direct {v0}, Lcom/android/email/activity/setup/U;-><init>()V

    .line 105
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 106
    const-string v2, "email"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "protocol"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "certificate"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "password_failed"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string v2, "standalone"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/U;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 336
    if-nez p2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    iput-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->lP()V

    .line 357
    :goto_1
    const-string v0, "certificate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/HostAuth;->ag(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    .line 345
    const-string v1, "provider"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    .line 347
    const-string v1, "accessToken"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    .line 349
    const-string v1, "refreshToken"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "expiresInSeconds"

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Credential;->XR:J

    .line 355
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    goto :goto_1
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final aa(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NJ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NK:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NJ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NK:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final hS()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/email/activity/setup/U;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/U;->Z(Z)V

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hT()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NU:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NU:Landroid/os/Bundle;

    .line 331
    :goto_0
    return-object v0

    .line 328
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 329
    const-string v1, "password"

    invoke-direct {p0}, Lcom/android/email/activity/setup/U;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "certificate"

    iget-object v2, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v2}, Lcom/android/email/view/CertificateSelector;->kL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final hU()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const v1, 0x7f0902dd

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/U;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    sget-object v1, Lcom/android/emailcommon/b/b;->abe:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 370
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/U;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->Mq:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "email"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NP:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "protocol"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v4, p0, Lcom/android/email/activity/setup/U;->Mq:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/activity/setup/N;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/U;->NT:Ljava/util/List;

    .line 175
    iput-boolean v1, p0, Lcom/android/email/activity/setup/U;->NR:Z

    .line 176
    if-eqz v0, :cond_4

    .line 177
    iget-object v4, p0, Lcom/android/email/activity/setup/U;->Mq:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/email/activity/setup/U;->NT:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 180
    iget-boolean v4, v0, Lcom/android/email/service/o;->UJ:Z

    iput-boolean v4, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    .line 182
    :cond_0
    iget-boolean v0, v0, Lcom/android/email/service/o;->UI:Z

    iput-boolean v0, p0, Lcom/android/email/activity/setup/U;->NR:Z

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "standalone"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0011

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 195
    :goto_1
    iget-boolean v4, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    :goto_2
    iput-boolean v1, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NE:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 200
    iget-boolean v0, p0, Lcom/android/email/activity/setup/U;->NR:Z

    if-eqz v0, :cond_3

    .line 205
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/U;->NR:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NN:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/U;->NR:Z

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const-string v0, ""

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/a;->T(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_6
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NO:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password_failed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/U;->aa(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->hS()V

    .line 218
    return-void

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    iput-boolean v1, p0, Lcom/android/email/activity/setup/U;->NQ:Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 193
    goto :goto_1

    :cond_6
    move v1, v2

    .line 195
    goto :goto_2

    :cond_7
    move v0, v3

    .line 197
    goto :goto_3

    :cond_8
    move v0, v2

    .line 198
    goto :goto_4

    :cond_9
    move v0, v3

    .line 205
    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_6
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 252
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 253
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 254
    const-string v0, "CertificateRequestor.alias"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Unknown result from certificate request %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 262
    :cond_2
    if-ne p1, v2, :cond_6

    .line 263
    if-ne p2, v2, :cond_3

    .line 264
    const-string v0, "accessToken"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "refreshToken"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v2, "expiresIn"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 270
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 271
    const-string v4, "provider"

    iget-object v5, p0, Lcom/android/email/activity/setup/U;->NS:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v4, "accessToken"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "refreshToken"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "expiresInSeconds"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iput-object v3, p0, Lcom/android/email/activity/setup/U;->NU:Landroid/os/Bundle;

    .line 276
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/V;

    .line 277
    invoke-interface {v0, v3}, Lcom/android/email/activity/setup/V;->g(Landroid/os/Bundle;)V

    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 280
    :cond_4
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Result from oauth %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 282
    :cond_5
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Unknown result code from OAUTH: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 285
    :cond_6
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Unknown request code for onActivityResult in AccountSetupBasics: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 293
    const v1, 0x7f0d00ac

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NT:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NS:Ljava/lang/String;

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v1, "email_address"

    iget-object v2, p0, Lcom/android/email/activity/setup/U;->NP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/U;->NS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/U;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const v1, 0x7f0d009b

    if-ne v0, v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/V;

    .line 306
    invoke-interface {v0}, Lcom/android/email/activity/setup/V;->hv()V

    goto :goto_0

    .line 307
    :cond_2
    const v1, 0x7f0d009a

    if-ne v0, v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/V;

    .line 309
    invoke-interface {v0}, Lcom/android/email/activity/setup/V;->onBackPressed()V

    goto :goto_0

    .line 311
    :cond_3
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "standalone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const v0, 0x7f040018

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    const v1, 0x7f0d009b

    invoke-static {v0, v1}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/U;->Ok:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->Ok:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f0d009a

    invoke-static {v0, v1}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/U;->Ol:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/android/email/activity/setup/U;->Ol:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 132
    :goto_0
    const v0, 0x7f0d00aa

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    .line 133
    const v0, 0x7f0d00a8

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    .line 134
    const v0, 0x7f0d00a9

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NE:Landroid/view/View;

    .line 135
    const v0, 0x7f0d00ac

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NF:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NF:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0d00ad

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/view/CertificateSelector;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    .line 138
    const v0, 0x7f0d00ae

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NN:Landroid/view/View;

    .line 139
    const v0, 0x7f0d00af

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NO:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0d00a5

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NJ:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0d00a6

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NK:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0d00a7

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NL:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0, p0}, Lcom/android/email/view/CertificateSelector;->a(Lcom/android/email/view/a;)V

    .line 145
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/U;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "certificate"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/android/email/activity/setup/W;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/setup/W;-><init>(Lcom/android/email/activity/setup/U;B)V

    iput-object v0, p0, Lcom/android/email/activity/setup/U;->NI:Landroid/text/TextWatcher;

    .line 149
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/U;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/U;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    return-object v1

    .line 128
    :cond_0
    const v0, 0x7f040026

    const v1, 0x7f090217

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/U;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0}, Lcom/android/email/activity/setup/ab;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iput-object v2, p0, Lcom/android/email/activity/setup/U;->NG:Landroid/widget/EditText;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/U;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    iput-object v2, p0, Lcom/android/email/activity/setup/U;->NH:Landroid/widget/EditText;

    .line 231
    :cond_1
    return-void
.end method
