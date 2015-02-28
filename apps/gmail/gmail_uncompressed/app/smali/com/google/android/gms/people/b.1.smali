.class public final Lcom/google/android/gms/people/b;
.super Ljava/lang/Object;


# instance fields
.field public final blK:Ljava/lang/String;

.field public final cgk:Z

.field public final cgl:Ljava/lang/String;

.field public final cgm:Ljava/lang/String;

.field public final cgn:I

.field public final cgo:I

.field public final cgp:I

.field public final cgq:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/people/c;->a(Lcom/google/android/gms/people/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/people/b;->cgk:Z

    invoke-static {p1}, Lcom/google/android/gms/people/c;->b(Lcom/google/android/gms/people/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/b;->cgl:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/c;->c(Lcom/google/android/gms/people/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/b;->blK:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/c;->d(Lcom/google/android/gms/people/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/b;->cgm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/c;->e(Lcom/google/android/gms/people/c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/b;->cgn:I

    invoke-static {p1}, Lcom/google/android/gms/people/c;->f(Lcom/google/android/gms/people/c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/b;->cgo:I

    invoke-static {p1}, Lcom/google/android/gms/people/c;->g(Lcom/google/android/gms/people/c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/b;->cgp:I

    invoke-static {p1}, Lcom/google/android/gms/people/c;->h(Lcom/google/android/gms/people/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/people/b;->cgq:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/b;-><init>(Lcom/google/android/gms/people/c;)V

    return-void
.end method
