.class final Lcom/google/android/gms/appdatasearch/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# instance fields
.field final synthetic btU:Lcom/google/android/gms/appdatasearch/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/appdatasearch/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/b;->btU:Lcom/google/android/gms/appdatasearch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appdatasearch/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/appdatasearch/b;-><init>(Lcom/google/android/gms/appdatasearch/a;)V

    return-void
.end method


# virtual methods
.method public final Jf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/b;->btU:Lcom/google/android/gms/appdatasearch/a;

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/a;->a(Lcom/google/android/gms/appdatasearch/a;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final onDisconnected()V
    .locals 0

    return-void
.end method
