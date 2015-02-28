.class final Lcom/android/datetimepicker/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic Hg:Lcom/android/datetimepicker/a;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/a;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/datetimepicker/b;->Hg:Lcom/android/datetimepicker/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/datetimepicker/b;->Hg:Lcom/android/datetimepicker/a;

    iget-object v1, p0, Lcom/android/datetimepicker/b;->Hg:Lcom/android/datetimepicker/a;

    invoke-static {v1}, Lcom/android/datetimepicker/a;->a(Lcom/android/datetimepicker/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/datetimepicker/a;->j(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/datetimepicker/a;->a(Lcom/android/datetimepicker/a;Z)Z

    .line 36
    return-void
.end method
