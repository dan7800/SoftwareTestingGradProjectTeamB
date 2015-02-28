.class public final Lcom/android/email/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LS:Lcom/android/email/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/email/p;

    invoke-direct {v0}, Lcom/android/email/p;-><init>()V

    sput-object v0, Lcom/android/email/o;->LS:Lcom/android/email/n;

    return-void
.end method

.method public static a(Lcom/android/email/n;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/android/email/o;->LS:Lcom/android/email/n;

    .line 33
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/android/email/m;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/email/o;->LS:Lcom/android/email/n;

    invoke-interface {v0, p0}, Lcom/android/email/n;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v0

    return-object v0
.end method
