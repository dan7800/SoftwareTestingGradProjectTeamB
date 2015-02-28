.class public Lcom/android/mail/ui/bW;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected final aKs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/bX;",
            ">;"
        }
    .end annotation
.end field

.field private final aKt:I

.field private aKu:Lcom/android/mail/providers/Folder;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bW;->wC:Landroid/view/LayoutInflater;

    .line 105
    iput p3, p0, Lcom/android/mail/ui/bW;->aKt:I

    .line 106
    iput-object p4, p0, Lcom/android/mail/ui/bW;->aKu:Lcom/android/mail/providers/Folder;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/mail/ui/bW;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bW;->wC:Landroid/view/LayoutInflater;

    .line 98
    iput p4, p0, Lcom/android/mail/ui/bW;->aKt:I

    .line 99
    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/bW;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 100
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_1
    new-instance v4, Lcom/android/mail/providers/Folder;

    invoke-direct {v4, p1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    .line 124
    if-eqz p2, :cond_5

    iget-object v0, v4, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v0}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 127
    :goto_1
    new-instance v5, Lcom/android/mail/ui/bX;

    invoke-direct {v5, v4, v0}, Lcom/android/mail/ui/bX;-><init>(Lcom/android/mail/providers/Folder;Z)V

    .line 128
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/bW;->b(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKu:Lcom/android/mail/providers/Folder;

    invoke-static {v4, v0}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_3
    invoke-static {v1}, Lcom/android/mail/ui/bW;->y(Ljava/util/List;)V

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bX;

    .line 142
    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v4

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/bW;->b(Lcom/android/mail/providers/Folder;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mail/ui/bW;->aKu:Lcom/android/mail/providers/Folder;

    invoke-static {v4, v5}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v4

    if-nez v4, :cond_4

    .line 145
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 148
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static y(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/bX;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 202
    new-instance v2, Lcom/android/mail/ui/bY;

    invoke-direct {v2, v8}, Lcom/android/mail/ui/bY;-><init>(Lcom/android/mail/ui/bX;)V

    .line 204
    iput-boolean v7, v2, Lcom/android/mail/ui/bY;->aKy:Z

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 207
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bX;

    .line 210
    invoke-static {v0}, Lcom/android/mail/ui/bX;->c(Lcom/android/mail/ui/bX;)Lcom/android/mail/providers/Folder;

    move-result-object v5

    .line 212
    iget-object v1, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v1}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/bY;

    .line 213
    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lcom/android/mail/ui/bY;

    invoke-direct {v1, v0}, Lcom/android/mail/ui/bY;-><init>(Lcom/android/mail/ui/bX;)V

    .line 215
    iget-object v6, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v6}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_1
    invoke-static {v0}, Lcom/android/mail/ui/bX;->c(Lcom/android/mail/ui/bX;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v2, v1}, Lcom/android/mail/ui/bY;->a(Lcom/android/mail/ui/bY;)V

    goto :goto_0

    .line 217
    :cond_0
    iput-object v0, v1, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    goto :goto_1

    .line 224
    :cond_1
    iget-object v0, v5, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bY;

    .line 225
    if-nez v0, :cond_2

    .line 226
    new-instance v0, Lcom/android/mail/ui/bY;

    invoke-direct {v0, v8}, Lcom/android/mail/ui/bY;-><init>(Lcom/android/mail/ui/bX;)V

    .line 227
    iget-object v5, v5, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bY;->a(Lcom/android/mail/ui/bY;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 237
    new-instance v3, Ljava/util/ArrayDeque;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 238
    invoke-interface {v3, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 240
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bY;

    if-eqz v0, :cond_8

    .line 241
    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/bY;

    .line 245
    if-eqz v1, :cond_6

    iget-boolean v2, v0, Lcom/android/mail/ui/bY;->aKy:Z

    if-nez v2, :cond_6

    .line 248
    iget-object v2, v1, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    iget-object v2, v2, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    :cond_5
    iget-object v1, v0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    invoke-static {v1}, Lcom/android/mail/ui/bX;->c(Lcom/android/mail/ui/bX;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 259
    :goto_3
    iget-object v2, v0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    iput-object v1, v2, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    .line 260
    iget-object v1, v0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iput-boolean v7, v0, Lcom/android/mail/ui/bY;->aKy:Z

    .line 264
    :cond_6
    invoke-virtual {v0}, Lcom/android/mail/ui/bY;->zz()Lcom/android/mail/ui/bY;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_4

    .line 267
    invoke-interface {v3, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 269
    invoke-interface {v3, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 256
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    iget-object v1, v1, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/mail/ui/bY;->aKw:Lcom/android/mail/ui/bX;

    invoke-static {v2}, Lcom/android/mail/ui/bX;->c(Lcom/android/mail/ui/bX;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 273
    :cond_8
    return-void
.end method


# virtual methods
.method protected b(Lcom/android/mail/providers/Folder;)Z
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKu:Lcom/android/mail/providers/Folder;

    invoke-static {p1, v0}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/bW;->aKs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 297
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    if-nez p2, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/mail/ui/bW;->wC:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mail/ui/bW;->aKt:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bW;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bX;

    .line 319
    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 320
    iget-object v1, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    move-object v2, v1

    .line 322
    :goto_0
    const v1, 0x7f0d007a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 323
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    .line 327
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 330
    :cond_1
    const v0, 0x7f0d0218

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_2
    const v0, 0x7f0d01ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 336
    invoke-static {v3, v0}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 337
    return-object p2

    .line 320
    :cond_3
    iget-object v1, v3, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    move-object v2, v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method
