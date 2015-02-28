.class Lcom/android/mail/compose/AttachmentsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final Zf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private auZ:Lcom/android/mail/compose/d;

.field private ava:Lcom/android/mail/ui/AttachmentTileGrid;

.field private avb:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/compose/AttachmentsView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/AttachmentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 326
    const/4 v0, -0x1

    .line 327
    const/4 v2, 0x0

    .line 329
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 335
    if-eqz v2, :cond_0

    .line 336
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_0
    :goto_0
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 339
    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/mail/compose/AttachmentsView;->mW:Ljava/lang/String;

    const-string v2, "Error closing file opened to obtain size."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 331
    :catch_1
    move-exception v1

    .line 332
    :try_start_2
    sget-object v3, Lcom/android/mail/compose/AttachmentsView;->mW:Ljava/lang/String;

    const-string v4, "Error opening file to obtain size."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    if-eqz v2, :cond_0

    .line 336
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v1

    sget-object v1, Lcom/android/mail/compose/AttachmentsView;->mW:Ljava/lang/String;

    const-string v2, "Error closing file opened to obtain size."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    .line 335
    if-eqz v2, :cond_1

    .line 336
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 340
    :cond_1
    :goto_1
    throw v0

    .line 339
    :catch_3
    move-exception v1

    sget-object v1, Lcom/android/mail/compose/AttachmentsView;->mW:Ljava/lang/String;

    const-string v2, "Error closing file opened to obtain size."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 353
    .line 355
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Attachment;)J
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 308
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v0}, Lcom/android/mail/providers/Settings;->vJ()I

    move-result v4

    .line 311
    iget v0, p2, Lcom/android/mail/providers/Attachment;->size:I

    if-eq v0, v7, :cond_0

    iget v0, p2, Lcom/android/mail/providers/Attachment;->size:I

    if-le v0, v4, :cond_1

    .line 312
    :cond_0
    new-instance v0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string v1, "Attachment too large to attach"

    const v2, 0x7f09008f

    invoke-direct {v0, v1, v2}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 314
    :cond_1
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    iget v0, p2, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 316
    new-instance v0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string v1, "Attachment too large to attach"

    const v2, 0x7f090091

    invoke-direct {v0, v1, v2}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/mail/providers/Attachment;->uB()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/mail/compose/AttachmentsView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0, v6}, Lcom/android/mail/ui/AttachmentTileGrid;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    invoke-static {p2}, Lcom/android/mail/ui/AttachmentTile;->g(Lcom/android/mail/providers/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/AttachmentTileGrid;->i(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/compose/ComposeAttachmentTile;

    move-result-object v0

    new-instance v1, Lcom/android/mail/compose/b;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/mail/compose/b;-><init>(Lcom/android/mail/compose/AttachmentsView;Lcom/android/mail/compose/ComposeAttachmentTile;Lcom/android/mail/providers/Attachment;)V

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/ComposeAttachmentTile;->a(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->auZ:Lcom/android/mail/compose/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->auZ:Lcom/android/mail/compose/d;

    invoke-interface {v0}, Lcom/android/mail/compose/d;->sh()V

    .line 322
    :cond_6
    iget v0, p2, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v0, v0

    return-wide v0

    .line 319
    :cond_7
    new-instance v0, Lcom/android/mail/compose/a;

    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/mail/compose/a;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)V

    new-instance v1, Lcom/android/mail/compose/c;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/mail/compose/c;-><init>(Lcom/android/mail/compose/AttachmentsView;Lcom/android/mail/compose/a;Lcom/android/mail/providers/Attachment;)V

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method protected final a(Landroid/view/View;Lcom/android/mail/providers/Attachment;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->auZ:Lcom/android/mail/compose/d;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->auZ:Lcom/android/mail/compose/d;

    invoke-interface {v0}, Lcom/android/mail/compose/d;->sg()V

    .line 152
    :cond_0
    return-void
.end method

.method public final a(Lcom/android/mail/compose/d;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mail/compose/AttachmentsView;->auZ:Lcom/android/mail/compose/d;

    .line 91
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 174
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/AttachmentTileGrid;->d(Ljava/util/ArrayList;)V

    .line 175
    return-void
.end method

.method public final o(Landroid/net/Uri;)Lcom/android/mail/providers/Attachment;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string v1, "Failed to create local attachment"

    invoke-direct {v0, v1}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 226
    if-nez v1, :cond_b

    const-string v1, ""

    move-object v6, v1

    .line 228
    :goto_0
    new-instance v8, Lcom/android/mail/providers/Attachment;

    invoke-direct {v8}, Lcom/android/mail/providers/Attachment;-><init>()V

    .line 229
    iput-object v7, v8, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 230
    invoke-virtual {v8, v7}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 231
    iput v2, v8, Lcom/android/mail/providers/Attachment;->size:I

    .line 232
    iput-object p1, v8, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 233
    iput-object p1, v8, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 237
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 240
    if-eqz v2, :cond_3

    .line 242
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 244
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 288
    :cond_4
    iget v1, v8, Lcom/android/mail/providers/Attachment;->size:I

    if-nez v1, :cond_5

    .line 290
    invoke-static {p1, v0}, Lcom/android/mail/compose/AttachmentsView;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, v8, Lcom/android/mail/providers/Attachment;->size:I

    .line 293
    :cond_5
    invoke-virtual {v8, v6}, Lcom/android/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 294
    return-object v8

    .line 247
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v1

    move-object v1, v2

    .line 259
    :goto_2
    :try_start_4
    const-string v2, "_display_name"

    invoke-static {v0, p1, v2}, Lcom/android/mail/compose/AttachmentsView;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 262
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_7
    :try_start_5
    const-string v2, "_size"

    invoke-static {v0, p1, v2}, Lcom/android/mail/compose/AttachmentsView;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 273
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 279
    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 265
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 276
    :cond_9
    :try_start_6
    invoke-static {p1, v0}, Lcom/android/mail/compose/AttachmentsView;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    iput v2, v8, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 279
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    new-instance v1, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string v2, "Security Exception from attachment uri"

    invoke-direct {v1, v2, v0}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    move-object v1, v7

    goto :goto_2

    :cond_b
    move-object v6, v1

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AttachmentTileGrid;

    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    .line 72
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    .line 73
    return-void
.end method

.method public final sc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    return-object v0
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
    .line 167
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->sd()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final se()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->setVisibility(I)V

    .line 185
    return-void
.end method

.method public final sf()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-static {v0}, Lcom/android/mail/ui/AttachmentTile;->g(Lcom/android/mail/providers/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 368
    if-lez v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->ava:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 377
    :goto_0
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 380
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 373
    if-lez v0, :cond_2

    .line 374
    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->avb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
