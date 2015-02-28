.class final Lcom/android/ex/chips/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/r;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic aeZ:Lcom/android/ex/chips/ae;

.field final synthetic afa:Lcom/android/ex/chips/T;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/T;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/P;->aeZ:Lcom/android/ex/chips/ae;

    iput-object p3, p0, Lcom/android/ex/chips/P;->afa:Lcom/android/ex/chips/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/P;->afa:Lcom/android/ex/chips/T;

    invoke-static {v0, v1, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/T;Landroid/graphics/Bitmap;)V

    .line 816
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->invalidate()V

    .line 827
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    new-instance v1, Lcom/android/ex/chips/Q;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/Q;-><init>(Lcom/android/ex/chips/P;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final ms()V
    .locals 0

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/ex/chips/P;->mt()V

    .line 794
    return-void
.end method

.method public final mt()V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/ex/chips/P;->aeZ:Lcom/android/ex/chips/ae;

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    .line 799
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    invoke-direct {p0, v0}, Lcom/android/ex/chips/P;->c(Landroid/graphics/Bitmap;)V

    .line 802
    return-void
.end method

.method public final mu()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/chips/P;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->j(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/P;->c(Landroid/graphics/Bitmap;)V

    .line 808
    return-void
.end method
