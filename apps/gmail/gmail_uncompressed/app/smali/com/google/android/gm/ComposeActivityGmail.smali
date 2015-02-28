.class public Lcom/google/android/gm/ComposeActivityGmail;
.super Lcom/android/mail/compose/g;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/compose/f;
.implements Lcom/google/android/gm/c/e;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aXb:Lcom/google/android/gms/f/a;

.field private aXc:Lcom/google/android/gm/ui/i;

.field private aXd:Ljava/lang/String;

.field private final aXe:Lcom/google/android/gm/t;

.field private aXf:Lcom/google/android/gm/c/h;

.field private aXg:Lcom/google/android/gm/c/h;

.field private aXh:Lcom/google/android/gms/b/b;

.field private aXi:Landroid/view/MenuItem;

.field private aXj:Lcom/google/android/gm/c/a;

.field private aXk:Lcom/google/android/gm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mail/compose/g;-><init>()V

    .line 103
    new-instance v0, Lcom/google/android/gm/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/t;-><init>(Lcom/google/android/gm/ComposeActivityGmail;B)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXe:Lcom/google/android/gm/t;

    .line 416
    return-void
.end method

.method private Cy()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic Cz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ComposeActivityGmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 75
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gm/ui/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ui/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/ComposeActivityGmail;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivityGmail;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ComposeActivityGmail;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeActivityGmail;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/ComposeActivityGmail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ComposeActivityGmail;)I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avC:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gm/ComposeActivityGmail;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avC:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->awa:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/ComposeActivityGmail;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/ComposeActivityGmail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final N(II)Z
    .locals 12

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 719
    :goto_0
    return v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 694
    const-class v0, Lcom/google/android/gm/ui/g;

    invoke-interface {v3, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/ui/g;

    .line 695
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :cond_2
    array-length v4, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_8

    aget-object v1, v0, v2

    .line 700
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 701
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 702
    if-le p2, v5, :cond_5

    if-ge p2, v6, :cond_5

    const/4 v1, 0x1

    .line 703
    :goto_2
    if-nez v1, :cond_3

    if-le p1, v5, :cond_4

    if-ge p1, v6, :cond_4

    .line 704
    :cond_3
    sget-object v7, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    const-string v8, "Overriding intra-chip selection, selection=%s/%s chip=%s/%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 708
    if-ne p1, p2, :cond_6

    .line 709
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 699
    :cond_4
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 702
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 710
    :cond_6
    if-eqz v1, :cond_7

    .line 711
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    .line 713
    :cond_7
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    invoke-virtual {v1, v5, p2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    .line 719
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Landroid/text/Spanned;)Lcom/android/mail/compose/z;
    .locals 1

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXc:Lcom/google/android/gm/ui/i;

    invoke-static {p1, v0}, Lcom/google/android/gm/ui/e;->a(Landroid/text/Spanned;Lcom/google/android/gm/ui/i;)Lcom/android/mail/compose/z;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lcom/android/mail/providers/ReplyFromAccount;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/mail/providers/ReplyFromAccount;->isDefault:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXk:Lcom/google/android/gm/a;

    iget-object v1, p1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/a;->dp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, ""

    .line 460
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/ReplyFromAccount;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gm/ui/e;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 611
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    .line 619
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gm/drive/h;->b(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)Lcom/google/android/gm/drive/h;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "acl-fixer-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/PotentialFix;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p6}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    .line 662
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/drive/PotentialFix;->Dw()Ljava/util/List;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    :cond_1
    invoke-virtual {p0, p1, p2, p6}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Z)V

    goto :goto_0

    .line 659
    :cond_2
    invoke-static/range {p1 .. p6}, Lcom/google/android/gm/drive/j;->b(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)Lcom/google/android/gm/drive/j;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "outside-domain-warning-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    .line 670
    new-instance v0, Lcom/google/android/gm/drive/g;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gm/drive/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method protected final a(ZZLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 552
    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    .line 576
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Lcom/google/android/gm/ui/g;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/ui/g;

    .line 563
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 564
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    goto :goto_0

    .line 569
    :cond_2
    array-length v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->fm(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 570
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 571
    invoke-virtual {v4}, Lcom/google/android/gm/ui/g;->Iq()Lcom/google/android/gm/ui/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ui/e;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p3, v2, p2}, Lcom/google/android/gm/drive/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/google/android/gm/drive/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "check-permissions-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bP(Z)V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/ComposeActivityGmail;->e(ZZ)V

    .line 591
    return-void
.end method

.method protected final c(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 289
    const-string v0, "refAdEventId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXd:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXe:Lcom/google/android/gm/t;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 294
    :cond_0
    return-void
.end method

.method protected final d(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/providers/Account;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXk:Lcom/google/android/gm/a;

    invoke-static {p1}, Lcom/google/android/gm/a;->y(Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->onStop()V

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-static {p0, v2, v0}, Lcom/google/android/gm/c/h;->a(Landroid/content/Context;Lcom/google/android/gm/c/h;Ljava/lang/String;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gm/c/h;->a(Lcom/google/android/gms/common/api/n;)V

    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStart()V

    .line 331
    :cond_0
    return-void
.end method

.method public final dy(I)V
    .locals 1

    .prologue
    .line 497
    const v0, 0x10001

    if-ne p1, v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->DE()V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const v0, 0x10002

    if-ne p1, v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->DE()V

    goto :goto_0

    .line 501
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->finish()V

    goto :goto_0
.end method

.method protected final f(Lcom/android/mail/providers/Account;)Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXk:Lcom/google/android/gm/a;

    invoke-static {p1}, Lcom/google/android/gm/a;->y(Lcom/android/mail/providers/Account;)Z

    move-result v0

    return v0
.end method

.method public final n(IZ)V
    .locals 3

    .prologue
    .line 598
    invoke-static {p1, p2}, Lcom/google/android/gm/drive/e;->o(IZ)Lcom/google/android/gm/drive/e;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "files-not-shared-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/c/h;->U(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/c/h;->U(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    .line 511
    :goto_0
    if-nez v0, :cond_2

    const v3, 0x10003

    if-ne p1, v3, :cond_2

    .line 512
    iput-boolean v2, p0, Lcom/google/android/gm/ComposeActivityGmail;->avK:Z

    .line 514
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 515
    const-string v0, "response_drive_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    .line 518
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v2}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v2

    .line 519
    sget-object v3, Lcom/google/android/gms/drive/a;->bGt:Lcom/google/android/gms/drive/f;

    invoke-interface {v3, v2, v0}, Lcom/google/android/gms/drive/f;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/h;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/drive/h;->b(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/r;

    move-result-object v2

    .line 521
    new-instance v3, Lcom/google/android/gm/s;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gm/s;-><init>(Lcom/google/android/gm/ComposeActivityGmail;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    :cond_1
    move v0, v1

    .line 542
    :cond_2
    if-nez v0, :cond_3

    .line 543
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/compose/g;->onActivityResult(IILandroid/content/Intent;)V

    .line 545
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 508
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    new-instance v0, Lcom/google/android/gm/a;

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXk:Lcom/google/android/gm/a;

    .line 120
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "in-reference-to"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "in-reference-to"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->h(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 125
    const-string v2, "in-reference-to-message-uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const-string v0, "action"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 131
    :cond_1
    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    :cond_2
    new-instance v0, Lcom/google/android/gm/q;

    const-string v4, "state-resolving-people-error"

    const-string v5, "Autocomplete"

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/q;-><init>(Lcom/google/android/gm/ComposeActivityGmail;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    .line 142
    new-instance v0, Lcom/google/android/gms/b/b;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/b;-><init>(Lcom/google/android/gms/common/api/n;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXh:Lcom/google/android/gms/b/b;

    .line 146
    new-instance v0, Lcom/google/android/gm/r;

    const-string v4, "state-resolving-drive-error"

    const-string v5, "Drive"

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/r;-><init>(Lcom/google/android/gm/ComposeActivityGmail;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    .line 193
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->finish()V

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_3
    new-instance v0, Lcom/google/android/gm/ui/i;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ui/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXc:Lcom/google/android/gm/ui/i;

    .line 202
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivityGmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/BodyView;

    .line 203
    new-instance v1, Lcom/google/android/gm/ui/h;

    invoke-direct {v1}, Lcom/google/android/gm/ui/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/BodyView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    invoke-virtual {v0, p0}, Lcom/android/mail/compose/BodyView;->a(Lcom/android/mail/compose/f;)V

    .line 206
    invoke-static {p0}, Lcom/google/android/gm/ay;->aX(Landroid/content/Context;)Lcom/google/android/gms/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    const v1, 0x7f0d0272

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    .line 301
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXh:Lcom/google/android/gms/b/b;

    invoke-virtual {v0}, Lcom/google/android/gms/b/b;->close()V

    .line 259
    invoke-super {p0}, Lcom/android/mail/compose/g;->onDestroy()V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 268
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/compose/g;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 280
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->openOptionsMenu()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/compose/g;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 337
    const v1, 0x7f0d0272

    if-ne v0, v1, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivityGmail;->Cy()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    const-string v1, "ignoring pick; GMS Core connection pending/failed. client=%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v3}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v8

    .line 344
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v8

    :goto_1
    return v0

    .line 338
    :cond_1
    sget-object v0, Lcom/google/android/gms/drive/a;->bGt:Lcom/google/android/gms/drive/f;

    invoke-interface {v0}, Lcom/google/android/gms/drive/f;->LU()Lcom/google/android/gms/drive/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v1}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/n;->c(Lcom/google/android/gms/common/api/n;)Landroid/content/IntentSender;

    move-result-object v1

    const v2, 0x10003

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/ComposeActivityGmail;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->avK:Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    const-string v2, "failed to send Drive Picker intent"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v8

    goto :goto_0

    .line 339
    :cond_2
    const v1, 0x7f0d026d

    if-ne v0, v1, :cond_3

    .line 340
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivityGmail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/ay;->a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :cond_3
    move v0, v7

    .line 342
    goto :goto_0

    :cond_4
    move v0, v7

    .line 344
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/mail/compose/g;->onPause()V

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/c/a;->cancel(Z)Z

    .line 254
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivityGmail;->Cy()Z

    move-result v3

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivityGmail;->f(Lcom/android/mail/providers/Account;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXi:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "insert_drive"

    const-string v2, "open_overflow"

    if-eqz v3, :cond_0

    const-string v3, "enabled"

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 321
    :goto_1
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 315
    :cond_0
    const-string v3, "disabled"

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "insert_drive"

    const-string v2, "open_overflow"

    const-string v3, "no_item"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-super {p0}, Lcom/android/mail/compose/g;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXb:Lcom/google/android/gms/f/a;

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "activity"

    aput-object v3, v2, v4

    const-string v3, "compose"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/f/a;->g(Ljava/lang/String;[Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    invoke-static {v0, v1, v5}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Lcom/google/android/gm/c/a;

    invoke-direct {v0, p0}, Lcom/google/android/gm/c/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    .line 242
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXj:Lcom/google/android/gm/c/a;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/c/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/c/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 213
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/mail/compose/g;->onStart()V

    .line 219
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStart()V

    .line 220
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStart()V

    .line 221
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXg:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->onStop()V

    .line 227
    invoke-super {p0}, Lcom/android/mail/compose/g;->onStop()V

    .line 228
    return-void
.end method

.method protected final p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    new-instance v0, Lcom/google/android/gms/people/t;

    invoke-direct {v0}, Lcom/google/android/gms/people/t;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->US()Lcom/google/android/gms/people/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->UT()Lcom/google/android/gms/people/s;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityGmail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/people/q;->cgG:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    .line 481
    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->Kw()Lcom/google/android/gms/common/a;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->Kk()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    sget-object v1, Lcom/google/android/gm/ComposeActivityGmail;->mW:Ljava/lang/String;

    const-string v2, "Increment connection failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 487
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    sget-object v3, Lcom/google/android/gms/people/q;->cgN:Lcom/google/android/gms/people/n;

    invoke-interface {v3, v1, v0}, Lcom/google/android/gms/people/n;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)Lcom/google/android/gms/common/api/r;

    goto :goto_1

    .line 491
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->disconnect()V

    goto :goto_0
.end method

.method protected final ss()Lcom/google/android/mail/common/html/parser/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/mail/common/html/parser/s",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/google/android/gm/ui/j;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ui/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final sv()Lcom/android/ex/chips/a;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Lcom/google/android/gms/b/d;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivityGmail;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXf:Lcom/google/android/gm/c/h;

    invoke-virtual {v2}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivityGmail;->aXh:Lcom/google/android/gms/b/b;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/b/d;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/b;)V

    return-object v0
.end method

.method public final sw()Lcom/android/ex/chips/DropdownChipLayouter;
    .locals 2

    .prologue
    .line 466
    new-instance v0, Lcom/google/android/gms/b/a;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/b/a;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method
