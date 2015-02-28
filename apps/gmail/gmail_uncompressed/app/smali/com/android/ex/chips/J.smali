.class final Lcom/android/ex/chips/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic aeY:Lcom/android/ex/chips/a/b;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V
    .locals 0

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/android/ex/chips/J;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/J;->aeY:Lcom/android/ex/chips/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 2270
    iget-object v0, p0, Lcom/android/ex/chips/J;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/J;->aeY:Lcom/android/ex/chips/a/b;

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V

    .line 2271
    return-void
.end method
