.class public final Lcom/google/android/gms/reminders/model/e;
.super Ljava/lang/Object;


# instance fields
.field private bZH:Ljava/lang/Integer;

.field private bZI:Ljava/lang/Integer;

.field private bZJ:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Vv()Lcom/google/android/gms/reminders/model/Time;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/st;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/e;->bZH:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/e;->bZI:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/e;->bZJ:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/st;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final l(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/e;->bZH:Ljava/lang/Integer;

    return-object p0
.end method

.method public final m(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/e;->bZI:Ljava/lang/Integer;

    return-object p0
.end method

.method public final n(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/e;->bZJ:Ljava/lang/Integer;

    return-object p0
.end method
