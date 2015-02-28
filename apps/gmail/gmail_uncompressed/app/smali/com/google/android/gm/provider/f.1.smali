.class public final Lcom/google/android/gm/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bcD:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field private static final bcE:Lcom/google/android/gms/appdatasearch/QuerySpecification;

.field private static bcF:I


# instance fields
.field private final bcG:Lcom/google/android/gms/appdatasearch/a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 60
    sput v0, Lcom/google/android/gm/provider/f;->bcF:I

    .line 67
    new-array v4, v2, [Ljava/lang/String;

    const-string v1, "conversation"

    aput-object v1, v4, v0

    const-string v1, "message_id"

    aput-object v1, v4, v9

    .line 71
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "from_address"

    aput-object v1, v5, v0

    const-string v1, "to_addresses"

    aput-object v1, v5, v9

    const-string v1, "subject"

    aput-object v1, v5, v2

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v5, v1

    .line 77
    array-length v1, v4

    array-length v2, v5

    add-int/2addr v1, v2

    new-array v6, v1, [Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    .line 80
    array-length v7, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v7, :cond_0

    aget-object v3, v4, v2

    .line 81
    new-instance v8, Lcom/google/android/gms/appdatasearch/h;

    invoke-direct {v8, v3}, Lcom/google/android/gms/appdatasearch/h;-><init>(Ljava/lang/String;)V

    const-string v3, "plain"

    invoke-virtual {v8, v3}, Lcom/google/android/gms/appdatasearch/h;->fF(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/appdatasearch/h;->Jo()Lcom/google/android/gms/appdatasearch/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/appdatasearch/h;->Jp()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v3

    .line 85
    aput-object v3, v6, v1

    .line 86
    add-int/lit8 v3, v1, 0x1

    .line 80
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 88
    :cond_0
    array-length v3, v5

    move v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v5, v1

    .line 90
    const-string v4, "body"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    new-instance v4, Lcom/google/android/gms/appdatasearch/h;

    invoke-direct {v4, v0}, Lcom/google/android/gms/appdatasearch/h;-><init>(Ljava/lang/String;)V

    const-string v0, "html"

    invoke-virtual {v4, v0}, Lcom/google/android/gms/appdatasearch/h;->fF(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/h;->Jp()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    .line 103
    :goto_2
    aput-object v0, v6, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 94
    :cond_1
    const-string v4, "address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    new-instance v4, Lcom/google/android/gms/appdatasearch/h;

    invoke-direct {v4, v0}, Lcom/google/android/gms/appdatasearch/h;-><init>(Ljava/lang/String;)V

    const-string v0, "rfc822"

    invoke-virtual {v4, v0}, Lcom/google/android/gms/appdatasearch/h;->fF(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/h;->Jp()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    goto :goto_2

    .line 99
    :cond_2
    new-instance v4, Lcom/google/android/gms/appdatasearch/h;

    invoke-direct {v4, v0}, Lcom/google/android/gms/appdatasearch/h;-><init>(Ljava/lang/String;)V

    const-string v0, "plain"

    invoke-virtual {v4, v0}, Lcom/google/android/gms/appdatasearch/h;->fF(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/h;->Jp()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_3
    sput-object v6, Lcom/google/android/gm/provider/f;->bcD:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    .line 108
    new-instance v0, Lcom/google/android/gms/appdatasearch/f;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/f;-><init>()V

    const-string v1, "^f"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/f;->fB(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/Section;

    const-string v2, "conversation"

    invoke-direct {v1, v2}, Lcom/google/android/gms/appdatasearch/Section;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/f;->a(Lcom/google/android/gms/appdatasearch/Section;)Lcom/google/android/gms/appdatasearch/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/Section;

    const-string v2, "body"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v9, v3}, Lcom/google/android/gms/appdatasearch/Section;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/f;->a(Lcom/google/android/gms/appdatasearch/Section;)Lcom/google/android/gms/appdatasearch/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/f;->Jl()Lcom/google/android/gms/appdatasearch/QuerySpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/f;->bcE:Lcom/google/android/gms/appdatasearch/QuerySpecification;

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/android/gm/provider/f;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/google/android/gms/appdatasearch/a;

    iget-object v1, p0, Lcom/google/android/gm/provider/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/appdatasearch/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    .line 160
    return-void
.end method

.method public static bW(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 126
    sget v2, Lcom/google/android/gm/provider/f;->bcF:I

    if-nez v2, :cond_0

    .line 127
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    sput v3, Lcom/google/android/gm/provider/f;->bcF:I

    .line 140
    :cond_0
    :goto_0
    sget v2, Lcom/google/android/gm/provider/f;->bcF:I

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v2

    .line 132
    if-nez v2, :cond_2

    .line 133
    sput v0, Lcom/google/android/gm/provider/f;->bcF:I

    goto :goto_0

    .line 135
    :cond_2
    sput v3, Lcom/google/android/gm/provider/f;->bcF:I

    .line 136
    const-string v3, "Gmail"

    const-string v4, "Google play services not available: %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 140
    goto :goto_1
.end method

.method public static bX(Landroid/content/Context;)Lcom/google/android/gm/provider/f;
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/gm/provider/f;->bW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/f;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/f;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final K(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/SuggestionResults;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 362
    .line 363
    iget-object v3, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/appdatasearch/a;->aX(J)Lcom/google/android/gms/common/a;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->Kk()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    if-nez p2, :cond_0

    move-object v0, v1

    .line 368
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const/16 v4, 0x14

    invoke-virtual {v2, p1, v0, v4}, Lcom/google/android/gms/appdatasearch/a;->a(Ljava/lang/String;[Ljava/lang/String;I)Lcom/google/android/gms/appdatasearch/SuggestionResults;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 369
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const-string v0, "Gmail"

    const-string v4, "Error from suggestions: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->Jq()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    .line 387
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    return-object v1

    .line 367
    :cond_0
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    :goto_3
    :try_start_5
    const-string v2, "Gmail"

    const-string v4, "Error executing suggestion query"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 381
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 375
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 379
    :goto_4
    :try_start_7
    const-string v1, "Gmail"

    const-string v4, "Error executing suggestion query"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 381
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    move-object v1, v2

    .line 382
    goto :goto_2

    .line 381
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    throw v0

    .line 384
    :cond_1
    const-string v2, "Gmail"

    const-string v4, "Couldn\'t connect to appdatasearch for suggestions: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 375
    :catch_2
    move-exception v0

    goto :goto_4

    .line 373
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/appdatasearch/SearchResults;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 320
    .line 321
    iget-object v7, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    monitor-enter v7

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/appdatasearch/a;->aX(J)Lcom/google/android/gms/common/a;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->Kk()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    sget-object v5, Lcom/google/android/gm/provider/f;->bcE:Lcom/google/android/gms/appdatasearch/QuerySpecification;

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/a;->a(Ljava/lang/String;[Ljava/lang/String;IILcom/google/android/gms/appdatasearch/QuerySpecification;)Lcom/google/android/gms/appdatasearch/SearchResults;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 327
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "Gmail"

    const-string v2, "Error searching: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->Jq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v6

    .line 339
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    .line 345
    :goto_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 332
    :goto_1
    :try_start_4
    const-string v2, "Gmail"

    const-string v3, "Error executing search query"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 333
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 337
    :goto_2
    :try_start_6
    const-string v2, "Gmail"

    const-string v3, "Error executing search query"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 339
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    throw v0

    .line 342
    :cond_1
    const-string v1, "Gmail"

    const-string v2, "Couldn\'t connect to appdatasearch for search: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v6

    goto :goto_0

    .line 333
    :catch_2
    move-exception v0

    goto :goto_2

    .line 331
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public final d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    const-string v2, "Gmail"

    const-string v3, "Schedule indexing for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    const-string v2, "SELECT min(_id), max(_id) FROM search_sequence"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 258
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 260
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 263
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 266
    iget-object v4, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    monitor-enter v4

    .line 267
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const-wide/16 v6, 0x7530

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/appdatasearch/a;->aX(J)Lcom/google/android/gms/common/a;

    move-result-object v5

    .line 268
    invoke-virtual {v5}, Lcom/google/android/gms/common/a;->Kk()Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    const-string v0, "Gmail"

    const-string v1, "Connection to search failed: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v5}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    :goto_1
    return-void

    .line 263
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 273
    :cond_0
    :try_start_2
    const-string v5, "Gmail"

    const-string v6, "Getting status for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    iget-object v5, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v5, p2}, Lcom/google/android/gms/appdatasearch/a;->fA(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/CorpusStatus;

    move-result-object v5

    .line 275
    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Jg()Z

    move-result v6

    if-nez v6, :cond_1

    .line 276
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not registered for search"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 299
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 301
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 279
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Ji()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    .line 283
    const-string v2, "search_sequence"

    const-string v3, "_id <= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Ji()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/appdatasearch/CorpusStatus;->Jh()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v2, p2, v0, v1}, Lcom/google/android/gms/appdatasearch/a;->r(Ljava/lang/String;J)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 299
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    .line 301
    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    :try_start_6
    const-string v1, "Gmail"

    const-string v2, "Error scheduling search indexing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 299
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    .line 297
    :try_start_8
    const-string v1, "Gmail"

    const-string v2, "Error scheduling search indexing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 299
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    goto :goto_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 195
    array-length v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->fs(I)Ljava/util/HashSet;

    move-result-object v2

    .line 196
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 197
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/google/android/gm/provider/f;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v5

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/i;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->fn(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 210
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://gmail-appindexing/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/appdatasearch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/appdatasearch/g;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/google/android/gms/appdatasearch/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/appdatasearch/g;->c(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    sget-object v5, Lcom/google/android/gm/provider/f;->bcD:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/appdatasearch/g;->a([Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/appdatasearch/g;->fD(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "from_address"

    aput-object v6, v5, v1

    const-string v6, "to_addresses"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "subject"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "body"

    aput-object v7, v5, v6

    const-string v6, "^f"

    const-string v7, "to_addresses"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/appdatasearch/g;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    const-string v4, "EmailMessage"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/appdatasearch/g;->fE(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/g;->Jm()Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/appdatasearch/g;->fC(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/g;->Jn()Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/appdatasearch/a;->aX(J)Lcom/google/android/gms/common/a;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->Kk()Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    const-string v2, "Gmail"

    const-string v3, "Search registration failed: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_2
    return-void

    .line 221
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/appdatasearch/a;->C(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    .line 241
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 222
    :catch_0
    move-exception v0

    .line 227
    :try_start_3
    const-string v2, "Gmail"

    const-string v3, "Error registering corpora"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    .line 232
    :try_start_5
    const-string v2, "Gmail"

    const-string v3, "Error registering corpora"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 239
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 233
    :catch_2
    move-exception v0

    .line 235
    :try_start_7
    const-string v2, "Gmail"

    const-string v3, "Illegal argument registering corpora"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gm/provider/f;->bcG:Lcom/google/android/gms/appdatasearch/a;

    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/a;->disconnect()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
