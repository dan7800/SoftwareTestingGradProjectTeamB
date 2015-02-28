.class public final Lcom/google/android/gm/vacation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final brl:Lcom/google/android/gm/vacation/d;

.field private brm:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/vacation/d;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/gm/vacation/a;->brl:Lcom/google/android/gm/vacation/d;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/vacation/a;)Lcom/google/android/gm/vacation/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brl:Lcom/google/android/gm/vacation/d;

    return-object v0
.end method


# virtual methods
.method public final IE()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    return-object v0
.end method

.method public final a(Landroid/app/DialogFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 77
    :cond_0
    instance-of v0, p1, Lcom/google/android/gm/vacation/c;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/google/android/gm/vacation/c;

    new-instance v1, Lcom/google/android/gm/vacation/b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/vacation/b;-><init>(Lcom/google/android/gm/vacation/a;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/vacation/c;->a(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 84
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    .line 85
    return-void

    .line 80
    :cond_2
    instance-of v0, p1, Lcom/android/datetimepicker/date/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/android/datetimepicker/date/b;

    new-instance v1, Lcom/google/android/gm/vacation/e;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/vacation/e;-><init>(Lcom/google/android/gm/vacation/a;B)V

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/e;)V

    goto :goto_0
.end method

.method public final g(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/vacation/c;->h(III)Lcom/google/android/gm/vacation/c;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/gm/vacation/b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/vacation/b;-><init>(Lcom/google/android/gm/vacation/a;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/vacation/c;->a(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 57
    iput-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/google/android/gm/vacation/e;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/vacation/e;-><init>(Lcom/google/android/gm/vacation/a;B)V

    invoke-static {v0, p1, p2, p3}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/e;III)Lcom/android/datetimepicker/date/b;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/b;->setFirstDayOfWeek(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/b;->gk()V

    .line 68
    iput-object v0, p0, Lcom/google/android/gm/vacation/a;->brm:Landroid/app/DialogFragment;

    goto :goto_0
.end method
