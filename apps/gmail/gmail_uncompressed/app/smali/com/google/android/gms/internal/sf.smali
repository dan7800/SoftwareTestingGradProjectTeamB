.class public Lcom/google/android/gms/internal/sf;
.super Lcom/google/android/gms/internal/dc;

# interfaces
.implements Lcom/google/android/gms/reminders/model/Task;


# direct methods
.method private gu(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "hour"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "minute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "second"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "period"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "absolute_time_ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/e;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/e;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hour"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/e;->l(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/e;->m(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "second"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/e;->n(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/e;->Vv()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/reminders/model/a;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/a;->e(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/a;->f(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/a;->g(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/a;->a(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "period"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/a;->h(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "absolute_time_ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/a;->b(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/a;->Vr()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    return-object v0
.end method

.method public final Sg()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 2

    new-instance v0, Lcom/google/android/gms/reminders/model/c;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/c;-><init>()V

    const-string v1, "server_assigned_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/c;->c(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/c;

    move-result-object v0

    const-string v1, "client_assigned_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/c;->gB(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/c;

    move-result-object v0

    const-string v1, "client_assigned_thread_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/c;->gC(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/c;->Vt()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    return-object v0
.end method

.method public final Sh()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 2

    new-instance v0, Lcom/google/android/gms/reminders/model/d;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/d;-><init>()V

    const-string v1, "task_list"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/d;->k(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/d;->Vu()Lcom/google/android/gms/reminders/model/TaskList;

    move-result-object v0

    return-object v0
.end method

.method public final Si()Ljava/lang/Long;
    .locals 1

    const-string v0, "created_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final Sj()Ljava/lang/Long;
    .locals 1

    const-string v0, "archived_time_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final Sk()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "archived"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Sl()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Sm()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "pinned"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Sn()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "snoozed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final So()Ljava/lang/Long;
    .locals 1

    const-string v0, "snoozed_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final Sp()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    const-string v0, "due_date_"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/sf;->gu(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public final Sq()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    const-string v0, "event_date_"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/sf;->gu(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public final Sr()Lcom/google/android/gms/reminders/model/Location;
    .locals 2

    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lng"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "radius_meters"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_address"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/b;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/b;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->a(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    const-string v1, "lng"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->b(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->gz(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    const-string v1, "radius_meters"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->i(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    const-string v1, "location_type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->j(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    const-string v1, "display_address"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/b;->gA(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/b;->Vs()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public final Ss()Ljava/lang/Long;
    .locals 1

    const-string v0, "location_snoozed_until_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/sn;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
