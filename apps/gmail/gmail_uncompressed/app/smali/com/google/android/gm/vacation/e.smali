.class final Lcom/google/android/gm/vacation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/datetimepicker/date/e;


# instance fields
.field final synthetic brn:Lcom/google/android/gm/vacation/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/vacation/a;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gm/vacation/e;->brn:Lcom/google/android/gm/vacation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/vacation/a;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/gm/vacation/e;-><init>(Lcom/google/android/gm/vacation/a;)V

    return-void
.end method


# virtual methods
.method public final d(III)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gm/vacation/e;->brn:Lcom/google/android/gm/vacation/a;

    invoke-static {v0}, Lcom/google/android/gm/vacation/a;->a(Lcom/google/android/gm/vacation/a;)Lcom/google/android/gm/vacation/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/vacation/d;->i(III)V

    .line 105
    return-void
.end method
