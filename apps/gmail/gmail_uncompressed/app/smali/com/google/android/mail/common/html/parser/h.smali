.class final Lcom/google/android/mail/common/html/parser/h;
.super Lcom/google/android/mail/common/html/parser/k;
.source "SourceFile"


# instance fields
.field private final cuf:Ljava/lang/String;

.field private gi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0, p2}, Lcom/google/android/mail/common/html/parser/k;-><init>(Ljava/lang/String;)V

    .line 469
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/h;->cuf:Ljava/lang/String;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/h;->gi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/h;->cuf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mail/common/base/StringUtil;->gH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/h;->gi:Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/h;->gi:Ljava/lang/String;

    return-object v0
.end method
