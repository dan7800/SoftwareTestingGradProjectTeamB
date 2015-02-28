.class public final Lcom/google/android/gm/vacation/c;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private bro:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static h(III)Lcom/google/android/gm/vacation/c;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/gm/vacation/c;

    invoke-direct {v0}, Lcom/google/android/gm/vacation/c;-><init>()V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 118
    const-string v2, "year"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "month"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v2, "day"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gm/vacation/c;->setArguments(Landroid/os/Bundle;)V

    .line 122
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/gm/vacation/c;->bro:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 127
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 133
    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 134
    const-string v1, "day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 137
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/vacation/c;->bro:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 139
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 141
    const/16 v3, 0x7b2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 142
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 143
    const/16 v3, 0x7f4

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 144
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 146
    return-object v0
.end method
