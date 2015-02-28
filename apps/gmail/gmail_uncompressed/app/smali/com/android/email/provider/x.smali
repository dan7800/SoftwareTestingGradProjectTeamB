.class final Lcom/android/email/provider/x;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic TC:Lcom/android/email/provider/w;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/w;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    .line 131
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    iput-object p2, p0, Lcom/android/email/provider/x;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/provider/x;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v1}, Lcom/android/email/provider/w;->a(Lcom/android/email/provider/w;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 139
    iget v0, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->b(Lcom/android/email/provider/w;)Lcom/android/email/provider/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/email/provider/x;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v1}, Lcom/android/email/provider/w;->b(Lcom/android/email/provider/w;)Lcom/android/email/provider/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->c(Lcom/android/email/provider/w;)Lcom/android/email/provider/x;

    .line 144
    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->d(Lcom/android/email/provider/w;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->d(Lcom/android/email/provider/w;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->e(Lcom/android/email/provider/w;)Landroid/app/ProgressDialog;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/x;->TC:Lcom/android/email/provider/w;

    invoke-static {v0}, Lcom/android/email/provider/w;->f(Lcom/android/email/provider/w;)V

    .line 150
    :cond_1
    return-void
.end method
