.class final Landroid/support/v7/internal/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/P;


# instance fields
.field final synthetic AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private AR:Landroid/app/AlertDialog;

.field private AS:Landroid/widget/ListAdapter;

.field private AT:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V
    .locals 0

    .prologue
    .line 891
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/K;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    .line 904
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Landroid/support/v7/internal/widget/K;->AT:Ljava/lang/CharSequence;

    .line 916
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 937
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->zR:Landroid/support/v7/internal/widget/p;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/K;->AS:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ad(Landroid/view/View;)Z

    .line 940
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/K;->dismiss()V

    .line 941
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Landroid/support/v7/internal/widget/K;->AS:Landroid/widget/ListAdapter;

    .line 912
    return-void
.end method

.method public final show()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AS:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 926
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    iget-object v1, p0, Landroid/support/v7/internal/widget/K;->AT:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 928
    iget-object v1, p0, Landroid/support/v7/internal/widget/K;->AT:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 930
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/K;->AS:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/K;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    .line 932
    iget-object v0, p0, Landroid/support/v7/internal/widget/K;->AR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
