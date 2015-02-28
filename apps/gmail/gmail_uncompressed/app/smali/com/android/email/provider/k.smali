.class final Lcom/android/email/provider/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic PG:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/email/provider/k;->PG:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/email/provider/k;->PG:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/provider/b;->F(Landroid/content/Context;)V

    .line 396
    return-void
.end method
