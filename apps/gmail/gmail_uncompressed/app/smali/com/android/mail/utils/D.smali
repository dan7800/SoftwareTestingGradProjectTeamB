.class public final Lcom/android/mail/utils/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aPF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UnifiedEmail"

    sput-object v0, Lcom/android/mail/utils/D;->aPF:Ljava/lang/String;

    return-void
.end method

.method public static AU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/mail/utils/D;->aPF:Ljava/lang/String;

    return-object v0
.end method

.method public static cw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/android/mail/utils/D;->aPF:Ljava/lang/String;

    .line 35
    return-void
.end method
