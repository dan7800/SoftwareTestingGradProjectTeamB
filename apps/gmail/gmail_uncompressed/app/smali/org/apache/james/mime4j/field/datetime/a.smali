.class public final Lorg/apache/james/mime4j/field/datetime/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final IH:I

.field private final cEi:Ljava/util/Date;

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final timeZone:I

.field private final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 7

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/a;->year:I

    .line 44
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/a;->year:I

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    add-int/lit8 v2, p2, -0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/high16 v1, -0x80000000

    if-eq p7, v1, :cond_0

    div-int/lit8 v1, p7, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p7, 0x64

    add-int/2addr v1, v2

    const/16 v2, 0xc

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/a;->cEi:Ljava/util/Date;

    .line 45
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/a;->month:I

    .line 46
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/a;->IH:I

    .line 47
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/a;->hour:I

    .line 48
    iput p5, p0, Lorg/apache/james/mime4j/field/datetime/a;->minute:I

    .line 49
    iput p6, p0, Lorg/apache/james/mime4j/field/datetime/a;->second:I

    .line 50
    iput p7, p0, Lorg/apache/james/mime4j/field/datetime/a;->timeZone:I

    .line 51
    return-void

    .line 43
    :pswitch_0
    if-ltz v0, :cond_1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    :cond_1
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    :pswitch_1
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ia(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/a;
    .locals 2

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/a;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->abt()Lorg/apache/james/mime4j/field/datetime/a;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/a;->cEi:Ljava/util/Date;

    return-object v0
.end method
