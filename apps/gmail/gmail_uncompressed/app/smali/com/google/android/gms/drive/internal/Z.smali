.class public final Lcom/google/android/gms/drive/internal/Z;
.super Ljava/lang/Object;


# static fields
.field private static final bHU:Lcom/google/android/gms/common/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/u;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/Z;->bHU:Lcom/google/android/gms/common/internal/u;

    return-void
.end method

.method public static ak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/Z;->bHU:Lcom/google/android/gms/common/internal/u;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/u;->ak(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
