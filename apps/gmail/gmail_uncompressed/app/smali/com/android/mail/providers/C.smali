.class public Lcom/android/mail/providers/C;
.super Lcom/android/mail/providers/z;
.source "SourceFile"


# static fields
.field private static final aCl:[Ljava/lang/String;

.field private static final aCn:[Ljava/lang/String;


# instance fields
.field private aBK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aCm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/C;->aCl:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mail/providers/C;->aCn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mail/providers/z;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/C;->aCm:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/android/mail/providers/C;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/mail/providers/C;->ce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ce(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/mail/providers/C;->aCm:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic kH()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/mail/providers/C;->aCn:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kK()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/mail/providers/C;->aCl:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 67
    .line 69
    iget-object v2, p0, Lcom/android/mail/providers/C;->aCm:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Lcom/android/mail/providers/z;->e(Ljava/util/ArrayList;)V

    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz p1, :cond_4

    .line 76
    const-string v0, " "

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_3

    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 80
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    .line 82
    iget-object v4, p0, Lcom/android/mail/providers/C;->aCm:Ljava/lang/Object;

    monitor-enter v4

    .line 83
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    .line 84
    const/4 v2, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ge v2, v5, :cond_0

    .line 85
    iget-object v6, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 87
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/mail/providers/C;->aBK:Ljava/util/ArrayList;

    invoke-super {p0, v2}, Lcom/android/mail/providers/z;->e(Ljava/util/ArrayList;)V

    .line 88
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-super {p0, v0}, Lcom/android/mail/providers/z;->cc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 102
    new-instance v3, Lcom/android/mail/providers/D;

    invoke-direct {v3, p0}, Lcom/android/mail/providers/D;-><init>(Lcom/android/mail/providers/C;)V

    invoke-virtual {v3, v0}, Lcom/android/mail/providers/D;->cf(Ljava/lang/String;)Lcom/android/mail/providers/D;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 106
    new-instance v1, Landroid/database/MergeCursor;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    .line 109
    :goto_2
    return-object v0

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 91
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
