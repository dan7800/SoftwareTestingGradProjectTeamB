.class public final Lcom/google/android/gms/internal/ah;
.super Ljava/lang/Object;


# static fields
.field public static final bUd:Lcom/google/android/gms/internal/ai;

.field public static final bUe:Lcom/google/android/gms/internal/aj;

.field public static final bUf:Lcom/google/android/gms/internal/al;

.field public static final bUg:Lcom/google/android/gms/internal/ak;

.field public static final bUh:Lcom/google/android/gms/internal/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ai;

    const-string v1, "created"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ah;->bUd:Lcom/google/android/gms/internal/ai;

    new-instance v0, Lcom/google/android/gms/internal/aj;

    const-string v1, "lastOpenedTime"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ah;->bUe:Lcom/google/android/gms/internal/aj;

    new-instance v0, Lcom/google/android/gms/internal/al;

    const-string v1, "modified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/al;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ah;->bUf:Lcom/google/android/gms/internal/al;

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ak;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ah;->bUg:Lcom/google/android/gms/internal/ak;

    new-instance v0, Lcom/google/android/gms/internal/am;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/am;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ah;->bUh:Lcom/google/android/gms/internal/am;

    return-void
.end method
