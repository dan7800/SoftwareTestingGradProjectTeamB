.class final Lcom/android/email/activity/setup/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic Pm:Lcom/android/email/activity/setup/aK;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aK;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/email/activity/setup/aL;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/aL;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-static {v0}, Lcom/android/email/activity/setup/aK;->a(Lcom/android/email/activity/setup/aK;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
