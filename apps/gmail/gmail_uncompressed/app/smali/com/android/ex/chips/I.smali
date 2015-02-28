.class final Lcom/android/ex/chips/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    new-instance v1, Lcom/android/ex/chips/ad;

    iget-object v2, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ex/chips/ad;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 224
    iget-object v0, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/I;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    :cond_0
    return-void
.end method
