.class Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field agj:Lcom/android/ex/editstyledtext/EditStyledText;

.field ago:I

.field agp:I


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1987
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->ago:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->agp:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1990
    :cond_0
    return-void
.end method
