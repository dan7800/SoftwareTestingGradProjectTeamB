.class Lcom/google/android/mail/common/html/parser/l;
.super Lcom/google/android/mail/common/html/parser/k;
.source "SourceFile"


# instance fields
.field protected final gi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0, p2}, Lcom/google/android/mail/common/html/parser/k;-><init>(Ljava/lang/String;)V

    .line 450
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 451
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/l;->gi:Ljava/lang/String;

    .line 452
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/l;->gi:Ljava/lang/String;

    return-object v0
.end method
