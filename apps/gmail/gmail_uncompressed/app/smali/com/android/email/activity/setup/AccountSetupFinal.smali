.class public Lcom/android/email/activity/setup/AccountSetupFinal;
.super Lcom/android/email/activity/setup/Q;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/activity/setup/A;
.implements Lcom/android/email/activity/setup/P;
.implements Lcom/android/email/activity/setup/T;
.implements Lcom/android/email/activity/setup/V;
.implements Lcom/android/email/activity/setup/aD;
.implements Lcom/android/email/activity/setup/aG;
.implements Lcom/android/email/activity/setup/aJ;
.implements Lcom/android/email/activity/setup/aj;
.implements Lcom/android/email/activity/setup/an;
.implements Lcom/android/email/activity/setup/ap;
.implements Lcom/android/email/activity/setup/aw;
.implements Lcom/android/email/activity/setup/b;
.implements Lcom/android/email/activity/setup/ba;
.implements Lcom/android/email/activity/setup/j;
.implements Lcom/android/email/activity/setup/p;


# static fields
.field private static NW:Ljava/lang/String;

.field private static final NX:Ljava/lang/Boolean;


# instance fields
.field private NY:Z

.field private NZ:Z

.field private Oa:Z

.field private Ob:Landroid/accounts/AccountAuthenticatorResponse;

.field private Oc:Z

.field private Od:Z

.field private Oe:Z

.field private Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

.field private Og:Z

.field private Oh:Ljava/lang/String;

.field private Oi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ao:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupFinal;->NX:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/Q;-><init>()V

    .line 161
    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 163
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NZ:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    .line 1243
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSetupFinal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSetupFinal;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSetupFinal;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 933
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->as(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->ar(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->aq(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->j(Lcom/android/emailcommon/provider/Account;)V

    .line 937
    return-void
.end method

.method private aP(I)V
    .locals 4

    .prologue
    .line 991
    invoke-static {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->aN(I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 992
    invoke-static {p1}, Lcom/android/email/activity/setup/aE;->aR(I)Lcom/android/email/activity/setup/aE;

    move-result-object v1

    .line 993
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "AccountCheckStgFrag"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "CheckProgressDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 997
    return-void
.end method

.method private ab(Z)V
    .locals 8

    .prologue
    const v7, 0x7f0d00a1

    const v6, 0x7f050009

    const v5, 0x7f050008

    const/4 v4, 0x0

    .line 475
    const/4 v0, 0x0

    .line 477
    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    packed-switch v1, :pswitch_data_0

    .line 507
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_1
    invoke-static {}, Lcom/android/email/activity/setup/R;->hO()Lcom/android/email/activity/setup/R;

    move-result-object v1

    .line 509
    :goto_0
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/ab;->setState(I)V

    .line 510
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 511
    invoke-virtual {v2, v5, v6, v5, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 512
    const-string v3, "AccountSetupContentFragment"

    invoke-virtual {v2, v7, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 516
    :cond_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 518
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 520
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupFinal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 523
    return-void

    .line 482
    :pswitch_2
    invoke-static {}, Lcom/android/email/activity/setup/av;->iu()Lcom/android/email/activity/setup/av;

    move-result-object v1

    goto :goto_0

    .line 485
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupDataFragment;->iI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/O;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/activity/setup/O;

    move-result-object v1

    goto :goto_0

    .line 489
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v2, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/setup/U;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/email/activity/setup/U;

    move-result-object v1

    .line 492
    const-string v0, "AccountSetupCredentialsFragment"

    goto :goto_0

    .line 495
    :pswitch_5
    invoke-static {v4}, Lcom/android/email/activity/setup/ad;->ac(Z)Lcom/android/email/activity/setup/ad;

    move-result-object v1

    goto :goto_0

    .line 498
    :pswitch_6
    invoke-static {v4}, Lcom/android/email/activity/setup/aq;->ae(Z)Lcom/android/email/activity/setup/aq;

    move-result-object v1

    goto :goto_0

    .line 501
    :pswitch_7
    invoke-static {}, Lcom/android/email/activity/setup/ao;->il()Lcom/android/email/activity/setup/ao;

    move-result-object v1

    goto :goto_0

    .line 504
    :pswitch_8
    invoke-static {}, Lcom/android/email/activity/setup/ah;->ij()Lcom/android/email/activity/setup/ah;

    move-result-object v1

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private hG()V
    .locals 3

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccountCheckStgFrag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckProgressDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1009
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1013
    return-void
.end method

.method private hV()Lcom/android/email/activity/setup/ab;
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccountSetupContentFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ab;

    return-object v0
.end method

.method private hW()V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ab;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 540
    return-void
.end method

.method private hX()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 702
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v1

    .line 704
    iget-object v1, v1, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    const-string v2, "gmail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 706
    const-string v1, "allowSkip"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "mail"

    move-object v5, p0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 713
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    move v0, v8

    .line 716
    :cond_0
    return v0
.end method

.method private ib()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v4

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->V(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/provider/HostAuth;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-static {p0, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 874
    iget-boolean v3, v0, Lcom/android/email/service/o;->Vd:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/service/n;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 875
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v5, "Protocol %s not available, using alternate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 877
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->W(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/provider/HostAuth;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {p0, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    move-object v3, v0

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    .line 883
    invoke-virtual {v5, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 884
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/HostAuth;->az(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/HostAuth;->ay(Ljava/lang/String;)V

    .line 887
    iget v0, v6, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, v3, Lcom/android/email/service/o;->UF:I

    :goto_1
    iput v0, v6, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 890
    iget-boolean v0, v3, Lcom/android/email/service/o;->UK:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {v5, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 892
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v3, v3, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/HostAuth;->az(Ljava/lang/String;)V

    .line 893
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v3, v3, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/HostAuth;->ay(Ljava/lang/String;)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oh:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 901
    :goto_2
    if-eqz v0, :cond_3

    .line 902
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->r(Ljava/lang/String;)V

    move v0, v1

    .line 909
    :goto_3
    return v0

    .line 887
    :cond_1
    iget v0, v3, Lcom/android/email/service/o;->port:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 899
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 906
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    .line 907
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    :cond_3
    move v0, v2

    .line 909
    goto :goto_3

    :cond_4
    move-object v3, v0

    goto :goto_0
.end method

.method private ic()V
    .locals 4

    .prologue
    .line 1279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    .line 1280
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/ab;->Z(Z)V

    .line 1282
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ah;

    .line 1284
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 1285
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ah;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1287
    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Account;->aq(Ljava/lang/String;)V

    .line 1289
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ah;->ik()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->as(Ljava/lang/String;)V

    .line 1291
    invoke-static {v1}, Lcom/android/email/activity/setup/m;->f(Lcom/android/emailcommon/provider/Account;)Lcom/android/email/activity/setup/m;

    move-result-object v0

    .line 1292
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1293
    const-string v2, "AccountFinalizeFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1294
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1295
    return-void
.end method

.method private j(Lcom/android/emailcommon/provider/Account;)V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    .line 919
    if-nez v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget v1, v0, Lcom/android/email/service/o;->UX:I

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->XB:I

    .line 921
    iget v1, v0, Lcom/android/email/service/o;->UQ:I

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->XA:I

    .line 922
    iget-boolean v1, v0, Lcom/android/email/service/o;->UL:Z

    if-eqz v1, :cond_0

    .line 923
    iget v0, v0, Lcom/android/email/service/o;->UM:I

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->bj(I)V

    goto :goto_0
.end method

.method private proceed()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v1, 0x2

    const/4 v10, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 547
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    .line 548
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/ab;->Z(Z)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 555
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    packed-switch v0, :pswitch_data_0

    .line 691
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Unknown state %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 557
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/R;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/R;->hQ()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5}, Lcom/android/email/activity/setup/SetupDataFragment;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/setup/SetupDataFragment;->w(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->note:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->note:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/setup/ak;->t(Ljava/lang/String;)Lcom/android/email/activity/setup/ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "NoteDialogFragment"

    invoke-virtual {v0, v4, v5}, Lcom/android/email/activity/setup/ak;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v3

    .line 558
    :goto_1
    if-nez v0, :cond_7

    .line 559
    iput v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_0

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ib()Z

    move-result v0

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oi:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->r(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oh:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    move v0, v2

    goto :goto_1

    .line 563
    :cond_7
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/R;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/R;->hR()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 564
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    .line 565
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    .line 588
    :cond_8
    iput v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 592
    :cond_9
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 568
    :cond_a
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    .line 569
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    if-eqz v0, :cond_c

    .line 570
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 573
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_3

    .line 575
    :cond_b
    iput v10, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 576
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hX()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 581
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iI()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 583
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1, p0, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 585
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->j(Lcom/android/emailcommon/provider/Account;)V

    .line 586
    iput v10, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_3

    .line 596
    :pswitch_2
    iput v10, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 597
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 600
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hX()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    iput v10, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 604
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 607
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/U;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/U;->hT()Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->h(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupDataFragment;->iD()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/email/service/o;->UK:Z

    if-eqz v3, :cond_d

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iF()V

    .line 608
    :cond_d
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    if-eqz v0, :cond_e

    .line 609
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 610
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->aP(I)V

    goto/16 :goto_0

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v3

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v6

    invoke-virtual {v5, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/provider/HostAuth;->ay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iH()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    iget-boolean v0, v6, Lcom/android/email/service/o;->UH:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_4
    invoke-virtual {v7, v8, v4, v9, v0}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v7, v0}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iD()V

    iget-boolean v0, v6, Lcom/android/email/service/o;->UK:Z

    if-eqz v0, :cond_f

    invoke-virtual {v5, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/HostAuth;->ay(Ljava/lang/String;)V

    const-string v3, "smtp"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->hT()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/U;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iF()V

    .line 614
    :cond_f
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    if-eqz v0, :cond_11

    .line 615
    iput v11, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 616
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 613
    goto :goto_4

    .line 618
    :cond_11
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 619
    invoke-direct {p0, v10}, Lcom/android/email/activity/setup/AccountSetupFinal;->aP(I)V

    goto/16 :goto_0

    .line 624
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    if-eqz v0, :cond_13

    .line 625
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    if-eqz v0, :cond_12

    .line 627
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 628
    const-string v1, "AccountSetupCredentialsFragment"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 629
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/U;

    .line 631
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/U;->aa(Z)V

    .line 632
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    goto/16 :goto_0

    .line 634
    :cond_12
    iput v11, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 635
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 638
    :cond_13
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 639
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 644
    :pswitch_6
    iput v11, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 645
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 648
    :pswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ad;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ad;->hD()V

    .line 649
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 650
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->aP(I)V

    goto/16 :goto_0

    .line 653
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    .line 655
    iget-boolean v0, v0, Lcom/android/email/service/o;->UK:Z

    if-eqz v0, :cond_14

    .line 656
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 660
    :goto_5
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 658
    :cond_14
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_5

    .line 663
    :pswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/aq;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aq;->hD()V

    .line 664
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 665
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupFinal;->aP(I)V

    goto/16 :goto_0

    .line 668
    :pswitch_a
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 669
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    goto/16 :goto_0

    .line 672
    :pswitch_b
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 673
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/setup/ab;->Z(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in AccountSetupOptions with null mHostAuthRecv"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ao;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v5}, Lcom/android/emailcommon/provider/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/Account;->aq(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x101

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v6

    iget-boolean v4, v6, Lcom/android/email/service/o;->UU:Z

    if-eqz v4, :cond_17

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->im()Z

    move-result v4

    if-eqz v4, :cond_17

    or-int/lit16 v1, v1, 0x100

    :cond_17
    invoke-virtual {v5, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    const v7, 0x7f0902e8

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupFinal;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :try_start_0
    iget-object v4, v5, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_18

    or-int/lit16 v1, v1, 0x1880

    :cond_18
    :goto_6
    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->in()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/Account;->bh(I)V

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->io()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/Account;->bi(I)V

    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->iG()Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget v1, v5, Lcom/android/emailcommon/provider/Account;->dM:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v5, Lcom/android/emailcommon/provider/Account;->dM:I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->iG()Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    iput-object v1, v5, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    :cond_1a
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->ip()Z

    move-result v4

    iget-boolean v1, v6, Lcom/android/email/service/o;->UT:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->iq()Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v2

    :goto_7
    iget-boolean v6, v6, Lcom/android/email/service/o;->US:Z

    if-eqz v6, :cond_1c

    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->ir()Z

    move-result v6

    if-eqz v6, :cond_1c

    :goto_8
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ao;->is()Z

    move-result v0

    invoke-static {v5, v4, v1, v2, v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/emailcommon/provider/Account;ZZZZ)Lcom/android/email/activity/setup/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "AccountCreationFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/android/email/activity/setup/X;->id()Lcom/android/email/activity/setup/X;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CreateAccountDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/X;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-object v7, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v8, "Exception thrown parsing the protocol version."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v4, v8, v9}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    :cond_1b
    move v1, v3

    goto :goto_7

    :cond_1c
    move v2, v3

    goto :goto_8

    .line 676
    :pswitch_c
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 677
    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iA()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 681
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ic()V

    goto/16 :goto_0

    .line 685
    :pswitch_d
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ic()V

    goto/16 :goto_0

    .line 688
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    goto/16 :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private r(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 809
    invoke-static {p1}, Lcom/android/email/activity/setup/aI;->u(Ljava/lang/String;)Lcom/android/email/activity/setup/aI;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DuplicateAccountDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/aI;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 812
    return-void
.end method


# virtual methods
.method public final Y(Z)V
    .locals 0

    .prologue
    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1017
    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1020
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    .line 1022
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hG()V

    .line 1023
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/az;->b(ILjava/lang/String;)Lcom/android/email/activity/setup/az;

    move-result-object v0

    .line 1025
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckSettingsErrorDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public final aO(I)V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public final e(Lcom/android/emailcommon/provider/Account;)V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/SetupDataFragment;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 740
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oa:Z

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    .line 753
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->finish()V

    .line 754
    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 827
    return-void
.end method

.method public final hE()V
    .locals 0

    .prologue
    .line 955
    return-void
.end method

.method public final hF()V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hG()V

    .line 1002
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    .line 1003
    return-void
.end method

.method public final hH()V
    .locals 2

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1045
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    .line 1046
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    goto :goto_0
.end method

.method public final hI()V
    .locals 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    .line 1032
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1036
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hV()Lcom/android/email/activity/setup/ab;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ad;

    .line 1037
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ad;->hU()V

    .line 1038
    return-void

    .line 1034
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    goto :goto_0
.end method

.method public final hY()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    .line 817
    return-void
.end method

.method public final hZ()V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ib()Z

    .line 851
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 852
    return-void
.end method

.method public final hn()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1054
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oe:Z

    .line 1055
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    .line 1056
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hG()V

    .line 1057
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1058
    return-void
.end method

.method public final ho()V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hG()V

    .line 1063
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1064
    return-void
.end method

.method public final hs()V
    .locals 4

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ht()V

    .line 1184
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v0

    .line 1186
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1187
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupDataFragment;->hQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v2, "accountType"

    iget-object v0, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 1190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oa:Z

    .line 1193
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->setResult(I)V

    .line 1194
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1195
    return-void
.end method

.method public final ht()V
    .locals 4

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CreateAccountDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccountCreationFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1202
    if-nez v0, :cond_1

    .line 1203
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t find AccountCreationFragment to destroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1208
    return-void
.end method

.method public final hu()V
    .locals 3

    .prologue
    .line 1272
    new-instance v0, Lcom/android/email/activity/setup/Y;

    invoke-direct {v0}, Lcom/android/email/activity/setup/Y;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/Y;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method public final hv()V
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    if-nez v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 762
    :cond_0
    return-void
.end method

.method public final hw()V
    .locals 0

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    .line 1303
    return-void
.end method

.method public final ia()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    .line 857
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hG()V

    .line 1069
    invoke-static {p1}, Lcom/android/email/activity/setup/aX;->v(Ljava/lang/String;)Lcom/android/email/activity/setup/aX;

    move-result-object v0

    .line 1070
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SecurityRequiredDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    if-eqz v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 727
    :cond_0
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    .line 734
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->hW()V

    goto :goto_0

    .line 730
    :cond_1
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v8, 0x4

    const/4 v1, -0x1

    const/16 v11, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/Q;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 190
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupFinal;->NW:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 191
    const v0, 0x7f0902e0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupFinal;->NW:Ljava/lang/String;

    .line 194
    :cond_0
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->setContentView(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 199
    const v6, 0x106000d

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setIcon(I)V

    .line 200
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 203
    :cond_1
    if-eqz p1, :cond_3

    .line 204
    const-string v0, "AccountSetupFinal.is_processing"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    .line 205
    const-string v0, "AccountSetupFinal.state"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 206
    const-string v0, "AccountSetupFinal.provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    .line 208
    const-string v0, "AccountSetupFinal.authResp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    .line 210
    const-string v0, "AccountSetupFinal.authErr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oa:Z

    .line 212
    const-string v0, "AccountSetupFinal.preconfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    .line 214
    const-string v0, "AccountSetupFinal.noAuto"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Od:Z

    .line 215
    const-string v0, "AccountSetupFinal.passwordFailed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    .line 258
    :goto_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iA()I

    move-result v0

    if-ne v0, v8, :cond_12

    .line 271
    const-string v0, "EMAIL"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    const-string v0, "USER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    const-string v0, "PASSWORD"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 274
    const-string v0, "INCOMING"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    const-string v0, "OUTGOING"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 276
    const-string v0, "SYNC_LOOKBACK"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v4, "ALL"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    const/4 v0, 0x6

    .line 285
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 289
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v1, :cond_b

    move v4, v2

    .line 290
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v1, :cond_c

    if-nez v4, :cond_c

    .line 291
    :cond_2
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Force account create requires extras EMAIL, USER, INCOMING, OUTGOING, or EMAIL and PASSWORD"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    .line 369
    :goto_4
    return-void

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "accountAuthenticatorResponse"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    .line 222
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_4

    .line 228
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oa:Z

    .line 232
    :cond_4
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupFinal;->NW:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/setup/SetupDataFragment;->aT(I)V

    .line 245
    :goto_5
    iput v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 247
    const-string v0, "jumpToIncoming"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 254
    :cond_5
    :goto_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    .line 255
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    goto/16 :goto_0

    .line 235
    :cond_6
    const-string v0, "FLOW_MODE"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 238
    const-string v6, "FLOW_ACCOUNT_TYPE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-static {p0, v6}, Lcom/android/email/service/n;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/email/activity/setup/SetupDataFragment;->x(Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v6, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->aT(I)V

    goto :goto_5

    .line 249
    :cond_7
    const-string v0, "jumpToOutgoing"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_6

    .line 251
    :cond_8
    const-string v0, "jumpToOptions"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iput v11, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    goto :goto_6

    :cond_9
    move v0, v1

    .line 281
    goto/16 :goto_1

    :cond_a
    move v1, v3

    .line 285
    goto/16 :goto_2

    :cond_b
    move v4, v3

    .line 289
    goto/16 :goto_3

    .line 297
    :cond_c
    if-eqz v4, :cond_10

    .line 298
    const-string v0, "@"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    .line 301
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    if-nez v0, :cond_d

    .line 302
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "findProviderForDomain couldn\'t find provider"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    goto/16 :goto_4

    .line 306
    :cond_d
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    .line 307
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/setup/SetupDataFragment;->w(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->ib()Z

    move-result v0

    .line 309
    if-nez v0, :cond_e

    .line 310
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Force create account failed to create account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    goto/16 :goto_4

    .line 314
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 315
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 316
    iput-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 318
    iput-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 346
    :cond_f
    :goto_7
    iput v11, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    .line 347
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupFinal;->ab(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 350
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupFinal;->NX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_11

    .line 352
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: Force account create only allowed while in test harness"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    goto/16 :goto_4

    .line 320
    :cond_10
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 323
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 324
    invoke-virtual {v4, v8}, Lcom/android/emailcommon/provider/HostAuth;->az(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v9}, Lcom/android/emailcommon/provider/HostAuth;->az(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    invoke-direct {p0, v6, v5}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-ltz v0, :cond_f

    const/4 v4, 0x6

    if-gt v0, v4, :cond_f

    .line 342
    iput v0, v1, Lcom/android/emailcommon/provider/Account;->XA:I

    goto :goto_7

    .line 330
    :catch_0
    move-exception v0

    const v0, 0x7f090227

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->finish()V

    goto/16 :goto_4

    .line 358
    :cond_11
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NZ:Z

    .line 363
    :cond_12
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v4, Lcom/android/email/activity/setup/aa;

    invoke-direct {v4, p0, v3}, Lcom/android/email/activity/setup/aa;-><init>(Lcom/android/email/activity/setup/AccountSetupFinal;B)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 367
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v4, Lcom/android/email/activity/setup/Z;

    invoke-direct {v4, p0, v3}, Lcom/android/email/activity/setup/Z;-><init>(Lcom/android/email/activity/setup/AccountSetupFinal;B)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_4
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onResume()V

    .line 439
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NZ:Z

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NZ:Z

    .line 445
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 447
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/Q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 452
    const-string v0, "AccountSetupFinal.is_processing"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->NY:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    const-string v0, "AccountSetupFinal.state"

    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->ao:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string v0, "AccountSetupFinal.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Of:Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 455
    const-string v0, "AccountSetupFinal.authResp"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Ob:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    const-string v0, "AccountSetupFinal.authErr"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oa:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    const-string v0, "AccountSetupFinal.preconfig"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    const-string v0, "AccountSetupFinal.passwordFailed"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Og:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onStart()V

    .line 433
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 434
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onStop()V

    .line 466
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 467
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/SetupDataFragment;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Oc:Z

    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/SetupDataFragment;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1096
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->j(Lcom/android/emailcommon/provider/Account;)V

    .line 1098
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1099
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/SetupDataFragment;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupFinal;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1086
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupFinal;->j(Lcom/android/emailcommon/provider/Account;)V

    .line 1087
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupFinal;->proceed()V

    .line 1088
    return-void
.end method
