.class public abstract Lcom/google/android/gms/location/copresence/a;
.super Ljava/lang/Object;


# static fields
.field private static cbd:Lcom/google/android/gms/location/copresence/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static cbe:Lcom/google/android/gms/location/copresence/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static cbf:Lcom/google/android/gms/location/copresence/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/b;->Tl()Lcom/google/android/gms/location/copresence/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/b;->Tm()Lcom/google/android/gms/location/copresence/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/a;->cbd:Lcom/google/android/gms/location/copresence/a;

    new-instance v0, Lcom/google/android/gms/location/copresence/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/b;->Tm()Lcom/google/android/gms/location/copresence/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/a;->cbe:Lcom/google/android/gms/location/copresence/a;

    new-instance v0, Lcom/google/android/gms/location/copresence/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/b;->Tk()Lcom/google/android/gms/location/copresence/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/b;->Tm()Lcom/google/android/gms/location/copresence/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/a;->cbf:Lcom/google/android/gms/location/copresence/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
