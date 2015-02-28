.class final Lcom/android/datetimepicker/date/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic In:Lcom/android/datetimepicker/date/b;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/date/b;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/b;->ge()V

    .line 252
    iget-object v0, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-static {v0}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/b;)Lcom/android/datetimepicker/date/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-static {v0}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/b;)Lcom/android/datetimepicker/date/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    iget-object v1, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-static {v1}, Lcom/android/datetimepicker/date/b;->b(Lcom/android/datetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-static {v2}, Lcom/android/datetimepicker/date/b;->b(Lcom/android/datetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-static {v3}, Lcom/android/datetimepicker/date/b;->b(Lcom/android/datetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/e;->d(III)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/c;->In:Lcom/android/datetimepicker/date/b;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/b;->dismiss()V

    .line 257
    return-void
.end method
