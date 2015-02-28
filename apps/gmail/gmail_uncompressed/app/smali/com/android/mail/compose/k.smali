.class final Lcom/android/mail/compose/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/mail/compose/k;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/mail/compose/k;->awi:Lcom/android/mail/compose/g;

    iget-object v0, v0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1386
    iget-object v0, p0, Lcom/android/mail/compose/k;->awi:Lcom/android/mail/compose/g;

    iget-object v0, v0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mail/compose/k;->awi:Lcom/android/mail/compose/g;

    iget-object v1, v1, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1387
    return-void
.end method
