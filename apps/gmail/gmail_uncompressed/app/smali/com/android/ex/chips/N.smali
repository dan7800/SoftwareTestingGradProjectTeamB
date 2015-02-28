.class final Lcom/android/ex/chips/N;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/ex/chips/N;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->mS()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
