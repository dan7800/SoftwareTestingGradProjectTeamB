.class public final Lcom/android/email/activity/setup/aq;
.super Lcom/android/email/activity/setup/x;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/email/activity/setup/ax;


# instance fields
.field private OP:Landroid/widget/CheckBox;

.field private Om:Landroid/widget/EditText;

.field private On:Lcom/android/email/activity/setup/AuthenticationView;

.field private Oo:Landroid/widget/TextView;

.field private Oq:Landroid/widget/EditText;

.field private Or:Landroid/widget/EditText;

.field private Os:Landroid/widget/Spinner;

.field private Oy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/x;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;)V
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 351
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 352
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Credential;->lF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Credential;->lB()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/emailcommon/provider/Credential;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 360
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->lB()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/HostAuth;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 362
    invoke-static {p0}, Lcom/android/email/provider/a;->D(Landroid/content/Context;)V

    .line 363
    return-void

    .line 356
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Credential;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 357
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Credential;->Ln:J

    iput-wide v4, v2, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/aq;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->ig()V

    return-void
.end method

.method public static ae(Z)Lcom/android/email/activity/setup/aq;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/email/activity/setup/aq;

    invoke-direct {v0}, Lcom/android/email/activity/setup/aq;-><init>()V

    .line 84
    invoke-static {p0}, Lcom/android/email/activity/setup/aq;->W(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/aq;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v0
.end method

.method static synthetic b(Lcom/android/email/activity/setup/aq;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic c(Lcom/android/email/activity/setup/aq;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->hP()V

    return-void
.end method

.method private hP()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-boolean v2, p0, Lcom/android/email/activity/setup/aq;->Oy:Z

    if-nez v2, :cond_0

    .line 289
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Oq:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/b/s;->d(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/b/s;->c(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 284
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/aq;->OP:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AuthenticationView;->iv()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/aq;->X(Z)V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 281
    goto :goto_1

    :cond_2
    move v0, v1

    .line 285
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private ig()V
    .locals 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->it()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method private it()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x1d1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x24b

    goto :goto_0
.end method


# virtual methods
.method public final hB()Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/android/email/activity/setup/au;

    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/setup/aq;->MR:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/setup/au;-><init>(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;ZB)V

    return-object v0
.end method

.method public final hC()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->OP:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AuthenticationView;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v2, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Oq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 397
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 399
    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->MV:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 400
    iput-object v6, v2, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 402
    const/4 v0, 0x2

    return v0

    .line 386
    :cond_0
    invoke-virtual {v2, v6, v6}, Lcom/android/emailcommon/provider/HostAuth;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->it()I

    move-result v0

    .line 395
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Non-integer server port; using \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    goto :goto_1
.end method

.method public final ih()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->hP()V

    .line 408
    return-void
.end method

.method public final ii()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/setup/AccountCredentials;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 419
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/aq;->startActivityForResult(Landroid/content/Intent;I)V

    .line 420
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/android/email/activity/setup/bd;

    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/android/email/activity/setup/bd;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x3

    new-instance v5, Lcom/android/email/activity/setup/bd;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f090240

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/android/email/activity/setup/bd;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f09023f

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 193
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, v0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 196
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    iget-boolean v0, p0, Lcom/android/email/activity/setup/aq;->Oy:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/HostAuth;->ay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v4, v3, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v8, v2}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iF()V

    :cond_0
    iget v0, v3, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->OP:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/N;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0, v3}, Lcom/android/email/activity/setup/AuthenticationView;->a(ZLcom/android/emailcommon/provider/HostAuth;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Oo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Oo:Landroid/widget/TextView;

    const v4, 0x7f090223

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget v0, v3, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0xb

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/activity/setup/bd;->a(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->Oq:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, v3, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    if-eq v0, v8, :cond_6

    iget-object v4, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->describeContents()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->MS:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    iput-boolean v1, p0, Lcom/android/email/activity/setup/aq;->Oy:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->hP()V

    .line 200
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 199
    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->ig()V

    goto :goto_1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 424
    if-ne p1, v3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    .line 429
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v1, v3, v0}, Lcom/android/email/activity/setup/AuthenticationView;->a(ZLcom/android/emailcommon/provider/HostAuth;)V

    .line 431
    :cond_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/activity/setup/AuthenticationView;->a(ZLcom/android/emailcommon/provider/HostAuth;)V

    .line 298
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 299
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ca

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/a;->e(Landroid/view/View;II)V

    .line 300
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aq;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00cb

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/a;->e(Landroid/view/View;II)V

    .line 301
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->hP()V

    .line 302
    return-void

    .line 298
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/aq;->Oy:Z

    .line 102
    :cond_0
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->MV:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/email/activity/setup/aq;->MR:Z

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 117
    :goto_0
    const v0, 0x7f0d00b0

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0d00b1

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AuthenticationView;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    .line 119
    const v0, 0x7f0d00b3

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->Oq:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0d00b4

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    .line 121
    const v0, 0x7f0d00c9

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->OP:Landroid/widget/CheckBox;

    .line 122
    const v0, 0x7f0d00b5

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    .line 123
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->OP:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    const v0, 0x7f0d00ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/aq;->Oo:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Os:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/email/activity/setup/ar;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/ar;-><init>(Lcom/android/email/activity/setup/aq;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 148
    new-instance v0, Lcom/android/email/activity/setup/at;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/at;-><init>(Lcom/android/email/activity/setup/aq;)V

    .line 159
    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Om:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Oq:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v2, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->Or:Landroid/widget/EditText;

    const-string v2, "0123456789"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/aq;->an(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/android/email/activity/setup/aq;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AuthenticationView;->a(Lcom/android/email/activity/setup/ax;)V

    .line 171
    return-object v1

    .line 112
    :cond_0
    const v0, 0x7f04002a

    const v1, 0x7f090246

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/aq;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/email/activity/setup/x;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/email/activity/setup/aq;->hP()V

    .line 209
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/aq;->Oy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    return-void
.end method
