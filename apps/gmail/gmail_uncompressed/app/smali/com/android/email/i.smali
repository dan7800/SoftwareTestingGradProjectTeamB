.class final Lcom/android/email/i;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final LN:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 755
    iput-object p2, p0, Lcom/android/email/i;->mContext:Landroid/content/Context;

    .line 756
    iput-wide p3, p0, Lcom/android/email/i;->LN:J

    .line 757
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/email/i;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/i;->LN:J

    invoke-static {v0, v2, v3}, Lcom/android/email/d;->c(Landroid/content/Context;J)V

    .line 762
    return-void
.end method
