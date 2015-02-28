.class final Lcom/android/mail/providers/D;
.super Lcom/android/mail/utils/G;
.source "SourceFile"


# instance fields
.field final synthetic aCo:Lcom/android/mail/providers/C;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/C;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mail/providers/D;->aCo:Lcom/android/mail/providers/C;

    .line 117
    invoke-static {}, Lcom/android/mail/providers/C;->kK()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public final cf(Ljava/lang/String;)Lcom/android/mail/providers/D;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 127
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/android/mail/providers/D;->aCo:Lcom/android/mail/providers/C;

    iget-object v0, v0, Lcom/android/mail/providers/C;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/mail/providers/C;->kH()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/providers/D;->aCo:Lcom/android/mail/providers/C;

    iget-object v2, v2, Lcom/android/mail/providers/C;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/2130837606"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    if-eqz v1, :cond_2

    .line 138
    const-string v0, "data4"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 140
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 143
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/mail/providers/D;->aCo:Lcom/android/mail/providers/C;

    invoke-static {v7, v0}, Lcom/android/mail/providers/C;->a(Lcom/android/mail/providers/C;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    aput-object v2, v5, v0

    invoke-virtual {p0, v5}, Lcom/android/mail/providers/D;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_2
    return-object p0
.end method
