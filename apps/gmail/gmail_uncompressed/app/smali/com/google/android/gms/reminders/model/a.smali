.class public final Lcom/google/android/gms/reminders/model/a;
.super Ljava/lang/Object;


# instance fields
.field private bZf:Ljava/lang/Integer;

.field private bZg:Ljava/lang/Integer;

.field private bZh:Ljava/lang/Integer;

.field private bZj:Ljava/lang/Integer;

.field private bZk:Ljava/lang/Long;

.field private ckf:Lcom/google/android/gms/reminders/model/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Vr()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/sj;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/a;->bZf:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/a;->bZg:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/a;->bZh:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/a;->ckf:Lcom/google/android/gms/reminders/model/Time;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/a;->bZj:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/a;->bZk:Ljava/lang/Long;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/sj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/a;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->KN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/a;->ckf:Lcom/google/android/gms/reminders/model/Time;

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/a;->bZk:Ljava/lang/Long;

    return-object p0
.end method

.method public final e(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/a;->bZf:Ljava/lang/Integer;

    return-object p0
.end method

.method public final f(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/a;->bZg:Ljava/lang/Integer;

    return-object p0
.end method

.method public final g(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/a;->bZh:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/a;->bZj:Ljava/lang/Integer;

    return-object p0
.end method
