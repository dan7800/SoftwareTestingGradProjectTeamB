.class public Lcom/android/mail/browse/MessageAttachmentBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/mail/browse/h;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private ale:Lcom/android/mail/providers/Attachment;

.field private arP:Landroid/widget/TextView;

.field private arQ:Landroid/widget/TextView;

.field private arR:Ljava/lang/String;

.field private arS:Ljava/lang/String;

.field private arT:Landroid/widget/ProgressBar;

.field private arU:Landroid/widget/ImageButton;

.field private arV:Landroid/widget/PopupMenu;

.field private arW:Landroid/widget/ImageView;

.field private final arX:Lcom/android/mail/browse/a;

.field private arY:Z

.field private final arZ:Ljava/lang/Runnable;

.field private asa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/MessageAttachmentBar;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageAttachmentBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/android/mail/browse/az;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/az;-><init>(Lcom/android/mail/browse/MessageAttachmentBar;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arZ:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/android/mail/browse/a;

    invoke-direct {v0, p1, p0}, Lcom/android/mail/browse/a;-><init>(Landroid/content/Context;Lcom/android/mail/browse/h;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/MessageAttachmentBar;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arU:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rt()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->j(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arW:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rs()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->j(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentBar;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageAttachmentBar;

    .line 111
    return-object v0
.end method

.method private d(ILandroid/view/View;)Z
    .locals 8

    .prologue
    const v7, 0x7f0d029e

    const v5, 0x7f0d029d

    const v3, 0x7f0d029c

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 190
    if-ne p1, v5, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/a;->bO(I)V

    .line 193
    iput-boolean v6, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    .line 195
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "save_attachment"

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachment_bar"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 287
    :cond_0
    :goto_0
    return v6

    .line 199
    :cond_1
    if-ne p1, v7, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oE()V

    .line 202
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/a;->b(Lcom/android/mail/providers/Attachment;)V

    .line 204
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "redownload_attachment"

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachment_bar"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 208
    :cond_2
    const v0, 0x7f0d0148

    if-ne p1, v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oD()V

    .line 210
    iput-boolean v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    .line 212
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "cancel_attachment"

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachment_bar"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 215
    :cond_3
    if-ne p1, v3, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oH()V

    goto :goto_0

    .line 217
    :cond_4
    const v0, 0x7f0d0147

    if-ne p1, v0, :cond_6

    .line 221
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    if-nez v0, :cond_5

    .line 223
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    .line 224
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000e

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 230
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rp()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rq()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rr()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 246
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oE()V

    .line 247
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oC()V

    .line 248
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/a;->bO(I)V

    .line 250
    const/4 v3, 0x0

    .line 281
    :goto_1
    if-eqz v3, :cond_0

    .line 282
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_attachment"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 253
    :cond_7
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/I;->cz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/a;->bN(I)V

    .line 260
    const-string v3, "attachment_bar_install"

    goto :goto_1

    .line 264
    :cond_8
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v1, v1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/I;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/a;->bN(I)V

    .line 268
    const-string v3, "attachment_bar"

    goto :goto_1

    .line 272
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    const-string v3, "attachment_bar_no_viewer"

    goto :goto_1
.end method

.method private static j(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 347
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    return-void

    .line 347
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private rp()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rq()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rr()Z
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->asa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/browse/a;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rs()Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->rt()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rt()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ru()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v1, v1, Lcom/android/mail/providers/Attachment;->state:I

    if-ne v1, v3, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->uu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900db

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arR:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arS:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 402
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/a;->a(Landroid/app/FragmentManager;)V

    .line 106
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Account;Lcom/android/mail/browse/ConversationMessage;ZLandroid/support/v4/e/a;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iput-object p2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    .line 124
    iget-object v3, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    .line 125
    iput-object p1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    .line 126
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/a;->be(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p3}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Message;)V

    .line 130
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 131
    invoke-virtual {p3}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->asa:Z

    .line 136
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    .line 138
    sget-object v0, Lcom/android/mail/browse/MessageAttachmentBar;->mW:Ljava/lang/String;

    const-string v4, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p1, Lcom/android/mail/providers/Attachment;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    aput-object v2, v5, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    iget v2, p1, Lcom/android/mail/providers/Attachment;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget v1, p1, Lcom/android/mail/providers/Attachment;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 145
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arP:Landroid/widget/TextView;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    iget v0, p1, Lcom/android/mail/providers/Attachment;->size:I

    iget v1, v3, Lcom/android/mail/providers/Attachment;->size:I

    if-eq v0, v1, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arR:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mail/utils/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arS:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->ru()V

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->post(Ljava/lang/Runnable;)Z

    .line 160
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p4}, Lcom/android/mail/browse/a;->ar(Z)V

    .line 161
    return-void

    :cond_4
    move v0, v2

    .line 131
    goto/16 :goto_0

    .line 136
    :cond_5
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arY:Z

    goto/16 :goto_1

    .line 146
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_7
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final as(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v2, v2, Lcom/android/mail/providers/Attachment;->size:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 379
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget v2, v2, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 380
    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arQ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 380
    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arQ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final oJ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/android/mail/browse/MessageAttachmentBar;->mW:Ljava/lang/String;

    const-string v1, "viewAttachment with null content uri"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const v0, 0x80001

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/ag;->a(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-static {v0}, Lcom/android/mail/utils/I;->cA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v2, "extra-account-uri"

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 342
    sget-object v1, Lcom/android/mail/browse/MessageAttachmentBar;->mW:Ljava/lang/String;

    const-string v2, "Couldn\'t find Activity for intent"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final oK()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->ru()V

    .line 373
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/mail/browse/MessageAttachmentBar;->d(ILandroid/view/View;)Z

    .line 181
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 167
    const v0, 0x7f0d0145

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arP:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0d0146

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arQ:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arT:Landroid/widget/ProgressBar;

    .line 170
    const v0, 0x7f0d0147

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arW:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0d0148

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arU:Landroid/widget/ImageButton;

    .line 173
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/MessageAttachmentBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arW:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arU:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->d(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method
