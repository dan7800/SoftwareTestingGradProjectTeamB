.class public final Lcom/google/android/gm/preference/c;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private Tz:Ljava/lang/String;

.field private aIV:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gm/preference/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/preference/c;->aIV:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/preference/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gm/preference/c;->Tz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/preference/c;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/preference/c;->m(Ljava/lang/String;Z)V

    return-void
.end method

.method public static dM(Ljava/lang/String;)Lcom/google/android/gm/preference/c;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/gm/preference/c;

    invoke-direct {v0}, Lcom/google/android/gm/preference/c;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 60
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/c;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method private m(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/preference/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/google/android/gm/preference/i;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Lcom/android/mail/i/a;->aW(Z)V

    .line 105
    invoke-static {v0, p1}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gm/preference/c;->aIV:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/gm/preference/c;->aIV:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/preference/e;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/google/android/gm/preference/e;->DH()V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/preference/e;)V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gm/preference/c;->aIV:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gm/preference/c;->Tz:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/preference/c;->m(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/preference/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/c;->Tz:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/google/android/gm/preference/d;

    invoke-direct {v0, p0}, Lcom/google/android/gm/preference/d;-><init>(Lcom/google/android/gm/preference/c;)V

    .line 77
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090338

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090339

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09033a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
