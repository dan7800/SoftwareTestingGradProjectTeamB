.class public final Lorg/apache/james/mime4j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    sput-object v0, Lorg/apache/james/mime4j/f;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    if-nez p0, :cond_0

    const-string v0, "(null)"

    .line 110
    :goto_0
    if-nez p1, :cond_1

    .line 113
    :goto_1
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static error(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lorg/apache/james/mime4j/f;->mW:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/apache/james/mime4j/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static isWarnEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static warn(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lorg/apache/james/mime4j/f;->mW:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/apache/james/mime4j/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lorg/apache/james/mime4j/f;->mW:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/james/mime4j/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
