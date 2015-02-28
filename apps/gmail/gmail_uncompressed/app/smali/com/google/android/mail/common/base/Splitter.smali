.class public final Lcom/google/android/mail/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cpr:Lcom/google/android/mail/common/base/j;

.field private final cps:Z

.field private final cpt:Lcom/google/android/mail/common/base/I;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/base/I;)V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/mail/common/base/j;->coY:Lcom/google/android/mail/common/base/j;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/I;ZLcom/google/android/mail/common/base/j;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/google/android/mail/common/base/I;ZLcom/google/android/mail/common/base/j;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/mail/common/base/Splitter;->cpt:Lcom/google/android/mail/common/base/I;

    .line 105
    iput-boolean p2, p0, Lcom/google/android/mail/common/base/Splitter;->cps:Z

    .line 106
    iput-object p3, p0, Lcom/google/android/mail/common/base/Splitter;->cpr:Lcom/google/android/mail/common/base/j;

    .line 107
    return-void
.end method

.method public static Wa()Lcom/google/android/mail/common/base/Splitter;
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->c(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/Splitter;
    .locals 2

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/android/mail/common/base/Splitter;

    new-instance v1, Lcom/google/android/mail/common/base/H;

    invoke-direct {v1, p0}, Lcom/google/android/mail/common/base/H;-><init>(Lcom/google/android/mail/common/base/j;)V

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/I;)V

    return-object v0
.end method


# virtual methods
.method public final Wb()Lcom/google/android/mail/common/base/Splitter;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/mail/common/base/Splitter;

    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter;->cpt:Lcom/google/android/mail/common/base/I;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/mail/common/base/Splitter;->cpr:Lcom/google/android/mail/common/base/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/I;ZLcom/google/android/mail/common/base/j;)V

    return-object v0
.end method
