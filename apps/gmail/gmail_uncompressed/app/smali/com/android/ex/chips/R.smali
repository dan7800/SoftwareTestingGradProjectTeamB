.class final Lcom/android/ex/chips/R;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic aeY:Lcom/android/ex/chips/a/b;

.field final synthetic afc:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/R;->aeY:Lcom/android/ex/chips/a/b;

    iput-object p3, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeY:Lcom/android/ex/chips/a/b;

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1694
    check-cast p1, Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->k(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/R;->aeY:Lcom/android/ex/chips/a/b;

    invoke-static {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->l(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->l(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->m(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->n(Lcom/android/ex/chips/RecipientEditTextView;)I

    iget-object v0, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/android/ex/chips/R;->afc:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->o(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->o(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->n(Lcom/android/ex/chips/RecipientEditTextView;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/R;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    goto :goto_0
.end method
