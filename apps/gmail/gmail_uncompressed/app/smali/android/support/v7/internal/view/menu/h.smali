.class final Landroid/support/v7/internal/view/menu/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private xa:I

.field final synthetic xb:Landroid/support/v7/internal/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/g;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    .line 229
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/h;->dI()V

    .line 230
    return-void
.end method

.method private dI()V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/g;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->eb()Landroid/support/v7/internal/view/menu/m;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_1

    .line 269
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/g;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dV()Ljava/util/ArrayList;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 271
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 272
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    .line 273
    if-ne v0, v2, :cond_0

    .line 274
    iput v1, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    .line 280
    :goto_1
    return-void

    .line 271
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    goto :goto_1
.end method


# virtual methods
.method public final ae(I)Landroid/support/v7/internal/view/menu/m;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/g;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dV()Ljava/util/ArrayList;

    move-result-object v1

    .line 243
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/g;->b(Landroid/support/v7/internal/view/menu/g;)I

    move-result v0

    add-int/2addr v0, p1

    .line 244
    iget v2, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    if-lt v0, v2, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/g;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dV()Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/g;->b(Landroid/support/v7/internal/view/menu/g;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 235
    iget v1, p0, Landroid/support/v7/internal/view/menu/h;->xa:I

    if-gez v1, :cond_0

    .line 238
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/h;->ae(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/g;->wC:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/h;->xb:Landroid/support/v7/internal/view/menu/g;

    iget v1, v1, Landroid/support/v7/internal/view/menu/g;->wF:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 261
    check-cast v0, Landroid/support/v7/internal/view/menu/A;

    .line 262
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/h;->ae(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/A;->a(Landroid/support/v7/internal/view/menu/m;)V

    .line 263
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/h;->dI()V

    .line 285
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method
