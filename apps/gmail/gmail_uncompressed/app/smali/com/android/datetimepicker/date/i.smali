.class public abstract Lcom/android/datetimepicker/date/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/datetimepicker/date/m;


# static fields
.field protected static IG:I


# instance fields
.field protected final IA:Lcom/android/datetimepicker/date/a;

.field private It:Lcom/android/datetimepicker/date/j;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x7

    sput v0, Lcom/android/datetimepicker/date/i;->IG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V
    .locals 4

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/datetimepicker/date/i;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    .line 122
    new-instance v0, Lcom/android/datetimepicker/date/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/datetimepicker/date/j;-><init>(J)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/i;->It:Lcom/android/datetimepicker/date/j;

    .line 123
    iget-object v0, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->gf()Lcom/android/datetimepicker/date/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/i;->a(Lcom/android/datetimepicker/date/j;)V

    .line 124
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/datetimepicker/date/j;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/datetimepicker/date/i;->It:Lcom/android/datetimepicker/date/j;

    .line 133
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/i;->notifyDataSetChanged()V

    .line 134
    return-void
.end method

.method public final b(Lcom/android/datetimepicker/date/j;)V
    .locals 4

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->ge()V

    iget-object v0, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    iget v1, p1, Lcom/android/datetimepicker/date/j;->year:I

    iget v2, p1, Lcom/android/datetimepicker/date/j;->month:I

    iget v3, p1, Lcom/android/datetimepicker/date/j;->IH:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/a;->c(III)V

    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/i;->a(Lcom/android/datetimepicker/date/j;)V

    .line 224
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->gh()I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v1}, Lcom/android/datetimepicker/date/a;->gg()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 172
    const/4 v0, 0x0

    .line 173
    if-eqz p2, :cond_2

    .line 174
    check-cast p2, Lcom/android/datetimepicker/date/k;

    .line 176
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/k;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 186
    :goto_0
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 191
    rem-int/lit8 v3, p1, 0xc

    .line 192
    div-int/lit8 v4, p1, 0xc

    iget-object v5, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v5}, Lcom/android/datetimepicker/date/a;->gg()I

    move-result v5

    add-int/2addr v4, v5

    .line 195
    iget-object v5, p0, Lcom/android/datetimepicker/date/i;->It:Lcom/android/datetimepicker/date/j;

    iget v5, v5, Lcom/android/datetimepicker/date/j;->year:I

    if-ne v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/datetimepicker/date/i;->It:Lcom/android/datetimepicker/date/j;

    iget v5, v5, Lcom/android/datetimepicker/date/j;->month:I

    if-ne v5, v3, :cond_3

    :goto_1
    if-eqz v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/datetimepicker/date/i;->It:Lcom/android/datetimepicker/date/j;

    iget v1, v1, Lcom/android/datetimepicker/date/j;->IH:I

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/k;->gq()V

    .line 203
    const-string v2, "selected_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "year"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "month"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "week_start"

    iget-object v2, p0, Lcom/android/datetimepicker/date/i;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->getFirstDayOfWeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p2, v0}, Lcom/android/datetimepicker/date/k;->a(Ljava/util/HashMap;)V

    .line 208
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/k;->invalidate()V

    .line 209
    return-object p2

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/android/datetimepicker/date/i;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/i;->k(Landroid/content/Context;)Lcom/android/datetimepicker/date/k;

    move-result-object p2

    .line 180
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {p2, v3}, Lcom/android/datetimepicker/date/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {p2, v2}, Lcom/android/datetimepicker/date/k;->setClickable(Z)V

    .line 184
    invoke-virtual {p2, p0}, Lcom/android/datetimepicker/date/k;->a(Lcom/android/datetimepicker/date/m;)V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public abstract k(Landroid/content/Context;)Lcom/android/datetimepicker/date/k;
.end method
