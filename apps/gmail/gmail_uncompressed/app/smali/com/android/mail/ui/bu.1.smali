.class public final Lcom/android/mail/ui/bu;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private aIV:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mail/ui/bw;",
            ">;"
        }
    .end annotation
.end field

.field private aIW:I

.field private aIX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/bu;->aIV:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method public static Q(II)Lcom/android/mail/ui/bu;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/android/mail/ui/bu;

    invoke-direct {v0}, Lcom/android/mail/ui/bu;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 73
    const-string v2, "numConversations"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "folderType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bu;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/bu;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mail/ui/bu;->aIV:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/bw;)V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mail/ui/bu;->aIV:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/mail/ui/bu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "numConversations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/bu;->aIW:I

    .line 83
    invoke-virtual {p0}, Lcom/android/mail/ui/bu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folderType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/bu;->aIX:I

    .line 85
    invoke-virtual {p0}, Lcom/android/mail/ui/bu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110012

    iget v2, p0, Lcom/android/mail/ui/bu;->aIW:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/mail/ui/bu;->aIW:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget v0, p0, Lcom/android/mail/ui/bu;->aIX:I

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/android/mail/providers/Folder;->O(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09018c

    .line 92
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/ui/bu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a7

    new-instance v2, Lcom/android/mail/ui/bv;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/bv;-><init>(Lcom/android/mail/ui/bu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const v0, 0x7f09018b

    goto :goto_0
.end method
