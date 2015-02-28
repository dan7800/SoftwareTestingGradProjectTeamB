.class public final Lcom/android/datetimepicker/date/o;
.super Lcom/android/datetimepicker/date/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/i;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final k(Landroid/content/Context;)Lcom/android/datetimepicker/date/k;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/datetimepicker/date/p;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/date/p;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v1, p0, Lcom/android/datetimepicker/date/o;->IA:Lcom/android/datetimepicker/date/a;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/k;->a(Lcom/android/datetimepicker/date/a;)V

    .line 34
    return-object v0
.end method
