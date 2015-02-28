.class public Lcom/android/emailcommon/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Wq:Ljava/text/SimpleDateFormat;

.field private static final Wx:Ljava/util/regex/Pattern;

.field static Wy:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/a/j;->Wq:Ljava/text/SimpleDateFormat;

    .line 63
    const-string v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/j;->Wx:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/g;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v6, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 132
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    sget-object v0, Lcom/android/emailcommon/a/j;->Wq:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/g;->YK:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "Date"

    invoke-static {v7, v1, v0}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "Subject"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/android/emailcommon/a/i;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 142
    :cond_1
    const-string v0, "Message-ID"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "From"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->b(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "To"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->b(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Cc"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->b(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "Reply-To"

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->b(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-wide v0, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/e;->q(Landroid/content/Context;J)Lcom/android/emailcommon/provider/e;

    move-result-object v1

    .line 157
    if-nez v1, :cond_2

    new-array v0, v10, [Ljava/lang/String;

    move-object v1, v0

    .line 160
    :goto_1
    iget-wide v8, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->p(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 165
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v4

    .line 168
    :goto_2
    if-nez v0, :cond_4

    .line 169
    invoke-static {v7, v6, v1}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 207
    :goto_3
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 208
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 157
    :cond_2
    new-array v0, v10, [Ljava/lang/String;

    iget-object v2, v1, Lcom/android/emailcommon/provider/e;->Yz:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, v1, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    aput-object v2, v0, v4

    iget v1, v1, Lcom/android/emailcommon/provider/e;->YA:I

    move-object v1, v0

    goto :goto_1

    :cond_3
    move v0, v5

    .line 165
    goto :goto_2

    .line 172
    :cond_4
    invoke-static {}, Lcom/android/emailcommon/a/j;->lh()Ljava/lang/String;

    move-result-object v9

    .line 173
    const-string v2, "mixed"

    .line 176
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 179
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    .line 180
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 181
    const-string v0, "alternative"

    .line 185
    :goto_4
    const-string v2, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "multipart/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "; boundary=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    aget-object v0, v1, v5

    if-nez v0, :cond_5

    aget-object v0, v1, v4

    if-eqz v0, :cond_6

    .line 192
    :cond_5
    invoke-static {v7, v9, v5}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 193
    invoke-static {v7, v6, v1}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 197
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 198
    invoke-static {v7, v9, v5}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 199
    const-string v1, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ";\n name=\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Transfer-Encoding"

    const-string v8, "base64"

    invoke-static {v7, v1, v8}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    const-string v1, "Content-Disposition"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "attachment;\n filename=\""

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\";\n size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "Content-ID"

    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    invoke-static {v7, v1, v8}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "\r\n"

    invoke-virtual {v7, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :try_start_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yu:[B

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yu:[B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    :goto_6
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v8, 0x14

    invoke-direct {v1, v6, v8}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {v0, v1}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 200
    :goto_7
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 199
    :cond_9
    :try_start_1
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_8
    if-nez v1, :cond_c

    :try_start_3
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v1

    const-string v1, "Email"

    const-string v8, "Rfc822Output#writeOneAttachment(), failed to loadcached file, falling back to: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v8, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_a
    move-object v1, v3

    goto :goto_8

    :catch_1
    move-exception v0

    const-string v1, "Email"

    const-string v8, "Rfc822Output#writeOneAttachment(), FileNotFoundExceptionwhen sending attachment"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v8, v10}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Rfc822Output#writeOneAttachment(), IOExceptionwhen sending attachment"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Invalid attachment."

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_b
    invoke-static {v7, v9, v4}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_6

    :cond_d
    move-object v0, v2

    goto/16 :goto_4
.end method

.method private static a(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    .line 368
    aget-object v0, p2, v2

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    aget-object v0, p2, v1

    .line 373
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 385
    :goto_1
    return-void

    .line 377
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "text/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v1, "html"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; charset=utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/a/j;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 383
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 377
    :cond_1
    const-string v1, "plain"

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private static a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 297
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 298
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 299
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 301
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 346
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 347
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 348
    if-eqz p2, :cond_0

    .line 349
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 351
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 352
    return-void
.end method

.method private static b(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 331
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 332
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 333
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 335
    :cond_0
    return-void
.end method

.method private static lh()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 393
    const-class v1, Lcom/android/emailcommon/a/j;

    monitor-enter v1

    .line 394
    :try_start_0
    sget-byte v2, Lcom/android/emailcommon/a/j;->Wy:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    sget-byte v2, Lcom/android/emailcommon/a/j;->Wy:B

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    sput-byte v2, Lcom/android/emailcommon/a/j;->Wy:B

    .line 396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
