.class public final Lcom/google/android/gm/browse/e;
.super Lcom/android/mail/browse/c;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/browse/e;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mail/browse/c;-><init>()V

    .line 161
    return-void
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gm/browse/e;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Attachment;Landroid/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/browse/f;->a(Ljava/lang/String;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Attachment;)Lcom/google/android/gm/browse/f;

    move-result-object v0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    const-string v0, "com.google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/ics"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/calendar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
