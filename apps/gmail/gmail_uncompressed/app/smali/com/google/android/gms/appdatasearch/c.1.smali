.class final Lcom/google/android/gms/appdatasearch/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/e;


# instance fields
.field final synthetic btU:Lcom/google/android/gms/appdatasearch/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/appdatasearch/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/c;->btU:Lcom/google/android/gms/appdatasearch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appdatasearch/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/appdatasearch/c;-><init>(Lcom/google/android/gms/appdatasearch/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/c;->btU:Lcom/google/android/gms/appdatasearch/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/appdatasearch/a;->a(Lcom/google/android/gms/appdatasearch/a;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/c;->btU:Lcom/google/android/gms/appdatasearch/a;

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/a;->a(Lcom/google/android/gms/appdatasearch/a;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
