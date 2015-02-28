.class final Lcom/google/android/gms/internal/ct;
.super Lcom/google/android/gms/internal/cu;


# instance fields
.field final synthetic bWN:Lcom/google/android/gms/internal/cq;

.field final synthetic bWP:Lcom/google/android/gms/people/model/AvatarReference;

.field final synthetic bWQ:Lcom/google/android/gms/people/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->bWN:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ct;->bWP:Lcom/google/android/gms/people/model/AvatarReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/ct;->bWQ:Lcom/google/android/gms/people/k;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cu;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->bWP:Lcom/google/android/gms/people/model/AvatarReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->bWQ:Lcom/google/android/gms/people/k;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/internal/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/common/internal/v;)V

    return-void
.end method
