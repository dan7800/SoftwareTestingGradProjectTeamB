.class final Lcom/google/android/gms/feedback/c;
.super Lcom/google/android/gms/feedback/d;


# instance fields
.field final synthetic bKh:Lcom/google/android/gms/feedback/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/feedback/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/c;->bKh:Lcom/google/android/gms/feedback/e;

    invoke-direct {p0}, Lcom/google/android/gms/feedback/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/aq;

    iget-object v0, p0, Lcom/google/android/gms/feedback/c;->bKh:Lcom/google/android/gms/feedback/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/feedback/e;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/feedback/c;->cg(Z)V

    return-void
.end method
