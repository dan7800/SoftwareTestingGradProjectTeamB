.class final Lcom/android/ex/chips/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v0, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/F;

    invoke-virtual {v0, p3}, Lcom/android/ex/chips/F;->bq(I)Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V

    .line 280
    iget-object v0, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->mS()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    iget-object v0, p0, Lcom/android/ex/chips/M;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 284
    return-void
.end method
