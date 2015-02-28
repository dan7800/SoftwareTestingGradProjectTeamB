.class public final Lcom/android/mail/browse/R;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static apy:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mail/browse/R;",
            ">;"
        }
    .end annotation
.end field

.field private static apz:Lcom/android/mail/providers/Folder;


# instance fields
.field public amQ:Lcom/android/mail/providers/Conversation;

.field private apA:I

.field private apB:I

.field public apC:Z

.field apD:Ljava/lang/CharSequence;

.field public apE:Z

.field apF:Landroid/graphics/Bitmap;

.field public apG:Landroid/graphics/Bitmap;

.field public apH:Ljava/lang/String;

.field public apI:I

.field apJ:Landroid/graphics/Bitmap;

.field public apK:Z

.field public apL:Ljava/lang/String;

.field apM:Landroid/text/SpannableStringBuilder;

.field apN:Landroid/text/StaticLayout;

.field apO:Z

.field public apP:I

.field public apQ:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public apR:I

.field public apS:Lcom/android/mail/browse/N;

.field public apT:Z

.field public apU:Z

.field public apV:Z

.field public apW:Landroid/text/SpannableStringBuilder;

.field public apX:I

.field private apY:Ljava/lang/String;

.field public final apZ:Lcom/android/mail/browse/S;

.field public final aqa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final aqb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/R;->apE:Z

    .line 77
    iput v1, p0, Lcom/android/mail/browse/R;->apI:I

    .line 83
    iput-boolean v1, p0, Lcom/android/mail/browse/R;->apK:Z

    .line 123
    new-instance v0, Lcom/android/mail/browse/S;

    invoke-direct {v0}, Lcom/android/mail/browse/S;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/R;->aqa:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/R;->aqb:Ljava/util/ArrayList;

    .line 332
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;ZZII)I"
        }
    .end annotation

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, -0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/R;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {p0, v4, v5}, Lcom/android/mail/browse/R;->e(Ljava/lang/String;J)Lcom/android/mail/browse/R;

    move-result-object v3

    .line 155
    iput-object p1, v3, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    .line 156
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/mail/browse/R;->apC:Z

    .line 157
    iget v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    and-int/lit8 v0, v0, 0x8

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/android/mail/browse/R;->apT:Z

    .line 160
    iget v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/android/mail/browse/R;->apU:Z

    .line 163
    iget v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    and-int/lit8 v0, v0, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_3

    :goto_3
    iput-boolean v1, v3, Lcom/android/mail/browse/R;->apV:Z

    .line 166
    return-object v3

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    :cond_2
    move v0, v2

    .line 160
    goto :goto_2

    :cond_3
    move v1, v2

    .line 163
    goto :goto_3
.end method

.method public static c(Lcom/android/mail/providers/Folder;)V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/android/mail/browse/R;->apz:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mail/browse/R;->apz:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    move-object v1, v0

    .line 321
    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    .line 322
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    sput-object p0, Lcom/android/mail/browse/R;->apz:Lcom/android/mail/providers/Folder;

    .line 324
    sget-object v0, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 326
    :cond_0
    return-void

    .line 319
    :cond_1
    sget-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    move-object v1, v0

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;J)Lcom/android/mail/browse/R;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v2, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/R;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;J)Lcom/android/mail/browse/R;
    .locals 5

    .prologue
    .line 179
    sget-object v1, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/mail/browse/R;->d(Ljava/lang/String;J)Lcom/android/mail/browse/R;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v2, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lcom/android/mail/browse/R;

    invoke-direct {v0}, Lcom/android/mail/browse/R;-><init>()V

    .line 185
    sget-object v3, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private qf()I
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mail/browse/R;->apA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mail/browse/R;->apP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/mail/browse/R;->apQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mail/browse/R;->apR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static qj()V
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/android/mail/browse/R;->apy:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 313
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 250
    iget-object v0, p0, Lcom/android/mail/browse/R;->apY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 254
    const-string v2, ""

    .line 255
    const-string v0, ""

    .line 256
    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v1, v1, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v1, v1, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 258
    :goto_0
    if-eq v1, v3, :cond_e

    .line 259
    iget-object v0, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ParticipantInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    move-object v1, v0

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->aza:Z

    if-eqz v0, :cond_4

    .line 262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/mail/browse/aR;->aP(Z)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    :goto_3
    const-string v0, ""

    .line 284
    if-eqz p2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-static {}, Lcom/android/mail/browse/aR;->rV()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v2, v2, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    .line 289
    iget-object v2, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v2, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-static {p1, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    iget-object v2, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v2, v2, Lcom/android/mail/providers/Conversation;->aza:Z

    if-eqz v2, :cond_7

    const v2, 0x7f0900f1

    :goto_4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    if-nez p3, :cond_9

    .line 295
    if-eqz v3, :cond_8

    const v2, 0x7f0900ee

    .line 300
    :goto_5
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uG()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object v5, v3, v0

    const/4 v0, 0x6

    aput-object p3, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/R;->apY:Ljava/lang/String;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/R;->apY:Ljava/lang/String;

    return-object v0

    :cond_2
    move v1, v3

    .line 256
    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 262
    goto :goto_2

    .line 265
    :cond_4
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ParticipantInfo;

    .line 267
    iget-boolean v5, v0, Lcom/android/mail/providers/ParticipantInfo;->aBG:Z

    if-nez v5, :cond_5

    .line 272
    :goto_6
    if-eqz v0, :cond_c

    .line 273
    iget-object v2, v0, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/android/mail/browse/aR;->aP(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    iget-object v0, v0, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 291
    :cond_7
    const v2, 0x7f0900f2

    goto :goto_4

    .line 295
    :cond_8
    const v2, 0x7f0900ed

    goto :goto_5

    .line 297
    :cond_9
    if-eqz v3, :cond_a

    const v2, 0x7f0900f0

    goto :goto_5

    :cond_a
    const v2, 0x7f0900ef

    goto :goto_5

    :cond_b
    move-object v1, v0

    goto/16 :goto_3

    :cond_c
    move-object v0, v2

    goto/16 :goto_2

    :cond_d
    move-object v0, v3

    goto :goto_6

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method

.method final qg()V
    .locals 7

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v2, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    iget-object v4, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v4, v4, Lcom/android/mail/providers/Conversation;->aza:Z

    iget-object v5, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v5, v5, Lcom/android/mail/providers/Conversation;->priority:I

    iget-object v6, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v6, v6, Lcom/android/mail/providers/Conversation;->ayZ:I

    invoke-static/range {v0 .. v6}, Lcom/android/mail/browse/R;->a(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/R;->apA:I

    .line 218
    invoke-direct {p0}, Lcom/android/mail/browse/R;->qf()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/R;->apB:I

    .line 219
    return-void
.end method

.method final qh()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 234
    iget v9, p0, Lcom/android/mail/browse/R;->apA:I

    iget-object v0, p0, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v2, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    iget-object v4, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v4, v4, Lcom/android/mail/providers/Conversation;->aza:Z

    iget-object v5, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v5, v5, Lcom/android/mail/providers/Conversation;->priority:I

    iget-object v6, p0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v6, v6, Lcom/android/mail/providers/Conversation;->ayZ:I

    invoke-static/range {v0 .. v6}, Lcom/android/mail/browse/R;->a(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    if-ne v9, v0, :cond_0

    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mail/browse/R;->apB:I

    invoke-direct {p0}, Lcom/android/mail/browse/R;->qf()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method public final qi()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/R;->apY:Ljava/lang/String;

    .line 243
    return-void
.end method
