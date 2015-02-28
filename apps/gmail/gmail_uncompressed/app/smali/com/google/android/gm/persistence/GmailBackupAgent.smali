.class public Lcom/google/android/gm/persistence/GmailBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;>;>;)J"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 593
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 594
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 595
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 596
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->Ey()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;J)V

    .line 597
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->Ez()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;J)V

    .line 598
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/util/List;)V

    .line 599
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/util/List;)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SharedPreference;

    .line 602
    invoke-virtual {v0}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 603
    invoke-virtual {v0}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_1

    .line 605
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/c;

    .line 606
    invoke-interface {v0}, Lcom/android/mail/i/c;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 607
    invoke-interface {v0}, Lcom/android/mail/i/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_2

    .line 609
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 611
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 613
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/c;

    .line 614
    invoke-interface {v0}, Lcom/android/mail/i/c;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 615
    invoke-interface {v0}, Lcom/android/mail/i/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_3

    .line 619
    :cond_4
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 620
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 624
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/c;

    .line 627
    invoke-interface {v0}, Lcom/android/mail/i/c;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 628
    invoke-interface {v0}, Lcom/android/mail/i/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_4

    .line 633
    :cond_7
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    .line 539
    new-array v1, v0, [B

    .line 540
    invoke-virtual {p0, v1, v3, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 541
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 542
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 544
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    const-string v1, "GmailBackupAgent"

    const-string v2, "Invalid restore data"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 547
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/zip/Adler32;J)V
    .locals 3

    .prologue
    .line 652
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 653
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 654
    return-void
.end method

.method private static a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 638
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/util/zip/Adler32;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/Adler32;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    const-wide/16 v4, 0x7c

    invoke-static {p0, v4, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/zip/Adler32;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gm/persistence/a;)[B
    .locals 5

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/a;->lC()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v1, "GmailBackupAgent"

    const-string v2, "Writing backup data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 555
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static ax(Landroid/content/Context;)[Lcom/android/mail/providers/Account;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 491
    new-instance v1, Lcom/android/mail/c/b;

    sget-object v2, Lcom/android/mail/providers/Account;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v0, v2}, Lcom/android/mail/c/b;-><init>(Landroid/database/Cursor;Lcom/android/mail/c/a;)V

    .line 493
    :try_start_0
    invoke-static {v1}, Lcom/android/mail/providers/Account;->b(Lcom/android/mail/c/b;)[Lcom/android/mail/providers/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 495
    invoke-virtual {v1}, Lcom/android/mail/c/b;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/mail/c/b;->close()V

    throw v0
.end method

.method private static b(Landroid/app/backup/BackupDataInput;)Lcom/google/android/gm/persistence/a;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    .line 561
    new-array v2, v0, [B

    .line 562
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 563
    invoke-static {v2}, Lcom/google/android/gm/persistence/GmailBackupAgent;->e([B)Lcom/google/android/gm/persistence/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    const-string v2, "GmailBackupAgent"

    const-string v3, "Invalid restore data"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    new-instance v0, Lcom/google/android/gm/persistence/a;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static bl(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/b;->bO(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 137
    const-string v0, "GmailBackupAgent"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SharedPreference;

    .line 139
    const-string v3, "GmailBackupAgent"

    const-string v4, "Backup %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method

.method private static bm(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/android/mail/i/g;->tY()Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/c;

    .line 150
    const-string v3, "GmailBackupAgent"

    const-string v4, "Backup %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 152
    :cond_0
    return-object v1
.end method

.method private static bn(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-static {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->ax(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v2

    .line 162
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 163
    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    .line 164
    new-instance v6, Lcom/android/mail/i/a;

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v4}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Lcom/android/mail/i/a;->tY()Ljava/util/List;

    move-result-object v4

    .line 169
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-object v1
.end method

.method private static bo(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-static {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->ax(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v4

    .line 182
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 183
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-virtual {v6}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-static {p0, v8, v1}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v9

    move v0, v1

    .line 191
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gm/provider/U;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 192
    invoke-virtual {v9, v0}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v10

    .line 193
    invoke-virtual {v10}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-static {p0, v8, v10}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v11

    .line 196
    new-instance v12, Lcom/google/android/gm/preference/j;

    invoke-virtual {v6}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, p0, v13, v11, v1}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 199
    invoke-virtual {v12}, Lcom/android/mail/i/e;->tZ()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 200
    invoke-virtual {v12}, Lcom/android/mail/i/e;->tY()Ljava/util/List;

    move-result-object v11

    .line 203
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 212
    :cond_3
    return-object v3
.end method

.method private static bp(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bq(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->Q(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_0
    const-string v0, "GmailBackupAgent"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    const-string v3, "GmailBackupAgent"

    const-string v4, "Backup %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 230
    :cond_1
    return-object v1
.end method

.method private static bq(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v2

    .line 502
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 503
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 505
    const-string v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "internal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 507
    const/16 v5, 0x9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    return-object v1
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 482
    const-string v0, "GmailBackupAgent"

    const-string v1, "%s may have changed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 483
    const-string v0, "com.google.android.gm"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private static e([B)Lcom/google/android/gm/persistence/a;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 572
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 573
    const-string v2, "GmailBackupAgent"

    const-string v3, "Reading restore data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 574
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gm/persistence/a;->g(Lorg/json/JSONObject;)Lcom/google/android/gm/persistence/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    const-string v2, "GmailBackupAgent"

    const-string v3, "Invalid restore data"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 577
    new-instance v0, Lcom/google/android/gm/persistence/a;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 578
    :catch_1
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 should never throw a UnsupportedEncodingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 581
    :catch_2
    move-exception v0

    .line 582
    const-string v2, "GmailBackupAgent"

    const-string v3, "Invalid restore data"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    new-instance v0, Lcom/google/android/gm/persistence/a;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bp(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bl(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bn(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 99
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 103
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide v6

    .line 105
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    invoke-virtual {v0, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 110
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 115
    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    .line 116
    const-string v0, "GmailBackupAgent"

    const-string v6, "No changes to backup"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    const-string v0, "GmailBackupAgent"

    const-string v6, "Failed to read old backup state"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    :cond_1
    new-instance v0, Lcom/google/android/gm/persistence/a;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 127
    :try_start_1
    const-string v1, "backup_data_v3"

    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Lcom/google/android/gm/persistence/a;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to serialize settings"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 345
    new-instance v0, Lcom/google/android/gm/persistence/a;

    invoke-static {v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bp(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bl(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bn(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/io/File;

    const-string v3, "backup_data_file"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 355
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 356
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Lcom/google/android/gm/persistence/a;)[B
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 366
    :try_start_2
    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 369
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 372
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 375
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed serialize object"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 14

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 240
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v7

    .line 241
    const/4 v1, 0x0

    .line 242
    const/4 v0, 0x0

    .line 243
    const/4 v5, 0x0

    .line 244
    const/4 v4, 0x0

    .line 245
    const/4 v3, 0x0

    move-object v2, v1

    move-object v1, v0

    .line 248
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v8, "gmail_shared_preferences_v1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    .line 253
    :cond_0
    const-string v8, "gmail_sync_settings_v1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v2, v0

    goto :goto_0

    .line 256
    :cond_1
    const-string v8, "backup_data_v2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->b(Landroid/app/backup/BackupDataInput;)Lcom/google/android/gm/persistence/a;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->Dy()Ljava/util/Map;

    move-result-object v2

    .line 260
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->Dz()Ljava/util/List;

    move-result-object v1

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 278
    :goto_1
    if-eqz v1, :cond_2

    .line 279
    const-string v5, "GmailBackupAgent"

    invoke-virtual {v7, v6, v1, v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 281
    :cond_2
    if-eqz v0, :cond_5

    .line 282
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    const-string v1, "GmailBackupAgent"

    const-string v8, "Restore: %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-static {v6, v1, v0}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_2

    .line 263
    :cond_3
    const-string v8, "backup_data_v3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->b(Landroid/app/backup/BackupDataInput;)Lcom/google/android/gm/persistence/a;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->Dy()Ljava/util/Map;

    move-result-object v4

    .line 267
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->Dz()Ljava/util/List;

    move-result-object v3

    .line 268
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->DA()Ljava/util/List;

    move-result-object v2

    .line 269
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->DB()Ljava/util/Map;

    move-result-object v1

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gm/persistence/a;->DC()Ljava/util/Map;

    move-result-object v0

    move-object v12, v0

    move-object v0, v4

    move-object v4, v2

    move-object v2, v12

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    .line 272
    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 275
    const-string v0, "GmailBackupAgent"

    const-string v8, "Unknown restore key: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 288
    :cond_5
    invoke-static {v6}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 289
    if-eqz v4, :cond_6

    .line 290
    invoke-virtual {v0, v4}, Lcom/android/mail/i/g;->r(Ljava/util/List;)V

    .line 292
    :cond_6
    invoke-virtual {v0}, Lcom/android/mail/i/g;->tY()Ljava/util/List;

    move-result-object v4

    .line 294
    if-eqz v3, :cond_7

    .line 296
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 300
    new-instance v5, Lcom/google/android/gm/preference/i;

    invoke-direct {v5, v6, v1}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v5, v0}, Lcom/android/mail/i/a;->r(Ljava/util/List;)V

    goto :goto_3

    .line 305
    :cond_7
    invoke-static {v6}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bn(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 308
    if-eqz v2, :cond_9

    .line 310
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 315
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 319
    new-instance v9, Lcom/google/android/gm/preference/j;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v1, v2, v10}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    invoke-virtual {v9, v0}, Lcom/android/mail/i/e;->r(Ljava/util/List;)V

    goto :goto_4

    .line 326
    :cond_9
    invoke-static {v6}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 330
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 331
    invoke-static {v6}, Lcom/google/android/gm/persistence/GmailBackupAgent;->bq(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    invoke-static {v6, v0}, Lcom/google/android/gm/provider/Gmail;->Q(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v8

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 334
    :cond_a
    invoke-virtual {v7, v6}, Lcom/google/android/gm/persistence/b;->bO(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 336
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    invoke-static {v2, v0, v4, v3, v1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 340
    return-void

    :cond_b
    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 9

    .prologue
    .line 386
    const-string v0, "GmailBackupAgent"

    const-string v1, "onRestoreFile() invoked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 392
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 393
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 395
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 396
    const-string v2, "GmailBackupAgent"

    const-string v3, "Flattened data version %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 397
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 398
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 399
    new-array v0, v0, [B

    .line 400
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 401
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->e([B)Lcom/google/android/gm/persistence/a;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->Dy()Ljava/util/Map;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    const-string v5, "GmailBackupAgent"

    const-string v6, "Restore: %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 409
    invoke-static {v3, v0, v1}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->Dz()Ljava/util/List;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_1

    .line 415
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v1

    const-string v2, "GmailBackupAgent"

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 475
    :cond_1
    return-void

    .line 418
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 419
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 420
    new-array v0, v0, [B

    .line 421
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 422
    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->e([B)Lcom/google/android/gm/persistence/a;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->Dy()Ljava/util/Map;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 425
    if-eqz v0, :cond_3

    .line 426
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    const-string v5, "GmailBackupAgent"

    const-string v6, "Restore: %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    invoke-static {v3, v0, v1}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_1

    .line 434
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->Dz()Ljava/util/List;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_4

    .line 436
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v1

    const-string v4, "GmailBackupAgent"

    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 439
    :cond_4
    invoke-static {v3}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 440
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DA()Ljava/util/List;

    move-result-object v1

    .line 441
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DA()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 442
    invoke-virtual {v0, v1}, Lcom/android/mail/i/g;->r(Ljava/util/List;)V

    .line 445
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DB()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 447
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 451
    new-instance v5, Lcom/google/android/gm/preference/i;

    invoke-direct {v5, v3, v1}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v5, v0}, Lcom/android/mail/i/a;->r(Ljava/util/List;)V

    goto :goto_2

    .line 457
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DC()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/a;->DC()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 465
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 469
    new-instance v6, Lcom/google/android/gm/preference/j;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v1, v2, v7}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 471
    invoke-virtual {v6, v0}, Lcom/android/mail/i/e;->r(Ljava/util/List;)V

    goto :goto_3

    .line 476
    :cond_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 477
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid file schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
