.class public final Lcom/google/android/gms/reminders/model/c;
.super Ljava/lang/Object;


# instance fields
.field private bZD:Ljava/lang/Long;

.field private bZE:Ljava/lang/String;

.field private bZF:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Vt()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/sp;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/c;->bZD:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/c;->bZE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/c;->bZF:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sp;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/c;->bZD:Ljava/lang/Long;

    return-object p0
.end method

.method public final gB(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/c;->bZE:Ljava/lang/String;

    return-object p0
.end method

.method public final gC(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/c;->bZF:Ljava/lang/String;

    return-object p0
.end method
