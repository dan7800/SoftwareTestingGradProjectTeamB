.class public final Lcom/android/emailcommon/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOGD:Z

.field public static final VK:Z

.field public static final VL:Z

.field public static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    .line 45
    sput-boolean v1, Lcom/android/emailcommon/b;->LOGD:Z

    .line 46
    sput-boolean v1, Lcom/android/emailcommon/b;->VK:Z

    .line 47
    sput-boolean v1, Lcom/android/emailcommon/b;->VL:Z

    .line 48
    return-void
.end method
