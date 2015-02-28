.class public final Lcom/android/mail/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ajV:Ljava/lang/StringBuilder;

.field private final ajW:Ljava/util/Formatter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/mail/e;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/mail/e;->ajW:Ljava/util/Formatter;

    .line 40
    return-void
.end method

.method private static M(J)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 119
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(JI)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 125
    iget-object v0, p0, Lcom/android/mail/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/e;->ajW:Ljava/util/Formatter;

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 126
    iget-object v0, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final I(J)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-static {p1, p2}, Lcom/android/mail/e;->M(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const v0, 0x10010

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const v0, 0x20010

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final J(J)Ljava/lang/CharSequence;
    .locals 13

    .prologue
    const-wide/32 v0, 0x240c8400

    const-wide/32 v6, 0x48190800

    const-wide/32 v4, 0x5265c00

    .line 75
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {p1, p2}, Lcom/android/mail/e;->M(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v8, p0, Lcom/android/mail/e;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v9, v6, v0

    if-lez v9, :cond_1

    :goto_1
    cmp-long v0, v10, v0

    if-gez v0, :cond_2

    const v6, 0x10010

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    move-wide v0, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-static {v8, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_3
    const v0, 0x20010

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-wide v0, v6

    goto :goto_1
.end method

.method public final K(J)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    iget-object v0, p0, Lcom/android/mail/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/e;->ajW:Ljava/util/Formatter;

    const v6, 0x80015

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 99
    iget-object v0, p0, Lcom/android/mail/e;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v0, p0, Lcom/android/mail/e;->mContext:Landroid/content/Context;

    const v1, 0x7f0901a1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x80016

    invoke-direct {p0, p1, p2, v4}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2, v5}, Lcom/android/mail/e;->f(JI)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
