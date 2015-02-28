.class public final Lcom/android/datetimepicker/date/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field IH:I

.field private calendar:Ljava/util/Calendar;

.field month:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/datetimepicker/date/j;->setTime(J)V

    .line 59
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/datetimepicker/date/j;->year:I

    iput p2, p0, Lcom/android/datetimepicker/date/j;->month:I

    iput p3, p0, Lcom/android/datetimepicker/date/j;->IH:I

    .line 73
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/j;->setTime(J)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->year:I

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->month:I

    .line 68
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->IH:I

    .line 69
    return-void
.end method

.method private setTime(J)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->month:I

    .line 101
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->year:I

    .line 102
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->IH:I

    .line 103
    return-void
.end method


# virtual methods
.method public final c(Lcom/android/datetimepicker/date/j;)V
    .locals 1

    .prologue
    .line 76
    iget v0, p1, Lcom/android/datetimepicker/date/j;->year:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->year:I

    .line 77
    iget v0, p1, Lcom/android/datetimepicker/date/j;->month:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->month:I

    .line 78
    iget v0, p1, Lcom/android/datetimepicker/date/j;->IH:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->IH:I

    .line 79
    return-void
.end method
