.class public final Lcom/google/api/client/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cyL:Ljava/lang/Boolean;

.field public static final cyM:Ljava/lang/String;

.field public static final cyN:Ljava/lang/Character;

.field public static final cyO:Ljava/lang/Byte;

.field public static final cyP:Ljava/lang/Short;

.field public static final cyQ:Ljava/lang/Integer;

.field public static final cyR:Ljava/lang/Float;

.field public static final cyS:Ljava/lang/Long;

.field public static final cyT:Ljava/lang/Double;

.field public static final cyU:Ljava/math/BigInteger;

.field public static final cyV:Ljava/math/BigDecimal;

.field public static final cyW:Lcom/google/api/client/util/DateTime;

.field private static final cyX:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/m;->cyL:Ljava/lang/Boolean;

    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/api/client/util/m;->cyM:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/api/client/util/m;->cyN:Ljava/lang/Character;

    .line 56
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/google/api/client/util/m;->cyO:Ljava/lang/Byte;

    .line 59
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/google/api/client/util/m;->cyP:Ljava/lang/Short;

    .line 62
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/api/client/util/m;->cyQ:Ljava/lang/Integer;

    .line 65
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/google/api/client/util/m;->cyR:Ljava/lang/Float;

    .line 68
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/m;->cyS:Ljava/lang/Long;

    .line 71
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/api/client/util/m;->cyT:Ljava/lang/Double;

    .line 74
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/m;->cyU:Ljava/math/BigInteger;

    .line 77
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/m;->cyV:Ljava/math/BigDecimal;

    .line 80
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0}, Lcom/google/api/client/util/DateTime;-><init>()V

    sput-object v0, Lcom/google/api/client/util/m;->cyW:Lcom/google/api/client/util/DateTime;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 87
    sput-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/api/client/util/m;->cyL:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/api/client/util/m;->cyM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/api/client/util/m;->cyN:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/api/client/util/m;->cyO:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/api/client/util/m;->cyP:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/api/client/util/m;->cyQ:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/api/client/util/m;->cyR:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/api/client/util/m;->cyS:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/api/client/util/m;->cyT:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/api/client/util/m;->cyU:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/api/client/util/m;->cyV:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/api/client/util/DateTime;

    sget-object v2, Lcom/google/api/client/util/m;->cyW:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 392
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 393
    :goto_0
    if-eqz p0, :cond_0

    if-eqz v0, :cond_18

    .line 394
    :cond_0
    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_3

    move-object p1, v1

    .line 441
    :cond_1
    :goto_1
    return-object p1

    :cond_2
    move-object v0, v1

    .line 392
    goto :goto_0

    .line 397
    :cond_3
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 402
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected type Character/char but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    .line 408
    :cond_6
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 409
    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 411
    :cond_8
    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_9

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    .line 412
    :cond_9
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_1

    .line 414
    :cond_a
    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_b

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 415
    :cond_b
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_1

    .line 417
    :cond_c
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_d

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    .line 418
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 420
    :cond_e
    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_f

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    .line 421
    :cond_f
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 423
    :cond_10
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 424
    :cond_11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1

    .line 426
    :cond_12
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_13

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_14

    .line 427
    :cond_13
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1

    .line 429
    :cond_14
    const-class v1, Lcom/google/api/client/util/DateTime;

    if-ne v0, v1, :cond_15

    .line 430
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->hx(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object p1

    goto/16 :goto_1

    .line 432
    :cond_15
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_16

    .line 433
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 435
    :cond_16
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_17

    .line 436
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 438
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 440
    invoke-static {v0}, Lcom/google/api/client/util/k;->h(Ljava/lang/Class;)Lcom/google/api/client/util/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/t;->Yx()Ljava/lang/Enum;

    move-result-object p1

    goto/16 :goto_1

    .line 444
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected primitive class, but got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 530
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 531
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p1}, Lcom/google/api/client/util/O;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 534
    :goto_0
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 536
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Lcom/google/api/client/util/O;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_2

    .line 541
    :goto_1
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1

    .line 542
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 546
    :cond_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method public static aq(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 154
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ar(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/api/client/util/m;->aq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 186
    :goto_0
    return-object p0

    .line 180
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 182
    check-cast p0, Ljava/util/Map;

    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Lcom/google/api/client/util/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/n;-><init>(Ljava/lang/Object;Z)V

    move-object p0, v0

    .line 186
    goto :goto_0
.end method

.method public static as(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 357
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/m;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/reflect/Type;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 338
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 339
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/O;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 341
    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_0

    move v0, v1

    .line 345
    :goto_1
    return v0

    .line 344
    :cond_0
    check-cast v0, Ljava/lang/Class;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_1

    const-class v2, Lcom/google/api/client/util/DateTime;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    .line 466
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/O;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 468
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_6

    .line 469
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 471
    :goto_1
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 472
    :goto_2
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    :goto_3
    return-object v0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 476
    :cond_2
    if-nez v0, :cond_3

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to create new instance of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_3
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 480
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_3

    .line 482
    :cond_4
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_3

    .line 486
    :cond_5
    invoke-static {v0}, Lcom/google/api/client/util/O;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v0, p0

    goto :goto_0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/m;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 223
    :goto_0
    return-object v0

    .line 210
    :cond_1
    instance-of v0, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v0, :cond_2

    .line 211
    check-cast p0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->WT()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    :goto_1
    invoke-static {p0, v0}, Lcom/google/api/client/util/m;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_3
    instance-of v1, p0, Lcom/google/api/client/util/a;

    if-eqz v1, :cond_4

    move-object v0, p0

    .line 218
    check-cast v0, Lcom/google/api/client/util/a;

    invoke-virtual {v0}, Lcom/google/api/client/util/a;->Yl()Lcom/google/api/client/util/a;

    move-result-object v0

    goto :goto_1

    .line 220
    :cond_4
    invoke-static {v0}, Lcom/google/api/client/util/O;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 110
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    sget-object v2, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 113
    :try_start_0
    sget-object v0, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    new-array v1, v1, [I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    :goto_0
    sget-object v1, Lcom/google/api/client/util/m;->cyX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    monitor-exit v2

    .line 142
    :cond_2
    return-object v0

    .line 124
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-static {p0}, Lcom/google/api/client/util/k;->h(Ljava/lang/Class;)Lcom/google/api/client/util/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    .line 127
    const-string v1, "enum missing constant with @NullValue annotation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/api/client/a/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Lcom/google/api/client/util/t;->Yx()Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {p0}, Lcom/google/api/client/util/O;->k(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static j(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    if-eqz p0, :cond_0

    const-class v0, Lcom/google/api/client/util/a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    invoke-static {}, Lcom/google/api/client/util/a;->Yk()Lcom/google/api/client/util/a;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    .line 509
    :cond_1
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 513
    :cond_2
    invoke-static {p0}, Lcom/google/api/client/util/O;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v3, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 258
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 262
    invoke-static {p0}, Lcom/google/api/client/util/O;->au(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 263
    add-int/lit8 v0, v2, 0x1

    invoke-static {v3}, Lcom/google/api/client/util/m;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v0

    .line 264
    goto :goto_2

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 260
    goto :goto_1

    .line 265
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    check-cast p0, Ljava/util/Collection;

    .line 269
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 271
    check-cast v0, Ljava/util/ArrayList;

    .line 272
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 275
    :cond_3
    check-cast p1, Ljava/util/Collection;

    .line 276
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/google/api/client/util/m;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 281
    :cond_4
    const-class v0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    .line 282
    if-nez v4, :cond_5

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 283
    :cond_5
    if-eqz v4, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->cwV:Lcom/google/api/client/util/k;

    move-object v1, v0

    .line 285
    :goto_4
    iget-object v0, v1, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    invoke-virtual {v1, v0}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/google/api/client/util/t;->Yw()Z

    move-result v3

    if-nez v3, :cond_6

    .line 290
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/google/api/client/util/t;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_6

    .line 291
    :cond_7
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 292
    if-eqz v3, :cond_6

    .line 293
    invoke-static {v3}, Lcom/google/api/client/util/m;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/google/api/client/util/t;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 283
    :cond_8
    invoke-static {v3}, Lcom/google/api/client/util/k;->h(Ljava/lang/Class;)Lcom/google/api/client/util/k;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 298
    :cond_9
    const-class v0, Lcom/google/api/client/util/a;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    check-cast p1, Lcom/google/api/client/util/a;

    .line 303
    check-cast p0, Lcom/google/api/client/util/a;

    .line 304
    invoke-virtual {p0}, Lcom/google/api/client/util/a;->size()I

    move-result v0

    .line 305
    :goto_6
    if-ge v2, v0, :cond_b

    .line 306
    invoke-virtual {p0, v2}, Lcom/google/api/client/util/a;->az(I)Ljava/lang/Object;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/google/api/client/util/m;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/util/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 312
    :cond_a
    check-cast p1, Ljava/util/Map;

    .line 314
    check-cast p0, Ljava/util/Map;

    .line 315
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/m;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 320
    :cond_b
    return-void
.end method
