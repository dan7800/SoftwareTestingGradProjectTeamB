.class final Lcom/android/ex/chips/b;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic acm:Lcom/android/ex/chips/a;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/a;B)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/ex/chips/b;-><init>(Lcom/android/ex/chips/a;)V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 303
    check-cast p1, Lcom/android/ex/chips/ae;

    .line 304
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 213
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v0}, Lcom/android/ex/chips/a;->mp()V

    move-object v0, v6

    .line 269
    :goto_0
    return-object v0

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v2, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget v2, v2, Lcom/android/ex/chips/a;->aca:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 227
    if-eqz v7, :cond_3

    .line 235
    :try_start_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 241
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Lcom/android/ex/chips/i;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/android/ex/chips/i;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    invoke-static {v0, v2, v3, v4}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/i;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_1

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    throw v0

    .line 250
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0, v2, v3}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 253
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v0, v4}, Lcom/android/ex/chips/a;->b(Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 256
    new-instance v0, Lcom/android/ex/chips/c;

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/chips/c;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v6, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_3
    if-eqz v7, :cond_4

    .line 263
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 269
    goto :goto_0

    .line 266
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iput-object p1, v0, Lcom/android/ex/chips/a;->aci:Ljava/lang/CharSequence;

    .line 276
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v0}, Lcom/android/ex/chips/a;->mp()V

    .line 278
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/chips/c;

    .line 280
    iget-object v1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v2, v0, Lcom/android/ex/chips/c;->aco:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 281
    iget-object v1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v2, v0, Lcom/android/ex/chips/c;->acp:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/util/List;)Ljava/util/List;

    .line 282
    iget-object v1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v2, v0, Lcom/android/ex/chips/c;->acq:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/a;Ljava/util/Set;)Ljava/util/Set;

    .line 284
    iget-object v2, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v1, v0, Lcom/android/ex/chips/c;->acn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v1, v0, Lcom/android/ex/chips/c;->acr:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/ex/chips/a;->D(II)V

    .line 288
    iget-object v1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v2, v0, Lcom/android/ex/chips/c;->acn:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/a;->h(Ljava/util/List;)V

    .line 291
    iget-object v1, v0, Lcom/android/ex/chips/c;->acr:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget v1, v1, Lcom/android/ex/chips/a;->aca:I

    iget-object v2, v0, Lcom/android/ex/chips/c;->acq:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 294
    iget-object v2, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    iget-object v0, v0, Lcom/android/ex/chips/c;->acr:Ljava/util/List;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/ex/chips/a;->a(Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 299
    :cond_0
    :goto_1
    return-void

    .line 284
    :cond_1
    iget-object v1, v0, Lcom/android/ex/chips/c;->acr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/b;->acm:Lcom/android/ex/chips/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/a;->h(Ljava/util/List;)V

    goto :goto_1
.end method
