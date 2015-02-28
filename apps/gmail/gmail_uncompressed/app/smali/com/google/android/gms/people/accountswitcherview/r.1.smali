.class public final Lcom/google/android/gms/people/accountswitcherview/r;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final chI:I


# instance fields
.field private brO:Landroid/view/LayoutInflater;

.field private cgS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private chJ:Lcom/google/android/gms/people/accountswitcherview/i;

.field private chK:Ljava/lang/String;

.field private chL:Lcom/google/android/gms/people/accountswitcherview/v;

.field private chM:Lcom/google/android/gms/people/accountswitcherview/t;

.field private chN:I

.field private chO:I

.field private chP:Z

.field private chQ:Z

.field private chR:Z

.field private chS:Lcom/google/android/gms/people/accountswitcherview/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/google/android/gms/people/accountswitcherview/D;->ciy:I

    sput v0, Lcom/google/android/gms/people/accountswitcherview/r;->chI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/people/accountswitcherview/v;Lcom/google/android/gms/people/accountswitcherview/t;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    .line 77
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chQ:Z

    .line 78
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->mContext:Landroid/content/Context;

    .line 79
    const v0, 0x7f04001d

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chN:I

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->brO:Landroid/view/LayoutInflater;

    .line 81
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chL:Lcom/google/android/gms/people/accountswitcherview/v;

    .line 82
    iput-object p3, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chM:Lcom/google/android/gms/people/accountswitcherview/t;

    .line 83
    new-array v0, v1, [I

    sget v1, Lcom/google/android/gms/people/accountswitcherview/x;->chX:I

    aput v1, v0, v3

    .line 87
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 88
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/people/accountswitcherview/y;->chY:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chO:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/people/accountswitcherview/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chS:Lcom/google/android/gms/people/accountswitcherview/a;

    .line 93
    return-void

    .line 81
    :cond_0
    new-instance p2, Lcom/google/android/gms/people/accountswitcherview/s;

    invoke-direct {p2, p0, v3}, Lcom/google/android/gms/people/accountswitcherview/s;-><init>(Lcom/google/android/gms/people/accountswitcherview/r;B)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/model/d;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;",
            "Lcom/google/android/gms/people/model/d;",
            "Lcom/google/android/gms/people/model/d;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 338
    .line 340
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 342
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 344
    :goto_1
    const/4 v0, 0x0

    move v3, v2

    move v4, v2

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 345
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    .line 346
    if-gez v4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v2

    .line 349
    :cond_0
    if-gez v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    .line 344
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move-object v5, v0

    .line 340
    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 342
    goto :goto_1

    .line 353
    :cond_4
    if-ltz v4, :cond_5

    .line 354
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_5
    if-gez v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_6
    return-object p0
.end method


# virtual methods
.method public final S(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->notifyDataSetChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->notifyDataSetChanged()V

    .line 262
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chS:Lcom/google/android/gms/people/accountswitcherview/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/accountswitcherview/a;->R(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public final UW()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eq v0, v1, :cond_0

    .line 101
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method

.method public final UX()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chR:Z

    .line 324
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/accountswitcherview/i;Lcom/google/android/gms/people/accountswitcherview/v;Lcom/google/android/gms/people/accountswitcherview/t;ZI)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 222
    invoke-interface {p4, p1}, Lcom/google/android/gms/people/accountswitcherview/v;->aK(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/u;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 229
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iw()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 232
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    .line 233
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, v2, v3, v5}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/people/accountswitcherview/E;->ciD:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    :cond_1
    if-eqz p5, :cond_2

    .line 250
    invoke-interface {p5, v0, p2, p6, p7}, Lcom/google/android/gms/people/accountswitcherview/t;->a(Lcom/google/android/gms/people/accountswitcherview/u;Lcom/google/android/gms/people/model/d;ZI)V

    .line 252
    :cond_2
    return-object p1

    .line 225
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/u;

    goto :goto_0

    .line 236
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    .line 238
    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v2, v3, v4, v5}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/i;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    .line 97
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chS:Lcom/google/android/gms/people/accountswitcherview/a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chS:Lcom/google/android/gms/people/accountswitcherview/a;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/a;->detach()V

    .line 316
    :cond_0
    return-void
.end method

.method public final eR(I)Lcom/google/android/gms/people/model/d;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chQ:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/r;->eR(I)Lcom/google/android/gms/people/model/d;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 300
    iget-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-wide v0

    .line 302
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chQ:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_2

    .line 303
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/r;->getCount()I

    move-result v0

    .line 146
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_0

    .line 147
    const/4 v0, 0x2

    .line 153
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chQ:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    if-eq p1, v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chP:Z

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 151
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    if-nez p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->brO:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/gms/people/accountswitcherview/D;->ciA:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    :cond_0
    :goto_0
    return-object p2

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->brO:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/gms/people/accountswitcherview/D;->ciz:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 126
    :cond_2
    if-nez p2, :cond_4

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->brO:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chN:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/r;->eR(I)Lcom/google/android/gms/people/model/d;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chL:Lcom/google/android/gms/people/accountswitcherview/v;

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chM:Lcom/google/android/gms/people/accountswitcherview/t;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chK:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chK:Ljava/lang/String;

    invoke-interface {v2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget v7, p0, Lcom/google/android/gms/people/accountswitcherview/r;->chO:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/accountswitcherview/r;->a(Landroid/view/View;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/accountswitcherview/i;Lcom/google/android/gms/people/accountswitcherview/v;Lcom/google/android/gms/people/accountswitcherview/t;ZI)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move-object v1, p2

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x3

    return v0
.end method
