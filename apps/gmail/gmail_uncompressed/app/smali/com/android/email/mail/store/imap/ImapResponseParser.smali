.class public final Lcom/android/email/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Rd:Lcom/android/email/q;

.field private final Re:Lcom/android/email/mail/transport/a;

.field private final Rf:I

.field private final Rg:Ljava/lang/StringBuilder;

.field private final Rh:Ljava/lang/StringBuilder;

.field private final Ri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/a;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/a;B)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/a;B)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rg:Ljava/lang/StringBuilder;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Ri:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/android/email/q;

    invoke-direct {v0, p1}, Lcom/android/email/q;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rd:Lcom/android/email/q;

    .line 96
    iput-object p2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Re:Lcom/android/email/mail/transport/a;

    .line 97
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rf:I

    .line 98
    return-void
.end method

.method private a(CC)Lcom/android/email/mail/store/imap/d;
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 427
    new-instance v0, Lcom/android/email/mail/store/imap/d;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/d;-><init>()V

    .line 428
    invoke-direct {p0, v0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(Lcom/android/email/mail/store/imap/d;C)V

    .line 429
    invoke-direct {p0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 430
    return-object v0
.end method

.method private a(Lcom/android/email/mail/store/imap/d;C)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v0

    .line 407
    if-ne v0, p2, :cond_1

    .line 418
    :cond_0
    return-void

    .line 410
    :cond_1
    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 411
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jK()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    .line 417
    :goto_1
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/d;->a(Lcom/android/email/mail/store/imap/b;)V

    goto :goto_0

    .line 416
    :sswitch_0
    const/16 v0, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(CC)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(CC)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    new-instance v0, Lcom/android/email/mail/store/imap/h;

    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->c(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/imap/h;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jL()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    move-object v0, v1

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    move-object v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    :cond_0
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception detected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Re:Lcom/android/email/mail/transport/a;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/a;->iW()V

    .line 206
    return-void
.end method

.method private b(C)V
    .locals 6

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    move-result v0

    .line 214
    if-eq p1, v0, :cond_0

    .line 215
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    return-void
.end method

.method private c(C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rg:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    move-result v0

    .line 228
    if-eq v0, p1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rg:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private gS()I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rd:Lcom/android/email/q;

    invoke-virtual {v0}, Lcom/android/email/q;->gS()I

    move-result v0

    .line 116
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jG()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 119
    :cond_0
    return v0
.end method

.method private static jG()Ljava/io/IOException;
    .locals 3

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "End of stream reached"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of stream reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private jH()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rd:Lcom/android/email/q;

    invoke-virtual {v0}, Lcom/android/email/q;->read()I

    move-result v0

    .line 130
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jG()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Re:Lcom/android/email/mail/transport/a;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/a;->ba(I)V

    .line 134
    return v0
.end method

.method private jI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->c(C)Ljava/lang/String;

    move-result-object v0

    .line 241
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 242
    return-object v0
.end method

.method private jJ()Lcom/android/email/mail/store/imap/g;
    .locals 7

    .prologue
    const/16 v5, 0x5b

    const/4 v1, 0x0

    const/16 v4, 0x20

    .line 255
    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v0

    .line 260
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    .line 262
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 263
    new-instance v0, Lcom/android/email/mail/store/imap/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/email/mail/store/imap/g;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    new-instance v1, Lcom/android/email/mail/store/imap/h;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/store/imap/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->a(Lcom/android/email/mail/store/imap/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_4

    .line 276
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    .line 277
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    move-object v2, v1

    .line 281
    :goto_1
    new-instance v0, Lcom/android/email/mail/store/imap/g;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/email/mail/store/imap/g;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    :try_start_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jK()Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->a(Lcom/android/email/mail/store/imap/b;)V

    .line 289
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 290
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    .line 292
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v1

    .line 296
    if-ne v1, v5, :cond_2

    .line 297
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(CC)Lcom/android/email/mail/store/imap/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->a(Lcom/android/email/mail/store/imap/b;)V

    .line 298
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jI()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    new-instance v2, Lcom/android/email/mail/store/imap/h;

    invoke-direct {v2, v1}, Lcom/android/email/mail/store/imap/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/g;->a(Lcom/android/email/mail/store/imap/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->destroy()V

    :cond_3
    throw v0

    .line 279
    :cond_4
    const/16 v0, 0x20

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->c(C)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 309
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(Lcom/android/email/mail/store/imap/d;C)V

    goto :goto_0

    .line 312
    :cond_6
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 313
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 323
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private jK()Lcom/android/email/mail/store/imap/i;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 364
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->gS()I

    move-result v0

    .line 369
    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_4

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 382
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Expected string, none found."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    const-string v0, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 390
    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Lcom/android/email/mail/store/imap/h;

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/imap/h;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_4
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_5

    .line 393
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rh:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jH()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private jL()Lcom/android/email/mail/store/imap/i;
    .locals 3

    .prologue
    .line 434
    const/16 v0, 0x7b

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 437
    const/16 v0, 0x7d

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->c(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 441
    if-gez v0, :cond_0

    .line 442
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid negative length in literal"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :catch_0
    move-exception v0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid length in literal"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 445
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->b(C)V

    .line 446
    new-instance v1, Lcom/android/email/k;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rd:Lcom/android/email/q;

    invoke-direct {v1, v2, v0}, Lcom/android/email/k;-><init>(Ljava/io/InputStream;I)V

    .line 447
    iget v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Rf:I

    if-le v0, v2, :cond_1

    .line 448
    new-instance v0, Lcom/android/email/mail/store/imap/k;

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/imap/k;-><init>(Lcom/android/email/k;)V

    .line 450
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/email/mail/store/imap/f;

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/imap/f;-><init>(Lcom/android/email/k;)V

    goto :goto_0
.end method


# virtual methods
.method public final iQ()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Ri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 144
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->destroy()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Ri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    return-void
.end method

.method public final iR()Lcom/android/email/mail/store/imap/g;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->jJ()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    .line 164
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :cond_0
    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Received BYE"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->destroy()V

    .line 182
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(Ljava/lang/Exception;)V

    .line 171
    throw v0

    .line 172
    :catch_1
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->a(Ljava/lang/Exception;)V

    .line 175
    throw v0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->Ri:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method
