.class public Lcom/android/mail/browse/MessageAttachmentTile;
.super Lcom/android/mail/ui/AttachmentTile;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/browse/h;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final arX:Lcom/android/mail/browse/a;

.field private asc:I

.field private asd:Landroid/view/View;

.field private ase:Lcom/android/mail/browse/aA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/MessageAttachmentTile;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageAttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Lcom/android/mail/browse/a;

    invoke-direct {v0, p1, p0}, Lcom/android/mail/browse/a;-><init>(Landroid/content/Context;Lcom/android/mail/browse/h;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    .line 82
    return-void
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentTile;
    .locals 2

    .prologue
    .line 108
    const v0, 0x7f040055

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageAttachmentTile;

    .line 110
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/a;->a(Landroid/app/FragmentManager;)V

    .line 86
    return-void
.end method

.method public final a(Lcom/android/mail/browse/aA;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ase:Lcom/android/mail/browse/aA;

    .line 90
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Attachment;ILcom/android/mail/ui/an;Z)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0, p1, p3}, Lcom/android/mail/browse/MessageAttachmentTile;->a(Lcom/android/mail/providers/Attachment;Lcom/android/mail/ui/an;)V

    .line 101
    iput p2, p0, Lcom/android/mail/browse/MessageAttachmentTile;->asc:I

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 104
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p4}, Lcom/android/mail/browse/a;->ar(Z)V

    .line 105
    return-void
.end method

.method public final as(Z)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/mail/ui/AttachmentTile;->e(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->asd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method

.method public final oJ()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_attachment"

    const-string v3, "attachment_tile"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 171
    invoke-static {v2}, Lcom/android/ex/photo/util/ImageUtils;->aW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ase:Lcom/android/mail/browse/aA;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ase:Lcom/android/mail/browse/aA;

    invoke-interface {v0, p0}, Lcom/android/mail/browse/aA;->a(Lcom/android/mail/browse/MessageAttachmentTile;)V

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/android/mail/browse/MessageAttachmentTile;->mW:Ljava/lang/String;

    const-string v1, "unable to view image attachment b/c handler is null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v1, v1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/ag;->a(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/android/mail/browse/MessageAttachmentTile;->mW:Ljava/lang/String;

    const-string v2, "Couldn\'t find Activity for intent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final oK()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v5

    new-instance v6, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/mail/browse/aB;

    iget v4, p0, Lcom/android/mail/browse/MessageAttachmentTile;->asc:I

    invoke-direct {v1, v4}, Lcom/android/mail/browse/aB;-><init>(I)V

    invoke-direct {v6, v5, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mail/browse/MessageAttachmentTile;

    invoke-virtual {v6, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageAttachmentTile;

    sub-int v7, v5, v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_2
    iget-object v8, v0, Lcom/android/mail/browse/MessageAttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v8}, Lcom/android/mail/providers/Attachment;->uq()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v0, v0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v3, v2, v7, v1}, Lcom/android/mail/browse/a;->b(IIIZ)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->oJ()V

    .line 126
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->onFinishInflate()V

    .line 118
    const v0, 0x7f0d014b

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->asd:Landroid/view/View;

    .line 120
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/MessageAttachmentTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public final rv()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->rv()V

    .line 205
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->asd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public final rw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->rw()V

    .line 218
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/b;->ay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/mail/browse/a;->b(IIIZ)V

    .line 224
    :cond_0
    return-void
.end method
