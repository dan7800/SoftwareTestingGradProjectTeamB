.class public final Lcom/google/android/gm/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bqY:Ljava/lang/String;

.field public static bqZ:Ljava/lang/String;

.field public static bra:Ljava/lang/String;

.field public static brb:I

.field public static brc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final brd:[Ljava/lang/String;

.field private static final bre:[[Ljava/lang/String;

.field private static final brf:[I

.field private static final brg:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 18
    const-string v0, "background_color"

    sput-object v0, Lcom/google/android/gm/c/f;->bqY:Ljava/lang/String;

    .line 20
    const-string v0, "color_index"

    sput-object v0, Lcom/google/android/gm/c/f;->bqZ:Ljava/lang/String;

    .line 22
    const-string v0, "text_color"

    sput-object v0, Lcom/google/android/gm/c/f;->bra:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/c/f;->brb:I

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/c/f;->brc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "#dddddd"

    aput-object v1, v0, v5

    const-string v1, "#777777"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x19

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "#dee5f2"

    aput-object v2, v1, v5

    const-string v2, "#5a6986"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "#e0ecff"

    aput-object v2, v1, v5

    const-string v2, "#206cff"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#dfe2ff"

    aput-object v3, v2, v5

    const-string v3, "#0000cc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#e0d5f9"

    aput-object v3, v2, v5

    const-string v3, "#5229a3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fde9f4"

    aput-object v3, v2, v5

    const-string v3, "#854f61"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ffe3e3"

    aput-object v3, v2, v5

    const-string v3, "#cc0000"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fff0e1"

    aput-object v3, v2, v5

    const-string v3, "#ec7000"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fadcb3"

    aput-object v3, v2, v5

    const-string v3, "#b36d00"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f3e7b3"

    aput-object v3, v2, v5

    const-string v3, "#ab8b00"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ffffd4"

    aput-object v3, v2, v5

    const-string v3, "#636330"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f9ffef"

    aput-object v3, v2, v5

    const-string v3, "#64992c"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f1f5ec"

    aput-object v3, v2, v5

    const-string v3, "#006633"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#5a6986"

    aput-object v3, v2, v5

    const-string v3, "#dee5f2"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#206cff"

    aput-object v3, v2, v5

    const-string v3, "#e0ecff"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#0000cc"

    aput-object v3, v2, v5

    const-string v3, "#dfe2ff"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#5229a3"

    aput-object v3, v2, v5

    const-string v3, "#e0d5f9"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#854f61"

    aput-object v3, v2, v5

    const-string v3, "#fde9f4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#cc0000"

    aput-object v3, v2, v5

    const-string v3, "#ffe3e3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ec7000"

    aput-object v3, v2, v5

    const-string v3, "#fff0e1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#b36d00"

    aput-object v3, v2, v5

    const-string v3, "#fadcb3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ab8b00"

    aput-object v3, v2, v5

    const-string v3, "#f3e7b3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#636330"

    aput-object v3, v2, v5

    const-string v3, "#ffffd4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#64992c"

    aput-object v3, v2, v5

    const-string v3, "#f9ffef"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#006633"

    aput-object v3, v2, v5

    const-string v3, "#f1f5ec"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/c/f;->bre:[[Ljava/lang/String;

    .line 114
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/c/f;->brf:[I

    .line 116
    sget-object v0, Lcom/google/android/gm/c/f;->bre:[[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/google/android/gm/c/f;->brg:I

    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        -0x222223
        -0x888889
    .end array-data
.end method

.method public static IB()[I
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gm/c/f;->brf:[I

    return-object v0
.end method

.method public static IC()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    sget-object v0, Lcom/google/android/gm/c/f;->bre:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/bc;)V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gm/c/f;->brc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 42
    sget-object v1, Lcom/google/android/gm/c/f;->brc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/android/gm/provider/bc;->ble:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/google/android/gm/provider/bc;->bld:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static af(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 160
    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v0, Lcom/google/android/gm/c/f;->brb:I

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v2

    move-object v0, v1

    .line 162
    :goto_1
    return-object v0

    .line 160
    :cond_1
    if-gez v2, :cond_3

    sget-object v0, Lcom/google/android/gm/c/f;->brc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_2
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget v0, Lcom/google/android/gm/c/f;->brg:I

    if-lt v2, v0, :cond_4

    sget-object v0, Lcom/google/android/gm/c/f;->brd:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gm/c/f;->bre:[[Ljava/lang/String;

    aget-object v0, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 61
    sget-object v1, Lcom/google/android/gm/c/f;->bqZ:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 62
    sget-object v2, Lcom/google/android/gm/c/f;->bqY:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 63
    sget-object v3, Lcom/google/android/gm/c/f;->bra:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 65
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    sget-object v1, Lcom/google/android/gm/c/f;->brc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 71
    return-void
.end method
