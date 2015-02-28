.class public final Lcom/google/android/mail/common/html/parser/d;
.super Lcom/google/android/mail/common/html/parser/l;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/mail/common/html/parser/l;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/html/parser/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    invoke-super {p0}, Lcom/google/android/mail/common/html/parser/l;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
