.class final Lcom/android/email/service/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/email/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 264
    check-cast p1, Lcom/android/email/service/g;

    check-cast p2, Lcom/android/email/service/g;

    iget v2, p1, Lcom/android/email/service/g;->do:I

    iget v3, p2, Lcom/android/email/service/g;->do:I

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/android/email/service/g;->do:I

    iget v3, p2, Lcom/android/email/service/g;->do:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/android/email/service/g;->Uk:J

    iget-wide v4, p2, Lcom/android/email/service/g;->Uk:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-wide v2, p1, Lcom/android/email/service/g;->Uk:J

    iget-wide v4, p2, Lcom/android/email/service/g;->Uk:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
