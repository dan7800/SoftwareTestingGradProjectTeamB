.class public Lcom/android/mail/ui/AttachmentTileGrid;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aA;
.implements Lcom/android/mail/ui/an;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aBE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final aGm:I

.field private final aGn:I

.field private aGo:I

.field private final aGp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation
.end field

.field private aqZ:Lcom/android/mail/browse/ConversationMessage;

.field private c:Landroid/app/FragmentManager;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->wC:Landroid/view/LayoutInflater;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGm:I

    .line 65
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGp:Ljava/util/HashMap;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/browse/ConversationMessage;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/browse/ConversationMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->c:Landroid/app/FragmentManager;

    .line 76
    iput-object p2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->Nc:Lcom/android/mail/providers/Account;

    .line 77
    iput-object p3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 78
    iput-object p4, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aBE:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 82
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->wC:Landroid/view/LayoutInflater;

    invoke-static {v1, p0}, Lcom/android/mail/browse/MessageAttachmentTile;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentTile;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mail/ui/AttachmentTileGrid;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1, v5}, Lcom/android/mail/browse/MessageAttachmentTile;->a(Landroid/app/FragmentManager;)V

    invoke-virtual {v1, p0}, Lcom/android/mail/browse/MessageAttachmentTile;->a(Lcom/android/mail/browse/aA;)V

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/AttachmentTileGrid;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v1, v0, v2, p0, p5}, Lcom/android/mail/browse/MessageAttachmentTile;->a(Lcom/android/mail/providers/Attachment;ILcom/android/mail/ui/an;Z)V

    move v2, v3

    .line 83
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mail/browse/MessageAttachmentTile;

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method public final a(Lcom/android/mail/browse/MessageAttachmentTile;)V
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/AttachmentTileGrid;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/mail/g/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;I)V

    .line 118
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGp:Ljava/util/HashMap;

    new-instance v2, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    invoke-direct {v2, p1, p2}, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;-><init>(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    .line 244
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGp:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGk:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public final h(Lcom/android/mail/providers/Attachment;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGp:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v0, v0, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->aGl:Landroid/graphics/Bitmap;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/compose/ComposeAttachmentTile;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->wC:Landroid/view/LayoutInflater;

    invoke-static {v0, p0}, Lcom/android/mail/compose/ComposeAttachmentTile;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/compose/ComposeAttachmentTile;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v0, p1, p0}, Lcom/android/mail/compose/ComposeAttachmentTile;->a(Lcom/android/mail/providers/Attachment;Lcom/android/mail/ui/an;)V

    .line 109
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getMeasuredWidth()I

    move-result v6

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v11

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-nez v2, :cond_2

    iget v10, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    rem-int v10, v3, v10

    if-nez v10, :cond_2

    if-eqz v5, :cond_1

    sub-int v0, v6, v8

    :goto_2
    iget v10, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    add-int/2addr v10, v9

    add-int/2addr v1, v10

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_3
    add-int v10, v1, v8

    add-int/2addr v9, v0

    invoke-virtual {v7, v1, v0, v10, v9}, Landroid/view/View;->layout(IIII)V

    if-eqz v5, :cond_3

    iget v7, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    sub-int v7, v8, v7

    sub-int/2addr v1, v7

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_3
    iget v7, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    goto :goto_4

    .line 182
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4, v2}, Lcom/android/mail/ui/AttachmentTileGrid;->setMeasuredDimension(II)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGm:I

    div-int v0, v4, v0

    iput v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    iget v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    :cond_1
    iget v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    mul-int/2addr v0, v3

    sub-int v0, v4, v0

    iget v3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    div-int v6, v0, v3

    iget v3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    mul-int/2addr v3, v6

    sub-int v7, v0, v3

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-ge v3, v7, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v6

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v0, v9}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v5, -0x1

    iget v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGo:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v6

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGn:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final sd()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->aGp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
