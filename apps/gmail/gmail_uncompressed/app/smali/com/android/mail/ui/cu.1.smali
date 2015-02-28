.class final Lcom/android/mail/ui/cu;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final aLP:I

.field final synthetic aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

.field private final mContext:Landroid/content/Context;

.field private wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/mail/ui/cu;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    .line 182
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/mail/ui/cu;->mContext:Landroid/content/Context;

    .line 184
    const v0, 0x7f0400a8

    iput v0, p0, Lcom/android/mail/ui/cu;->aLP:I

    .line 185
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mail/ui/cu;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mail/ui/cu;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    if-nez p2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/mail/ui/cu;->wC:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/cu;->wC:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cu;->wC:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mail/ui/cu;->aLP:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cu;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cw;

    .line 216
    const v1, 0x7f0d01f4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    iget-object v2, v0, Lcom/android/mail/ui/cw;->aLR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/android/mail/ui/cu;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-virtual {v2}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/mail/ui/cw;->aLR:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    const v1, 0x7f0d01f3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/mail/ui/cw;->aLS:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 224
    return-object p2
.end method
