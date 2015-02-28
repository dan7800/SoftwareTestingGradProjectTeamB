.class public final Lcom/google/android/gms/people/k;
.super Ljava/lang/Object;


# static fields
.field public static final cgA:Lcom/google/android/gms/people/k;


# instance fields
.field public final cgB:I

.field public final cgC:I

.field public final cgD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/l;

    invoke-direct {v0}, Lcom/google/android/gms/people/l;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/l;->UR()Lcom/google/android/gms/people/k;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/k;->cgA:Lcom/google/android/gms/people/k;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/people/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/people/l;->a(Lcom/google/android/gms/people/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/k;->cgB:I

    invoke-static {p1}, Lcom/google/android/gms/people/l;->b(Lcom/google/android/gms/people/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/k;->cgC:I

    iget-boolean v0, p1, Lcom/google/android/gms/people/l;->bVY:Z

    iput-boolean v0, p0, Lcom/google/android/gms/people/k;->cgD:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/k;-><init>(Lcom/google/android/gms/people/l;)V

    return-void
.end method
