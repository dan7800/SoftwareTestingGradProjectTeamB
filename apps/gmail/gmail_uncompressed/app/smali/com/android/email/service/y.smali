.class final Lcom/android/email/service/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Vx:Lcom/android/emailcommon/mail/Message;

.field private final Vy:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/mail/Message;J)V
    .locals 0

    .prologue
    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    iput-object p1, p0, Lcom/android/email/service/y;->Vx:Lcom/android/emailcommon/mail/Message;

    .line 1452
    iput-wide p2, p0, Lcom/android/email/service/y;->Vy:J

    .line 1453
    return-void
.end method

.method static synthetic a(Lcom/android/email/service/y;)J
    .locals 2

    .prologue
    .line 1446
    iget-wide v0, p0, Lcom/android/email/service/y;->Vy:J

    return-wide v0
.end method

.method static synthetic b(Lcom/android/email/service/y;)Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/email/service/y;->Vx:Lcom/android/emailcommon/mail/Message;

    return-object v0
.end method
