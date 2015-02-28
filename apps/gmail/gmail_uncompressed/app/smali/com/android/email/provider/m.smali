.class final Lcom/android/email/provider/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/provider/t;


# instance fields
.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/email/provider/m;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;JI)V
    .locals 0

    .prologue
    .line 2583
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/service/AttachmentService;->a(Landroid/content/Context;JI)V

    .line 2584
    return-void
.end method
