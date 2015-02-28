.class public final Lcom/android/email/activity/setup/ad;
.super Lcom/android/email/activity/setup/x;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/activity/setup/ax;
.implements Lcom/android/email/view/a;


# instance fields
.field private NI:Landroid/text/TextWatcher;

.field private NM:Lcom/android/email/view/CertificateSelector;

.field private NN:Landroid/view/View;

.field private Np:Lcom/android/email/service/o;

.field private Om:Landroid/widget/EditText;

.field private On:Lcom/android/email/activity/setup/AuthenticationView;

.field private Oo:Landroid/widget/TextView;

.field private Op:Landroid/widget/TextView;

.field private Oq:Landroid/widget/EditText;

.field private Or:Landroid/widget/EditText;

.field private Os:Landroid/widget/Spinner;

.field private Ot:Landroid/widget/TextView;

.field private Ou:Landroid/widget/Spinner;

.field private Ov:Landroid/view/View;

.field private Ow:Landroid/widget/EditText;

.field private Ox:I

.field private Oy:Z

.field private Oz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/email/activity/setup/x;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;)V
    .locals 6

    .prologue
    .line 509
    invoke-virtual {p1}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->lB()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 511
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 512
    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Credential;->lF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Credential;->lB()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/emailcommon/provider/Credential;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 520
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->lB()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/emailcommon/provider/HostAuth;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 522
    invoke-static {p0}, Lcom/android/email/provider/a;->D(Landroid/content/Context;)V

    .line 523
    return-void

    .line 516
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Credential;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 517
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Credential;->Ln:J

    iput-wide v4, v2, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/ad;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->ig()V

    return-void
.end method

.method public static ac(Z)Lcom/android/email/activity/setup/ad;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/email/activity/setup/ad;

    invoke-direct {v0}, Lcom/android/email/activity/setup/ad;-><init>()V

    .line 101
    invoke-static {p0}, Lcom/android/email/activity/setup/ad;->W(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/ad;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method private ad(Z)I
    .locals 1

    .prologue
    .line 433
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget v0, v0, Lcom/android/email/service/o;->UF:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget v0, v0, Lcom/android/email/service/o;->port:I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;)V
    .locals 10

    .prologue
    const/16 v9, 0x2e

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p1}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 530
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 531
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 536
    iget-object v1, v2, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    const-string v4, "smtp"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/emailcommon/b/s;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "mail"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v7, :cond_1

    add-int/lit8 v0, v5, 0x1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_0
    iget-object v1, v2, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iget v2, v3, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    iget v4, v3, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 540
    return-void

    .line 536
    :cond_1
    if-eqz v6, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/email/activity/setup/ad;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->hP()V

    return-void
.end method

.method private hP()V
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/email/activity/setup/ad;->Oy:Z

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AuthenticationView;->iv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->d(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->c(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/ad;->X(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Oz:Ljava/lang/String;

    goto :goto_0

    .line 424
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private if()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ig()V
    .locals 4

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->if()Z

    move-result v0

    .line 460
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/ad;->ad(Z)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UI:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0, v1}, Lcom/android/email/view/CertificateSelector;->setVisibility(I)V

    const-string v0, ""

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/emailcommon/a;->T(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0d00af

    invoke-static {v0, v3}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->NN:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_0
    return-void

    .line 462
    :cond_1
    const/16 v0, 0x8

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final hA()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->lA()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/ad;->Ox:I

    .line 469
    invoke-super {p0}, Lcom/android/email/activity/setup/x;->hA()V

    .line 470
    return-void
.end method

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
    .line 499
    new-instance v0, Lcom/android/email/activity/setup/ag;

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/setup/ad;->MR:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/setup/ag;-><init>(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;ZB)V

    return-object v0
.end method

.method public final hC()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 551
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->bj(I)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AuthenticationView;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {v3, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AuthenticationView;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/HostAuth;->ag(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AuthenticationView;->iw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

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

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 575
    iget-object v5, p0, Lcom/android/email/activity/setup/ad;->MV:Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v1, v0}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 576
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UN:Z

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ow:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    :goto_1
    iput-object v0, v3, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 582
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0}, Lcom/android/email/view/CertificateSelector;->kL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 584
    const/4 v0, 0x1

    return v0

    .line 570
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->if()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/ad;->ad(Z)I

    move-result v0

    .line 571
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Non-integer server port; using \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    goto :goto_0

    .line 578
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 580
    :cond_3
    iput-object v2, v3, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    goto :goto_2
.end method

.method public final hU()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 620
    new-instance v0, Landroid/content/Intent;

    const v1, 0x7f0902dd

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/ad;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    sget-object v1, Lcom/android/emailcommon/b/b;->abe:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 622
    const-string v1, "CertificateRequestor.host"

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    :try_start_0
    const-string v1, "CertificateRequestor.port"

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/android/email/activity/setup/ad;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void

    .line 627
    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t parse port %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final hz()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 595
    iget v3, p0, Lcom/android/email/activity/setup/ad;->Ox:I

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 600
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/email/activity/setup/x;->hz()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 595
    goto :goto_0

    :cond_3
    move v0, v2

    .line 597
    goto :goto_0
.end method

.method public final ih()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->hP()V

    .line 606
    return-void
.end method

.method public final ii()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 613
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/setup/AccountCredentials;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 615
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/ad;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0, p0}, Lcom/android/email/view/CertificateSelector;->a(Lcom/android/email/view/a;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    .line 196
    check-cast v0, Lcom/android/email/activity/setup/bc;

    .line 198
    invoke-interface {v0}, Lcom/android/email/activity/setup/bc;->hN()Lcom/android/email/activity/setup/SetupDataFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 200
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 203
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->iC()Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    .line 207
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 208
    aget-object v4, v4, v2

    .line 209
    iget-object v5, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v5, v4, v9, v3}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iD()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UL:Z

    if-eqz v0, :cond_1

    .line 217
    new-array v0, v7, [Lcom/android/email/activity/setup/bd;

    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f090242

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v3

    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f090243

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v2

    .line 225
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, v1, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 228
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 230
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 234
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023c

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v4, Lcom/android/email/activity/setup/bd;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v4, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v4, v4, Lcom/android/email/service/o;->UH:Z

    if-eqz v4, :cond_2

    .line 245
    new-instance v4, Lcom/android/email/activity/setup/bd;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f090240

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v4, Lcom/android/email/activity/setup/bd;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f09023f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_2
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, v1, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 254
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 255
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_f

    :cond_3
    sget-object v4, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v5, "null account or host auth. account null: %b host auth null: %b"

    new-array v6, v7, [Ljava/lang/Object;

    if-nez v1, :cond_d

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v3

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_e

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/email/activity/setup/ad;->Oy:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/N;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v5, v5, Lcom/android/email/service/o;->UJ:Z

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v2

    :goto_3
    iget-object v5, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v5, v0, v4}, Lcom/android/email/activity/setup/AuthenticationView;->a(ZLcom/android/emailcommon/provider/HostAuth;)V

    iget-object v0, v4, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UN:Z

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/email/activity/setup/ad;->Ow:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->lA()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/ad;->Ox:I

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/email/activity/setup/ad;->Ox:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/bd;->a(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget v0, v4, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UG:Z

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x1

    :cond_8
    and-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/activity/setup/bd;->a(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget v0, v4, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    if-eq v0, v9, :cond_12

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, v4, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    iget-object v1, v4, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/HostAuth;->describeContents()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->MT:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-boolean v2, p0, Lcom/android/email/activity/setup/ad;->Oy:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->hP()V

    .line 260
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/N;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UJ:Z

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 263
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oo:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 264
    if-eqz v2, :cond_14

    .line 265
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oo:Landroid/widget/TextView;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_c
    :goto_6
    return-void

    :cond_d
    move v0, v3

    .line 257
    goto/16 :goto_0

    :cond_e
    move v0, v3

    goto/16 :goto_1

    :cond_f
    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->MV:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Op:Landroid/widget/TextView;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090239

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UN:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ov:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UL:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ot:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    :cond_11
    move v0, v3

    .line 258
    goto/16 :goto_3

    :cond_12
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->ig()V

    goto/16 :goto_4

    :cond_13
    move v2, v3

    .line 262
    goto :goto_5

    .line 267
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oo:Landroid/widget/TextView;

    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 634
    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    .line 635
    const-string v0, "CertificateRequestor.alias"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ad;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Mq:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    .line 644
    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->Np:Lcom/android/email/service/o;

    iget-boolean v2, v2, Lcom/android/email/service/o;->UJ:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/email/activity/setup/AuthenticationView;->a(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onCreate(Landroid/os/Bundle;)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    const-string v0, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Oz:Ljava/lang/String;

    .line 118
    const-string v0, "AccountSetupIncomingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/ad;->Oy:Z

    .line 120
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/email/activity/setup/ad;->MR:Z

    if-eqz v0, :cond_0

    .line 127
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 134
    :goto_0
    const v0, 0x7f0d00b0

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    .line 135
    const v0, 0x7f0d00b2

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Op:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0d00b3

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    .line 137
    const v0, 0x7f0d00b4

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f0d00b5

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    .line 139
    const v0, 0x7f0d00b6

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Ot:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0d00b7

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    .line 141
    const v0, 0x7f0d00b8

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Ov:Landroid/view/View;

    .line 142
    const v0, 0x7f0d00b9

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Ow:Landroid/widget/EditText;

    .line 143
    const v0, 0x7f0d00b1

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AuthenticationView;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    .line 144
    const v0, 0x7f0d00ad

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/view/CertificateSelector;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    .line 145
    const v0, 0x7f0d00ae

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->NN:Landroid/view/View;

    .line 148
    const v0, 0x7f0d00ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->Oo:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/email/activity/setup/ae;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/ae;-><init>(Lcom/android/email/activity/setup/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    new-instance v0, Lcom/android/email/activity/setup/af;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/af;-><init>(Lcom/android/email/activity/setup/ad;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    .line 175
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    const-string v2, "0123456789"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/ad;->an(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->On:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AuthenticationView;->a(Lcom/android/email/activity/setup/ax;)V

    .line 187
    return-object v1

    .line 129
    :cond_0
    const v0, 0x7f040027

    const v1, 0x7f090235

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/ad;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Om:Landroid/widget/EditText;

    .line 289
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Op:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    :cond_1
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Oq:Landroid/widget/EditText;

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->NI:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 297
    :cond_2
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Or:Landroid/widget/EditText;

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 301
    :cond_3
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Os:Landroid/widget/Spinner;

    .line 302
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Ot:Landroid/widget/TextView;

    .line 303
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Ou:Landroid/widget/Spinner;

    .line 304
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Ov:Landroid/view/View;

    .line 305
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->Ow:Landroid/widget/EditText;

    .line 306
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->NN:Landroid/view/View;

    .line 307
    iput-object v2, p0, Lcom/android/email/activity/setup/ad;->NM:Lcom/android/email/view/CertificateSelector;

    .line 309
    invoke-super {p0}, Lcom/android/email/activity/setup/x;->onDestroyView()V

    .line 310
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Lcom/android/email/activity/setup/x;->onResume()V

    .line 278
    invoke-direct {p0}, Lcom/android/email/activity/setup/ad;->hP()V

    .line 279
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/x;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    const-string v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/ad;->Oz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/ad;->Oy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    return-void
.end method
