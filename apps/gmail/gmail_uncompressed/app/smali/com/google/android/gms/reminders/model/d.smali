.class public final Lcom/google/android/gms/reminders/model/d;
.super Ljava/lang/Object;


# instance fields
.field private bZG:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Vu()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/sr;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/d;->bZG:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sr;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/d;->bZG:Ljava/lang/Integer;

    return-object p0
.end method
