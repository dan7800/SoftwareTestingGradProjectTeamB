.class public final Lcom/android/mail/ui/dp;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static aNL:Ljava/lang/String;


# instance fields
.field private aNM:Lcom/android/mail/ui/ds;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/dp;)Lcom/android/mail/ui/ds;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mail/ui/dp;->aNM:Lcom/android/mail/ui/ds;

    return-object v0
.end method

.method public static b(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/dp;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/android/mail/ui/dp;

    invoke-direct {v0}, Lcom/android/mail/ui/dp;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "syncAuthority"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dp;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method

.method public static cu(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/android/mail/ui/dp;->aNL:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/mail/ui/dp;->aNL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/ds;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mail/ui/dp;->aNM:Lcom/android/mail/ui/ds;

    .line 118
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/mail/ui/dp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 72
    invoke-virtual {p0}, Lcom/android/mail/ui/dp;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "syncAuthority"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lcom/android/mail/ui/dp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v1

    .line 75
    const v4, 0x7f090198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f09019a

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/ui/dp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090197

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f09019b

    new-instance v4, Lcom/android/mail/ui/dr;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/mail/ui/dr;-><init>(Lcom/android/mail/ui/dp;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    new-instance v2, Lcom/android/mail/ui/dq;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/dq;-><init>(Lcom/android/mail/ui/dp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    const v1, 0x7f090199

    goto :goto_0
.end method
