.class public final Lcom/android/mail/utils/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aQa:Lcom/android/mail/utils/U;

.field private static final aQb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static aQc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static aQd:Landroid/text/style/TextAppearanceSpan;

.field private static aQe:Landroid/text/style/CharacterStyle;

.field private static final aQf:Lcom/google/android/mail/common/html/parser/t;

.field private static aQg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/mail/utils/T;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static anm:Ljava/lang/String;

.field private static ann:Ljava/lang/String;

.field private static aui:Landroid/support/v4/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sput-object v1, Lcom/android/mail/utils/N;->aQa:Lcom/android/mail/utils/U;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/mail/utils/N;->aQb:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/mail/utils/N;->aQc:Ljava/lang/ref/WeakReference;

    .line 105
    new-instance v0, Lcom/android/mail/utils/O;

    invoke-direct {v0}, Lcom/android/mail/utils/O;-><init>()V

    sput-object v0, Lcom/android/mail/utils/N;->aQf:Lcom/google/android/mail/common/html/parser/t;

    .line 113
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/N;->aui:Landroid/support/v4/e/a;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mail/utils/N;->aQg:Ljava/util/Map;

    .line 1378
    sput-object v1, Lcom/android/mail/utils/N;->anm:Ljava/lang/String;

    .line 1379
    sput-object v1, Lcom/android/mail/utils/N;->ann:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I
    .locals 2

    .prologue
    .line 1900
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 921
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 922
    :cond_0
    const-string v0, "NotifUtils"

    const-string v1, "createViewConversationIntent(): Null account or folder.  account: %s folder: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 924
    const/4 v0, 0x0

    .line 941
    :goto_0
    return-object v0

    .line 929
    :cond_1
    if-nez p3, :cond_2

    .line 930
    iget-object v0, p2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 936
    :cond_2
    new-instance v0, Lcom/android/mail/providers/Conversation;

    invoke-direct {v0, p3}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 937
    iget-object v1, p2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1413
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1414
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 1415
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1417
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Account;)Landroid/text/SpannableStringBuilder;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1361
    new-instance v0, Lcom/android/mail/providers/Conversation;

    invoke-direct {v0, p1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1362
    iget-object v1, v0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 1364
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    sget-object v0, Lcom/android/mail/utils/N;->aQd:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 1366
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0801a1

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/mail/utils/N;->aQd:Landroid/text/style/TextAppearanceSpan;

    .line 1368
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0801a2

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/mail/utils/N;->aQe:Landroid/text/style/CharacterStyle;

    .line 1371
    :cond_0
    const-string v2, ""

    sget-object v8, Lcom/android/mail/utils/N;->aQd:Landroid/text/style/TextAppearanceSpan;

    sget-object v9, Lcom/android/mail/utils/N;->aQe:Landroid/text/style/CharacterStyle;

    move-object v0, p0

    move v3, p2

    move-object v6, v5

    move-object v7, p3

    move v11, v10

    invoke-static/range {v0 .. v11}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;ZZ)V

    .line 1375
    invoke-static {p0, v4}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1383
    sget-object v0, Lcom/android/mail/utils/N;->anm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1384
    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/N;->anm:Ljava/lang/String;

    .line 1385
    const v0, 0x7f090160

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/N;->ann:Ljava/lang/String;

    .line 1388
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1389
    const/4 v1, 0x0

    .line 1390
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 1391
    if-nez v0, :cond_1

    .line 1392
    const-string v0, "NotifUtils"

    const-string v1, "null sender iterating over styledSenders"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1395
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v7, v1, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 1396
    sget-object v5, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/mail/utils/N;->ann:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/mail/utils/N;->ann:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mail/utils/N;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1407
    :goto_1
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v2, v1

    .line 1408
    goto :goto_0

    .line 1399
    :cond_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    if-eqz v2, :cond_3

    sget-object v5, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1403
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/mail/utils/N;->anm:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mail/utils/N;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1405
    goto :goto_1

    .line 1409
    :cond_5
    return-object v3
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/i/e;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Landroid/database/Cursor;Landroid/content/Intent;Lcom/android/mail/providers/Folder;JLandroid/content/res/Resources;ZLjava/lang/String;ILcom/android/mail/g/a;)Lcom/android/mail/utils/P;
    .locals 22

    .prologue
    .line 1198
    new-instance v19, Lcom/android/mail/utils/P;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/android/mail/utils/P;-><init>(B)V

    .line 1200
    new-instance v15, Lcom/android/mail/providers/Conversation;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1203
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1204
    const/4 v11, 0x0

    .line 1205
    const/4 v10, 0x0

    .line 1206
    const/4 v12, 0x0

    .line 1207
    const/4 v13, 0x0

    .line 1209
    :try_start_0
    iget-object v4, v15, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "label"

    move-object/from16 v0, p7

    iget-object v6, v0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1211
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 1213
    :try_start_1
    new-instance v17, Lcom/android/mail/browse/aC;

    invoke-direct/range {v17 .. v18}, Lcom/android/mail/browse/aC;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1217
    :try_start_2
    const-string v4, ""

    .line 1218
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1219
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    .line 1220
    invoke-virtual {v4}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v13

    .line 1221
    if-nez v13, :cond_0

    .line 1223
    const-string v5, "NotifUtils"

    const-string v6, "No sender found for message: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/mail/providers/Message;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1224
    const-string v13, ""

    .line 1226
    :cond_0
    invoke-static {v13}, Lcom/android/mail/utils/N;->cE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v4

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/mail/d;->aY(Ljava/lang/String;)Lcom/android/mail/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/d;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v7, v13

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getContactIcon should not be called on the main thread."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1323
    :catchall_0
    move-exception v4

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    :goto_0
    if-eqz v5, :cond_2

    .line 1324
    invoke-virtual {v5}, Lcom/android/mail/browse/aC;->close()V

    .line 1326
    :cond_2
    if-eqz v6, :cond_3

    .line 1327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 1227
    :cond_4
    :try_start_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/android/mail/utils/Q;

    invoke-direct {v4}, Lcom/android/mail/utils/Q;-><init>()V

    move-object v5, v4

    :goto_1
    iget-object v4, v5, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/mail/utils/N;->aQb:Landroid/util/SparseArray;

    const v6, 0x7f0200de

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    :goto_2
    iput-object v4, v5, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v4, v5, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/mail/utils/N;->aB(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v5, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;

    :cond_6
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    .line 1230
    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/mail/utils/N;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1231
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    iget-object v4, v4, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ab;

    move-object v8, v13

    move-object v6, v14

    .line 1235
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->getPosition()I

    move-result v4

    move v5, v12

    .line 1236
    :cond_7
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1237
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v9

    .line 1238
    iget-boolean v7, v9, Lcom/android/mail/providers/Message;->azb:Z

    if-nez v7, :cond_d

    const/4 v7, 0x1

    .line 1239
    :goto_5
    if-eqz v7, :cond_7

    .line 1240
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->getPosition()I

    move-result v4

    .line 1241
    invoke-virtual {v9}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/mail/utils/N;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1242
    if-nez v5, :cond_7

    invoke-virtual {v9}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1244
    const/4 v5, 0x1

    goto :goto_4

    .line 1227
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v5, 0x7f0c010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v5, 0x7f0c010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    if-eqz p14, :cond_b

    move-object/from16 v4, p14

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v11}, Lcom/android/mail/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/mail/utils/Q;

    move-result-object v4

    :goto_6
    iget-object v5, v4, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    if-nez v5, :cond_9

    new-instance v5, Lcom/android/mail/ui/cj;

    invoke-direct {v5, v8, v9}, Lcom/android/mail/ui/cj;-><init>(II)V

    new-instance v6, Lcom/android/mail/h/a;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/mail/h/a;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v6, v5, v14, v7}, Lcom/android/mail/h/a;->a(Lcom/android/mail/ui/cj;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    :cond_9
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/android/mail/utils/c;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    :cond_a
    move-object v5, v4

    goto/16 :goto_1

    :cond_b
    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Ljava/lang/String;IIII)Lcom/android/mail/utils/Q;

    move-result-object v4

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0200de

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v6, Lcom/android/mail/utils/N;->aQb:Landroid/util/SparseArray;

    const v7, 0x7f0200de

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1238
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1249
    :cond_e
    iget-object v7, v15, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/mail/browse/ConversationItemView;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1252
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1255
    if-eqz v5, :cond_12

    .line 1257
    const v5, 0x7f0b0037

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1259
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v5, v2}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Account;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 1262
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1264
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/android/mail/utils/P;->aQh:Ljava/lang/String;

    .line 1274
    :goto_7
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f080199

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1279
    if-eqz p11, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object p12

    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1282
    new-instance v8, Landroid/support/v4/app/aa;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/support/v4/app/aa;-><init>(Landroid/support/v4/app/ab;)V

    .line 1287
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1288
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1289
    new-instance v9, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f080199

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v11}, Lcom/android/mail/providers/Message;->vF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/N;->cD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "\\n\\s+"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_9
    invoke-virtual {v8, v4}, Landroid/support/v4/app/aa;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa;

    .line 1295
    :goto_a
    if-eqz v11, :cond_10

    .line 1296
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mail/i/e;->h(Lcom/android/mail/providers/Account;)Ljava/util/Set;

    move-result-object v16

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object v10, v15

    move-object/from16 v12, p7

    move/from16 v13, p13

    move-wide/from16 v14, p8

    .line 1299
    invoke-static/range {v5 .. v16}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;IJLjava/util/Set;)V

    .line 1321
    :cond_10
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Landroid/support/v4/app/ab;Ljava/util/HashSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1323
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/browse/aC;->close()V

    .line 1326
    if-eqz v18, :cond_11

    .line 1327
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1330
    :cond_11
    return-object v19

    .line 1266
    :cond_12
    :try_start_4
    invoke-static {v6}, Lcom/android/mail/utils/N;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1268
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1270
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/android/mail/utils/P;->aQh:Ljava/lang/String;

    goto/16 :goto_7

    .line 1289
    :cond_13
    const-string v5, ""

    move-object v6, v5

    goto :goto_8

    :cond_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v9, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v4, "%2$s"

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "%1$s"

    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_16

    const/4 v4, 0x1

    move v5, v4

    :goto_c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v4, v12

    const/4 v12, 0x1

    aput-object v6, v4, v12

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_17

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    :goto_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v7, 0x0

    invoke-virtual {v4, v9, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_9

    :cond_16
    const/4 v4, 0x0

    move v5, v4

    goto :goto_c

    :cond_17
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_d

    .line 1291
    :cond_18
    const-string v4, "NotifUtils"

    const-string v5, "Failed to load message"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1292
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 1308
    :cond_19
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v4, v6

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1314
    if-eqz p11, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object p12

    :cond_1a
    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1318
    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/android/mail/utils/P;->aQh:Ljava/lang/String;

    goto/16 :goto_b

    .line 1308
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09017d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "%2$s"

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "%1$s"

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_1c

    const/4 v4, 0x1

    move v5, v4

    :goto_f
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v4, v9

    const/4 v9, 0x1

    aput-object v7, v4, v9

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_1d

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :goto_10
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v9, 0x7f08019a

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v5, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    move v5, v4

    goto :goto_f

    :cond_1d
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    goto :goto_10

    .line 1323
    :catchall_1
    move-exception v4

    move-object v5, v10

    move-object v6, v11

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    move-object v5, v10

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_1e
    move-object v8, v4

    move-object v6, v13

    goto/16 :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IIII)Lcom/android/mail/utils/Q;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1774
    new-instance v1, Lcom/android/mail/utils/Q;

    invoke-direct {v1}, Lcom/android/mail/utils/Q;-><init>()V

    .line 1775
    new-array v0, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1778
    if-eqz v0, :cond_2

    .line 1779
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1780
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v3

    .line 1786
    if-eqz v3, :cond_0

    .line 1788
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1789
    if-eqz v0, :cond_1

    .line 1791
    const/4 v4, 0x1

    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    .line 1794
    const/4 v4, 0x1

    invoke-static {v0, p4, p5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;

    .line 1798
    :cond_1
    iget-object v0, v1, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 1802
    invoke-static {v3}, Lcom/google/common/a/a;->b(Ljava/io/Closeable;)V

    .line 1808
    :cond_2
    return-object v1

    .line 1802
    :cond_3
    invoke-static {v3}, Lcom/google/common/a/a;->b(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/google/common/a/a;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Lcom/android/mail/utils/U;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const/4 v0, 0x0

    .line 308
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/android/mail/utils/U;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/mail/utils/U;->c(Lcom/android/mail/utils/T;)Ljava/lang/Integer;

    move-result-object v5

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/mail/utils/U;->d(Lcom/android/mail/utils/T;)Ljava/lang/Integer;

    move-result-object v6

    .line 312
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    .line 313
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_1
    if-lez v1, :cond_2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/mail/utils/T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 319
    goto :goto_0

    .line 321
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;)Landroid/util/Pair;

    goto :goto_1

    .line 325
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1741
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1743
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1745
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1746
    const-string v1, "?"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1747
    const-string v1, "data1 IN ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1752
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "contact_id"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    if-nez v1, :cond_0

    .line 1767
    :goto_0
    return-object v0

    .line 1761
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1762
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1765
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V
    .locals 6

    .prologue
    .line 475
    const-string v0, "NotifUtils"

    const-string v1, "sendSetNewEmailIndicator account: %s, folder: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NotifUtils"

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "NotifUtils"

    iget-object v5, p4, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.action.SEND_SET_NEW_EMAIL_INDICATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "unread-count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v1, "unseen-count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    const-string v1, "folder"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 485
    const-string v1, "get-attention"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 487
    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;ZLcom/android/mail/g/a;)V
    .locals 9

    .prologue
    .line 497
    const-string v0, "NotifUtils"

    const-string v1, "setNewEmailIndicator unreadCount = %d, unseenCount = %d, account = %s, folder = %s, getAttention = %b"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p4, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v1

    .line 506
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v2

    .line 507
    new-instance v5, Lcom/android/mail/utils/T;

    invoke-direct {v5, p3, p4}, Lcom/android/mail/utils/T;-><init>(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 508
    if-nez p1, :cond_2

    .line 509
    const-string v3, "NotifUtils"

    const-string v4, "setNewEmailIndicator - cancelling %s / %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p4, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 511
    invoke-virtual {v2, v5}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;)Landroid/util/Pair;

    .line 513
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v3

    .line 514
    invoke-virtual {v3, v1}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 515
    invoke-static {v5, v3}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V

    move v4, v0

    .line 529
    :goto_0
    invoke-virtual {v2, p0}, Lcom/android/mail/utils/U;->aD(Landroid/content/Context;)V

    .line 531
    const-string v0, "NotifUtils"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "NotifUtils"

    const-string v3, "New email: %s mapSize: %d getAttention: %b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/U;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/mail/utils/U;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v3, v6}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 537
    :cond_0
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/X;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move v3, p5

    move-object v6, p6

    .line 538
    invoke-static/range {v0 .. v6}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;ZZLcom/android/mail/utils/T;Lcom/android/mail/g/a;)V

    .line 541
    :cond_1
    return-void

    .line 517
    :cond_2
    const-string v3, "NotifUtils"

    const-string v4, "setNewEmailIndicator - update count for: %s / %s to: unread: %d unseen %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p4, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    invoke-virtual {v2, v5}, Lcom/android/mail/utils/U;->b(Lcom/android/mail/utils/T;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 524
    const-string v0, "NotifUtils"

    const-string v3, "setNewEmailIndicator - ignoringUnobtrusiveSetting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_3
    invoke-virtual {v2, v5, p1, p2}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;II)V

    move v4, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 5

    .prologue
    .line 1641
    const-string v0, "NotifUtils"

    const-string v1, "Clearing all notifications for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1642
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v1

    .line 1645
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zs()Lcom/google/common/collect/x;

    move-result-object v2

    .line 1647
    invoke-virtual {v1}, Lcom/android/mail/utils/U;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 1648
    iget-object v4, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1649
    invoke-virtual {v2, v0}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;

    goto :goto_0

    .line 1653
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1655
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v2

    .line 1658
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 1659
    iget-object v4, v0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    .line 1660
    invoke-static {p1, v4}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 1661
    invoke-virtual {v1, v0}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;)Landroid/util/Pair;

    .line 1663
    invoke-static {v0, v2}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V

    goto :goto_1

    .line 1666
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/mail/utils/U;->aD(Landroid/content/Context;)V

    .line 1667
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/g/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    const-string v0, "NotifUtils"

    const-string v1, "cancelAndResendNotificationsOnLocaleChange"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/N;->aui:Landroid/support/v4/e/a;

    .line 346
    const/4 v0, 0x1

    invoke-static {p0, v0, v3, v3, p1}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/p;Lcom/android/mail/g/a;)V

    .line 347
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/i/e;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Ljava/util/Map;ILandroid/database/Cursor;Landroid/app/PendingIntent;Landroid/content/Intent;IILcom/android/mail/providers/Folder;JLcom/android/mail/g/a;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/i/e;",
            "Landroid/support/v4/app/ab;",
            "Landroid/support/v4/app/ao;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mail/utils/S;",
            ">;I",
            "Landroid/database/Cursor;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "II",
            "Lcom/android/mail/providers/Folder;",
            "J",
            "Lcom/android/mail/g/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 975
    const/4 v4, 0x1

    move/from16 v0, p11

    if-le v0, v4, :cond_5

    const/4 v4, 0x1

    .line 977
    :goto_0
    const-string v5, "NotifUtils"

    const-string v6, "Showing notification with unreadCount of %d and unseenCount of %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 980
    move-object/from16 v0, p12

    iget-object v5, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v5, v5, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v6, v6, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 986
    if-eqz v15, :cond_6

    const/16 v16, 0x0

    .line 988
    :goto_1
    if-eqz v4, :cond_18

    .line 990
    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    .line 996
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 999
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    .line 1005
    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1008
    new-instance v25, Landroid/support/v4/app/ad;

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v4/app/ad;-><init>(Landroid/support/v4/app/ab;)V

    .line 1012
    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->c(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v26

    .line 1014
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 1015
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->e(Ljava/lang/String;)Landroid/support/v4/app/ab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ab;->ao()Landroid/support/v4/app/ab;

    .line 1017
    const/16 v19, 0x0

    .line 1018
    const/4 v4, 0x0

    move v10, v4

    .line 1020
    :goto_3
    new-instance v17, Lcom/android/mail/providers/Conversation;

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1022
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v4, :cond_1b

    .line 1023
    const/4 v13, 0x0

    .line 1026
    const/4 v12, 0x0

    .line 1027
    const/4 v11, 0x0

    .line 1029
    :try_start_0
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1030
    const-string v4, "label"

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v21

    .line 1034
    :try_start_1
    new-instance v20, Lcom/android/mail/browse/aC;

    invoke-direct/range {v20 .. v21}, Lcom/android/mail/browse/aC;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1036
    :try_start_2
    const-string v5, ""

    .line 1037
    const-string v4, ""

    .line 1038
    invoke-virtual/range {v20 .. v20}, Lcom/android/mail/browse/aC;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1039
    invoke-virtual/range {v20 .. v20}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    .line 1040
    invoke-virtual {v4}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v4

    .line 1041
    if-nez v4, :cond_0

    .line 1042
    const-string v4, ""

    .line 1044
    :cond_0
    invoke-static {v4}, Lcom/android/mail/utils/N;->cE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1045
    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/mail/utils/N;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    :cond_1
    move-object v6, v5

    move-object v5, v4

    move v4, v13

    .line 1047
    :cond_2
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/mail/browse/aC;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1048
    invoke-virtual/range {v20 .. v20}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v7

    .line 1049
    iget-boolean v8, v7, Lcom/android/mail/providers/Message;->aza:Z

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1051
    const/4 v4, 0x1

    .line 1052
    invoke-virtual {v7}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-static {v7, v0}, Lcom/android/mail/utils/N;->a(Ljava/lang/String;Ljava/util/HashSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 1122
    :catchall_0
    move-exception v4

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    :goto_5
    if-eqz v5, :cond_3

    .line 1123
    invoke-virtual {v5}, Lcom/android/mail/browse/aC;->close()V

    .line 1125
    :cond_3
    if-eqz v6, :cond_4

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 975
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 986
    :cond_6
    move-object/from16 v0, p12

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v4, v16

    .line 1005
    goto/16 :goto_2

    .line 1056
    :cond_8
    if-eqz v4, :cond_e

    .line 1057
    const v4, 0x7f0b0037

    :try_start_3
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1060
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-static {v0, v1, v4, v2}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Account;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 1066
    :goto_6
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mail/browse/ConversationItemView;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/providers/Conversation;->uG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    :goto_7
    new-instance v11, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f080199

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1070
    :goto_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ad;->g(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad;

    .line 1071
    add-int/lit8 v23, v10, 0x1

    .line 1074
    new-instance v7, Landroid/support/v4/app/ab;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    .line 1076
    const-string v5, "email"

    invoke-virtual {v7, v5}, Landroid/support/v4/app/ab;->d(Ljava/lang/String;)Landroid/support/v4/app/ab;

    .line 1078
    const v5, 0x7f0200e1

    invoke-virtual {v7, v5}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    .line 1081
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1082
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/support/v4/app/ab;->k(I)Landroid/support/v4/app/ab;

    .line 1086
    :cond_9
    invoke-virtual {v7, v4}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v4

    .line 1089
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mail/utils/N;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1091
    invoke-virtual {v7, v4}, Landroid/support/v4/app/ab;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    .line 1092
    invoke-virtual {v7}, Landroid/support/v4/app/ab;->an()Landroid/support/v4/app/ab;

    .line 1097
    const-string v4, "%019d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/mail/providers/Conversation;->azm:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/support/v4/app/ab;->e(Ljava/lang/String;)Landroid/support/v4/app/ab;

    .line 1100
    invoke-virtual {v7, v4}, Landroid/support/v4/app/ab;->f(Ljava/lang/String;)Landroid/support/v4/app/ab;

    .line 1101
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-virtual {v7, v4, v5}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    .line 1103
    invoke-virtual/range {v17 .. v17}, Lcom/android/mail/providers/Conversation;->hashCode()I

    move-result v4

    xor-int v17, p6, v4

    .line 1106
    new-instance v8, Landroid/support/v4/app/ao;

    invoke-direct {v8}, Landroid/support/v4/app/ao;-><init>()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p12

    move-wide/from16 v12, p13

    move-object/from16 v18, p15

    .line 1108
    invoke-static/range {v4 .. v18}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/i/e;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Landroid/database/Cursor;Landroid/content/Intent;Lcom/android/mail/providers/Folder;JLandroid/content/res/Resources;ZLjava/lang/String;ILcom/android/mail/g/a;)Lcom/android/mail/utils/P;

    move-result-object v4

    .line 1114
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8}, Lcom/android/mail/utils/S;->a(Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;)Lcom/android/mail/utils/S;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1118
    if-nez v19, :cond_1a

    .line 1122
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/mail/browse/aC;->close()V

    .line 1125
    if-eqz v21, :cond_1d

    .line 1126
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    move-object/from16 v19, v4

    move/from16 v4, v23

    .line 1130
    :goto_a
    move/from16 v0, v24

    if-gt v4, v0, :cond_a

    invoke-interface/range {p7 .. p7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1133
    :cond_a
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Landroid/support/v4/app/ab;Ljava/util/HashSet;)V

    .line 1135
    if-eqz v19, :cond_15

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    if-eqz v4, :cond_15

    .line 1136
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    iget-object v4, v4, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ao;->b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    move-object/from16 v4, v22

    .line 1167
    :goto_b
    if-eqz v16, :cond_b

    if-eqz v4, :cond_b

    .line 1169
    const v5, 0x7f09017c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v14, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1173
    :cond_b
    if-eqz v4, :cond_c

    .line 1175
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 1179
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p10

    if-le v0, v4, :cond_d

    .line 1180
    move-object/from16 v0, p3

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->i(I)Landroid/support/v4/app/ab;

    .line 1183
    :cond_d
    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    .line 1184
    return-void

    .line 1063
    :cond_e
    :try_start_4
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-static {v6}, Lcom/android/mail/utils/N;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    move-object v4, v5

    .line 1066
    goto/16 :goto_7

    :cond_10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v11, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f08019a

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v5, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/mail/utils/N;->aui:Landroid/support/v4/e/a;

    invoke-virtual {v8, v4}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v7, "%2$s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "%1$s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ge v7, v6, :cond_12

    const/4 v6, 0x1

    move v8, v6

    :goto_c
    if-eqz v8, :cond_13

    invoke-virtual {v13, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    :goto_d
    if-eqz v8, :cond_14

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    :goto_e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    const/4 v9, 0x0

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v12, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v4, v5

    goto/16 :goto_8

    :cond_12
    const/4 v6, 0x0

    move v8, v6

    goto :goto_c

    :cond_13
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    goto :goto_d

    :cond_14
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto :goto_e

    .line 1138
    :cond_15
    const-string v4, "NotifUtils"

    const-string v5, "First contact icon is null!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1139
    invoke-static/range {p0 .. p0}, Lcom/android/mail/utils/N;->aB(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ao;->b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    move-object/from16 v4, v22

    .line 1141
    goto/16 :goto_b

    .line 1143
    :cond_16
    if-eqz v15, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-object/from16 v4, v22

    .line 1146
    goto/16 :goto_b

    :cond_17
    move-object/from16 v4, v16

    .line 1143
    goto :goto_f

    .line 1151
    :cond_18
    invoke-static/range {p7 .. p7}, Lcom/android/mail/utils/N;->m(Landroid/database/Cursor;)Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p12

    move-wide/from16 v12, p13

    move/from16 v17, p6

    move-object/from16 v18, p15

    .line 1153
    invoke-static/range {v4 .. v18}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/i/e;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Landroid/database/Cursor;Landroid/content/Intent;Lcom/android/mail/providers/Folder;JLandroid/content/res/Resources;ZLjava/lang/String;ILcom/android/mail/g/a;)Lcom/android/mail/utils/P;

    move-result-object v5

    .line 1157
    iget-object v4, v5, Lcom/android/mail/utils/P;->aQh:Ljava/lang/String;

    .line 1159
    iget-object v6, v5, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    if-eqz v6, :cond_19

    .line 1160
    iget-object v5, v5, Lcom/android/mail/utils/P;->aQi:Lcom/android/mail/utils/Q;

    iget-object v5, v5, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ao;->b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    goto/16 :goto_b

    .line 1162
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/mail/utils/N;->aB(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ao;->b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    goto/16 :goto_b

    .line 1122
    :catchall_1
    move-exception v4

    move-object v5, v11

    move-object v6, v12

    goto/16 :goto_5

    :catchall_2
    move-exception v4

    move-object v5, v11

    move-object/from16 v6, v21

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v4, v19

    goto/16 :goto_9

    :cond_1b
    move v4, v10

    goto/16 :goto_a

    :cond_1c
    move v10, v4

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v19, v4

    move/from16 v4, v23

    goto/16 :goto_a
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1606
    const-string v0, "NotifUtils"

    const-string v1, "Clearing all notifications for %s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1608
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v0

    .line 1609
    new-instance v1, Lcom/android/mail/utils/T;

    invoke-direct {v1, p1, p2}, Lcom/android/mail/utils/T;-><init>(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 1610
    invoke-virtual {v0, v1}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;)Landroid/util/Pair;

    .line 1611
    invoke-virtual {v0, p0}, Lcom/android/mail/utils/U;->aD(Landroid/content/Context;)V

    .line 1613
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v0

    .line 1615
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 1617
    invoke-static {v1, v0}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V

    .line 1619
    if-eqz p3, :cond_0

    .line 1620
    iget-object v0, p2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1622
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;ZZLcom/android/mail/utils/T;Lcom/android/mail/g/a;)V
    .locals 30

    .prologue
    .line 550
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v21

    .line 552
    invoke-static/range {p0 .. p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v4

    .line 553
    const-string v5, "NotifUtils"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 554
    const-string v5, "NotifUtils"

    const-string v6, "Validating Notification: %s mapSize: %d folder: %s getAttention: %b ignoreUnobtrusive: %b"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/U;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/android/mail/utils/U;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 564
    :goto_0
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/mail/utils/U;->c(Lcom/android/mail/utils/T;)Ljava/lang/Integer;

    move-result-object v5

    .line 565
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 566
    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/mail/utils/U;->d(Lcom/android/mail/utils/T;)Ljava/lang/Integer;

    move-result-object v4

    .line 567
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v10, v4

    .line 569
    :goto_2
    const/4 v12, 0x0

    .line 572
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 573
    const-string v4, "seen"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 577
    const-string v4, "use_network"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 582
    if-nez v12, :cond_4

    .line 584
    const-string v4, "NotifUtils"

    const-string v5, "The cursor is null, so the specified folder probably does not exist"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 586
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    if-eqz v12, :cond_0

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 836
    :cond_0
    :goto_3
    return-void

    .line 559
    :cond_1
    const-string v5, "NotifUtils"

    const-string v6, "Validating Notification, mapSize: %d getAttention: %b ignoreUnobtrusive: %b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/mail/utils/U;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 565
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 567
    :cond_3
    const/4 v4, 0x0

    move v10, v4

    goto :goto_2

    .line 589
    :cond_4
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 593
    if-eqz v10, :cond_22

    move/from16 v0, v16

    if-eq v10, v0, :cond_22

    .line 594
    const-string v4, "NotifUtils"

    const-string v5, "Unseen count doesn\'t match cursor count.  unseen: %d cursor count: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 602
    :goto_4
    move/from16 v0, v16

    if-le v0, v15, :cond_5

    move/from16 v16, v15

    .line 606
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v11

    .line 609
    new-instance v24, Lcom/android/mail/utils/T;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mail/utils/T;-><init>(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 611
    if-nez v16, :cond_6

    .line 612
    const-string v4, "NotifUtils"

    const-string v5, "validateNotifications - cancelling account %s / folder %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "NotifUtils"

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "NotifUtils"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 615
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 616
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    if-eqz v12, :cond_0

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 622
    :cond_6
    const/4 v13, 0x0

    .line 624
    :try_start_2
    new-instance v25, Landroid/support/v4/app/ab;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    .line 625
    new-instance v26, Landroid/support/v4/app/ao;

    invoke-direct/range {v26 .. v26}, Landroid/support/v4/app/ao;-><init>()V

    .line 627
    new-instance v10, Landroid/support/v4/f/a;

    invoke-direct {v10}, Landroid/support/v4/f/a;-><init>()V

    .line 630
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->k(I)Landroid/support/v4/app/ab;

    .line 635
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v16

    if-le v0, v4, :cond_9

    .line 636
    const v4, 0x7f0200e1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    .line 640
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 641
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->l(I)Landroid/support/v4/app/ab;

    .line 642
    const-string v4, "email"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->d(Ljava/lang/String;)Landroid/support/v4/app/ab;

    .line 646
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    invoke-virtual {v4, v11}, Lcom/android/mail/utils/Z;->get(I)J

    move-result-wide v22

    .line 648
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_b

    move-wide/from16 v18, v22

    .line 654
    :goto_6
    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    .line 657
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    invoke-virtual {v4, v11}, Lcom/android/mail/utils/Z;->delete(I)V

    .line 662
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v5, v5, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mail/utils/ag;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 667
    const-string v5, "account"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 668
    const-string v5, "folder"

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 670
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    .line 674
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/ab;->an()Landroid/support/v4/app/ab;

    .line 676
    const/4 v4, 0x0

    .line 678
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v6, v6, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 679
    new-instance v27, Lcom/android/mail/i/e;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 682
    if-eqz v5, :cond_8

    .line 683
    new-instance v5, Lcom/android/mail/i/a;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/i/a;Lcom/android/mail/i/e;)V

    .line 688
    :cond_8
    invoke-virtual/range {v27 .. v27}, Lcom/android/mail/i/e;->to()Z

    move-result v5

    if-nez v5, :cond_c

    .line 689
    const-string v4, "NotifUtils"

    const-string v5, "Notifications are disabled for this folder; not notifying"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 832
    if-eqz v12, :cond_0

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 638
    :cond_9
    const v4, 0x7f0200df

    :try_start_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 832
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_a

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4

    .line 651
    :cond_b
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    goto/16 :goto_6

    .line 694
    :cond_c
    if-lez v15, :cond_21

    .line 696
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 700
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_d

    const/4 v4, 0x1

    move v6, v4

    .line 701
    :goto_7
    if-eqz v6, :cond_e

    .line 702
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v12}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v14

    .line 709
    :goto_8
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v4

    const-string v5, "notification_create"

    if-eqz v6, :cond_f

    const-string v6, "conversation"

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v16

    int-to-long v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 713
    if-nez v14, :cond_10

    .line 714
    const-string v4, "NotifUtils"

    const-string v5, "Null intent when building notification"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 832
    if-eqz v12, :cond_0

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 700
    :cond_d
    const/4 v4, 0x0

    move v6, v4

    goto :goto_7

    .line 705
    :cond_e
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v14

    goto :goto_8

    .line 709
    :cond_f
    const-string v6, "conversation_list"

    goto :goto_9

    .line 718
    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mail/utils/N;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v27

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v17, p1

    move-object/from16 v20, p6

    .line 720
    invoke-static/range {v5 .. v20}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/i/e;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Ljava/util/Map;ILandroid/database/Cursor;Landroid/app/PendingIntent;Landroid/content/Intent;IILcom/android/mail/providers/Folder;JLcom/android/mail/g/a;)V

    .line 724
    const/4 v4, 0x1

    move v8, v4

    .line 728
    :goto_a
    invoke-virtual/range {v27 .. v27}, Lcom/android/mail/i/e;->tv()Z

    move-result v9

    .line 729
    invoke-virtual/range {v27 .. v27}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v14

    .line 730
    invoke-virtual/range {v27 .. v27}, Lcom/android/mail/i/e;->tw()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x1

    .line 732
    :goto_b
    if-nez p4, :cond_11

    if-eqz v4, :cond_11

    .line 736
    const-string v4, "NotifUtils"

    const-string v5, "Setting Alert Once"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 737
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/ab;->am()Landroid/support/v4/app/ab;

    .line 740
    :cond_11
    const-string v4, "NotifUtils"

    const-string v5, "Account: %s vibrate: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v17, "NotifUtils"

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {v27 .. v27}, Lcom/android/mail/i/e;->tv()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 744
    const/4 v6, 0x0

    .line 749
    sget-object v4, Lcom/android/mail/utils/N;->aQg:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 751
    if-eqz v4, :cond_13

    .line 752
    const/4 v7, 0x0

    .line 753
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_12
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 754
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 760
    :cond_13
    const/4 v5, 0x1

    .line 763
    :goto_c
    const-string v7, "NotifUtils"

    const-string v17, "getAttention=%s,oldWhen=%s,hasNewConversationNotification=%s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v27, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v20, v27

    const/16 v27, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v20, v27

    const/16 v27, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v20, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    if-eqz p3, :cond_20

    const-wide/16 v28, 0x0

    cmp-long v7, v22, v28

    if-nez v7, :cond_20

    if-eqz v5, :cond_20

    .line 771
    new-instance v5, Lcom/android/mail/i/a;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v5}, Lcom/android/mail/i/a;->to()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 774
    if-eqz v9, :cond_1f

    .line 775
    const/4 v5, 0x2

    .line 778
    :goto_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    :goto_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/support/v4/app/ab;->a(Landroid/net/Uri;)Landroid/support/v4/app/ab;

    .line 780
    const-string v6, "NotifUtils"

    const-string v7, "New email in %s vibrateWhen: %s, playing notification: %s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v27, "NotifUtils"

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v17, v20

    const/16 v20, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v17, v20

    const/4 v9, 0x2

    aput-object v14, v17, v9

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 787
    :goto_f
    if-eqz v8, :cond_1e

    .line 788
    or-int/lit8 v5, v5, 0x4

    .line 789
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ab;->j(I)Landroid/support/v4/app/ab;

    .line 791
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-eqz v5, :cond_14

    .line 794
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 797
    :cond_14
    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/app/ab;->a(Landroid/support/v4/app/ac;)Landroid/support/v4/app/ab;

    .line 800
    const/4 v5, 0x1

    move/from16 v0, v16

    if-le v0, v5, :cond_1a

    const/4 v5, 0x1

    :goto_10
    new-instance v6, Landroid/support/v4/app/ab;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/support/v4/app/ab;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/support/v4/app/ab;->i(I)Landroid/support/v4/app/ab;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/ab;->l(I)Landroid/support/v4/app/ab;

    move-result-object v6

    const-string v7, "email"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/ab;->d(Ljava/lang/String;)Landroid/support/v4/app/ab;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    move-result-object v6

    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00a8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/ab;->k(I)Landroid/support/v4/app/ab;

    :cond_15
    if-eqz v5, :cond_1b

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->c(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/support/v4/app/ab;->e(Ljava/lang/String;)Landroid/support/v4/app/ab;

    invoke-virtual {v6}, Landroid/support/v4/app/ab;->ao()Landroid/support/v4/app/ab;

    const v5, 0x7f0200e1

    invoke-virtual {v6, v5}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    :goto_11
    invoke-virtual {v6}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v5

    .line 803
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)Landroid/support/v4/app/ab;

    .line 805
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v5}, Landroid/support/v4/app/aA;->notify(ILandroid/app/Notification;)V

    .line 807
    if-eqz v4, :cond_1c

    .line 808
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 809
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 810
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 811
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 812
    const-string v7, "NotifUtils"

    const-string v8, "canceling conversation notification %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_12

    .line 730
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_18
    move v5, v7

    .line 755
    goto/16 :goto_c

    .line 778
    :cond_19
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_e

    .line 800
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_1b
    const v5, 0x7f0200df

    invoke-virtual {v6, v5}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    goto :goto_11

    .line 818
    :cond_1c
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mail/utils/S;

    .line 820
    iget-object v6, v5, Lcom/android/mail/utils/S;->aQo:Landroid/support/v4/app/ab;

    iget-object v8, v5, Lcom/android/mail/utils/S;->aQp:Landroid/support/v4/app/ao;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/ab;->a(Landroid/support/v4/app/ac;)Landroid/support/v4/app/ab;

    .line 821
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Lcom/android/mail/utils/S;->aQo:Landroid/support/v4/app/ab;

    invoke-virtual {v5}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/support/v4/app/aA;->notify(ILandroid/app/Notification;)V

    .line 822
    const-string v5, "NotifUtils"

    const-string v6, "notifying conversation notification %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v5, v6, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_13

    .line 825
    :cond_1d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 826
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 827
    sget-object v5, Lcom/android/mail/utils/N;->aQg:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 832
    :goto_14
    if-eqz v12, :cond_0

    .line 833
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 829
    :cond_1e
    :try_start_6
    const-string v4, "NotifUtils"

    const-string v5, "event info not configured - not notifying"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_14

    :cond_1f
    move v5, v6

    goto/16 :goto_d

    :cond_20
    move v5, v6

    goto/16 :goto_f

    :cond_21
    move v8, v4

    goto/16 :goto_a

    :cond_22
    move/from16 v16, v10

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/p;Lcom/android/mail/g/a;)V
    .locals 9

    .prologue
    .line 367
    const-string v1, "NotifUtils"

    const-string v2, "resendNotifications cancelExisting: %b, account: %s, folder: %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x2

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    if-eqz p1, :cond_0

    .line 373
    const-string v0, "NotifUtils"

    const-string v1, "resendNotifications - cancelling all"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 374
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/support/v4/app/aA;->cancelAll()V

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/android/mail/utils/U;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mail/utils/T;

    .line 381
    iget-object v1, v5, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    .line 382
    iget-object v0, v5, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v0

    .line 387
    if-eqz p2, :cond_3

    iget-object v2, v5, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-static {p2, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    iget-object v2, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-static {p3, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    const-string v0, "NotifUtils"

    const-string v2, "resendNotifications - not resending %s / %s because it doesn\'t match %s / %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v5, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object p2, v3, v1

    const/4 v1, 0x3

    aput-object p3, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 367
    :cond_1
    const-string v0, "NotifUtils"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "NotifUtils"

    invoke-virtual {p3}, Lcom/android/mail/utils/p;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 395
    :cond_3
    const-string v2, "NotifUtils"

    const-string v3, "resendNotifications - resending %s / %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v8, v5, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    iget-object v8, v8, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v8, v4, v6

    const/4 v6, 0x1

    iget-object v8, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    aput-object v8, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    sget-object v2, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v2, v0}, Lcom/android/mail/utils/X;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    .line 400
    if-nez v0, :cond_4

    .line 401
    iget-object v2, v5, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;ZZLcom/android/mail/utils/T;Lcom/android/mail/g/a;)V

    goto/16 :goto_2

    .line 405
    :cond_4
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->e(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto/16 :goto_2

    .line 408
    :cond_5
    return-void
.end method

.method private static a(Landroid/support/v4/app/ab;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ab;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1341
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1343
    const-string v2, "mailto:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/ab;->dG:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1348
    :cond_1
    return-void
.end method

.method public static a(Lcom/android/mail/i/a;Lcom/android/mail/i/e;)V
    .locals 1

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/android/mail/i/a;->tl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2005
    invoke-virtual {p1}, Lcom/android/mail/i/e;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2006
    invoke-virtual {p0}, Lcom/android/mail/i/a;->tm()Z

    move-result v0

    .line 2009
    invoke-virtual {p1, v0}, Lcom/android/mail/i/e;->aW(Z)V

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/i/a;->tn()V

    .line 2014
    :cond_1
    return-void
.end method

.method private static a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V
    .locals 2

    .prologue
    .line 1671
    sget-object v0, Lcom/android/mail/utils/N;->aQg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1672
    if-eqz v0, :cond_1

    .line 1673
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1674
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/aA;->cancel(I)V

    goto :goto_0

    .line 1676
    :cond_0
    sget-object v0, Lcom/android/mail/utils/N;->aQg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1884
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1885
    invoke-static {p0}, Lcom/android/mail/d;->aY(Ljava/lang/String;)Lcom/android/mail/d;

    move-result-object v0

    .line 1886
    invoke-virtual {v0}, Lcom/android/mail/d;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1890
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    const-string v0, "NotifUtils"

    const-string v1, "Unable to grab email from \"%s\" for notification tagging"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NotifUtils"

    invoke-static {v4, p0}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static declared-synchronized aA(Landroid/content/Context;)Lcom/android/mail/utils/U;
    .locals 3

    .prologue
    .line 133
    const-class v1, Lcom/android/mail/utils/N;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/utils/N;->aQa:Lcom/android/mail/utils/U;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/mail/utils/U;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/mail/utils/U;-><init>(B)V

    .line 137
    sput-object v0, Lcom/android/mail/utils/N;->aQa:Lcom/android/mail/utils/U;

    invoke-virtual {v0, p0}, Lcom/android/mail/utils/U;->aC(Landroid/content/Context;)V

    .line 139
    :cond_0
    sget-object v0, Lcom/android/mail/utils/N;->aQa:Lcom/android/mail/utils/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static aB(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 957
    sget-object v0, Lcom/android/mail/utils/N;->aQc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 958
    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 960
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/mail/utils/N;->aQc:Ljava/lang/ref/WeakReference;

    .line 962
    :cond_0
    return-object v0
.end method

.method public static az(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 123
    const-string v0, "NotifUtils"

    const-string v1, "Clearing all notifications."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/android/mail/utils/U;->clear()V

    .line 126
    invoke-virtual {v0, p0}, Lcom/android/mail/utils/U;->aD(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1628
    const-string v0, "NotifUtils"

    const-string v1, "markConversationAsReadAndSeen=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1630
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1631
    const-string v1, "seen"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1632
    const-string v1, "read"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1633
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1634
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 909
    const-string v0, "notification"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 910
    const/4 v0, -0x1

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 912
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 913
    return-object v0
.end method

.method private static c(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cC(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1351
    if-nez p0, :cond_0

    .line 1352
    const-string v0, "NotifUtils"

    const-string v1, "null from string in getWrappedFromString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1353
    const-string p0, ""

    .line 1355
    :cond_0
    sget-object v0, Lcom/android/mail/utils/N;->aui:Landroid/support/v4/e/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    return-object v0
.end method

.method public static cD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1816
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    const-string v0, ""

    .line 1823
    :goto_0
    return-object v0

    .line 1820
    :cond_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->cH(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    .line 1821
    sget-object v1, Lcom/android/mail/utils/N;->aQf:Lcom/google/android/mail/common/html/parser/t;

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/t;)V

    .line 1823
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static cE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1841
    invoke-static {p0}, Lcom/android/mail/d;->aY(Ljava/lang/String;)Lcom/android/mail/d;

    move-result-object v0

    .line 1843
    invoke-virtual {v0}, Lcom/android/mail/d;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1845
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1846
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->aj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1857
    :cond_0
    :goto_0
    return-object p0

    .line 1850
    :cond_1
    invoke-virtual {v0}, Lcom/android/mail/d;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 414
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v0, "NotifUtils"

    const-string v2, "validateAccountNotifications - %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 420
    invoke-static {p0}, Lcom/android/mail/utils/N;->aA(Landroid/content/Context;)Lcom/android/mail/utils/U;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Lcom/android/mail/utils/U;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 422
    new-instance v4, Lcom/android/mail/i/a;

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4}, Lcom/android/mail/i/a;->to()Z

    move-result v4

    .line 425
    if-nez v4, :cond_1

    .line 427
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 428
    iget-object v5, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v5}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 429
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 436
    iget-object v5, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v5}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, v0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    .line 440
    iget-object v6, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v7, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    iget-object v7, v7, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v7, v7, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 442
    new-instance v7, Lcom/android/mail/i/e;

    iget-object v8, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v8}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v5, v6}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 445
    invoke-virtual {v7}, Lcom/android/mail/i/e;->to()Z

    move-result v5

    if-nez v5, :cond_2

    .line 446
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 454
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v1

    .line 455
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/T;

    .line 456
    iget-object v4, v0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    .line 457
    iget-object v5, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v5}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v5

    .line 459
    const-string v6, "NotifUtils"

    const-string v7, "validateAccountNotifications - cancelling %s / %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v9}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    aput-object v4, v8, v11

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 461
    invoke-virtual {v1, v5}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 462
    invoke-virtual {v3, v0}, Lcom/android/mail/utils/U;->a(Lcom/android/mail/utils/T;)Landroid/util/Pair;

    .line 463
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v4, v5}, Lcom/android/mail/utils/X;->remove(I)V

    .line 464
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    invoke-virtual {v4, v5}, Lcom/android/mail/utils/Z;->delete(I)V

    .line 466
    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/utils/T;Landroid/support/v4/app/aA;)V

    goto :goto_2

    .line 468
    :cond_4
    invoke-virtual {v3, p0}, Lcom/android/mail/utils/U;->aD(Landroid/content/Context;)V

    .line 470
    :cond_5
    return-void
.end method

.method private static k(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 898
    const v1, 0x7f110011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 1426
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1428
    :cond_0
    new-instance v1, Lcom/android/mail/providers/Conversation;

    invoke-direct {v1, p0}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1429
    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v1, :cond_1

    .line 1430
    const/4 v0, 0x1

    .line 1436
    :goto_0
    return v0

    .line 1432
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1435
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1436
    const/4 v0, 0x0

    goto :goto_0
.end method
