.class public final Lcom/google/android/gms/reminders/model/b;
.super Ljava/lang/Object;


# instance fields
.field private bZl:Ljava/lang/Double;

.field private bZm:Ljava/lang/Double;

.field private bZn:Ljava/lang/Integer;

.field private bZo:Ljava/lang/Integer;

.field private bZp:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Vs()Lcom/google/android/gms/reminders/model/Location;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/b;->bZl:Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/b;->bZm:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/b;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/b;->bZn:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/b;->bZo:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/b;->bZp:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/sl;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->bZl:Ljava/lang/Double;

    return-object p0
.end method

.method public final b(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->bZm:Ljava/lang/Double;

    return-object p0
.end method

.method public final gA(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->bZp:Ljava/lang/String;

    return-object p0
.end method

.method public final gz(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->bZn:Ljava/lang/Integer;

    return-object p0
.end method

.method public final j(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/b;->bZo:Ljava/lang/Integer;

    return-object p0
.end method
