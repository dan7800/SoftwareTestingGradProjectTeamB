.class final Lcom/google/android/gms/internal/cB;
.super Lcom/google/android/gms/people/w;


# instance fields
.field final synthetic bWV:Lcom/google/android/gms/people/p;

.field final synthetic bWX:Lcom/google/android/gms/internal/cz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/people/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cB;->bWX:Lcom/google/android/gms/internal/cz;

    iput-object p2, p0, Lcom/google/android/gms/internal/cB;->bWV:Lcom/google/android/gms/people/p;

    invoke-direct {p0}, Lcom/google/android/gms/people/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cB;->bWV:Lcom/google/android/gms/people/p;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bO;->b(Lcom/google/android/gms/people/y;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cB;->c(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
