.class final Lcom/android/mail/utils/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aQI:Lcom/android/mail/utils/ae;


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/ae;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/mail/utils/af;->aQI:Lcom/android/mail/utils/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/ae;B)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/mail/utils/af;-><init>(Lcom/android/mail/utils/ae;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mail/utils/af;->aQI:Lcom/android/mail/utils/ae;

    iget-object v0, v0, Lcom/android/mail/utils/ae;->aQH:Lcom/android/mail/utils/ad;

    invoke-static {v0}, Lcom/android/mail/utils/ad;->b(Lcom/android/mail/utils/ad;)Lcom/android/mail/utils/ae;

    .line 168
    iget-object v0, p0, Lcom/android/mail/utils/af;->aQI:Lcom/android/mail/utils/ae;

    invoke-static {v0}, Lcom/android/mail/utils/ae;->a(Lcom/android/mail/utils/ae;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/mail/utils/af;->aQI:Lcom/android/mail/utils/ae;

    iget-object v0, v0, Lcom/android/mail/utils/ae;->aQH:Lcom/android/mail/utils/ad;

    invoke-static {v0}, Lcom/android/mail/utils/ad;->c(Lcom/android/mail/utils/ad;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_0
    return-void
.end method
